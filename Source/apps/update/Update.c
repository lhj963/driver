#include "update.h"


unsigned int ota_file_size = 0;


unsigned char s_page_buf[4096] = {0};
unsigned int s_page_len = 0;

/* CRC-16/CCITT-FALSE over bytes accepted into the OTA slot. */
static unsigned short s_ota_crc = 0xFFFF;
/* Sticky: a program that did not read back must not be marked FILE_OK. */
static unsigned char s_ota_error = 0;

typedef char ota_page_size_chk[(MCU_FLASH_PAGE_SIZE == FLASH_PAGE_SIZE) ? 1 : -1];
typedef char ota_info_outside_boot[(UPDATE_INFO_START_ADDR >= BOOT_END_ADDR) ? 1 : -1];
typedef char ota_info_after_image[(UPDATE_INFO_START_ADDR >= UPDATE_FILE_END_ADDR) ? 1 : -1];
typedef char ota_param_after_image[(PARAM_STORE_ADDR >= UPDATE_FILE_END_ADDR) ? 1 : -1];
typedef char ota_log_after_image[(MPU_TIMEOUT_LOG_ADDR >= UPDATE_FILE_END_ADDR) ? 1 : -1];
typedef char ota_meta_inside_flash[(MPU_TIMEOUT_LOG_ADDR + MCU_FLASH_PAGE_SIZE <= MCU_FLASH_END_ADDR) ? 1 : -1];
typedef char ota_slot_after_app[(UPDATE_FILE_START_ADDR == APP_END_ADDR) ? 1 : -1];

static unsigned short ota_crc16_update(unsigned short crc, const unsigned char *p, unsigned int n)
{
	unsigned int i = 0;

	while (n--)
	{
		crc ^= (unsigned short)(*p++) << 8;
		for (i = 0; i < 8; i++)
		{
			if (crc & 0x8000)
			{
				crc = (unsigned short)((crc << 1) ^ 0x1021);
			}
			else
			{
				crc = (unsigned short)(crc << 1);
			}
		}
	}
	return crc;
}

static void ota_reset_image(void)
{
	s_ota_crc = 0xFFFF;
	s_ota_error = 0;
	ota_file_size = 0;
}

/* Erase every page the sequential write will program for the first time.
 * A page already started (write begins past its base) stays erased-once
 * so earlier bytes in that page are kept.
 */
static void ota_erase_new_pages(unsigned int start, unsigned int len)
{
	unsigned int end = start + len;
	unsigned int page = start / FLASH_PAGE_SIZE;
	unsigned int last = (end - 1) / FLASH_PAGE_SIZE;

	for (; page <= last; page++)
	{
		unsigned int page_base = page * FLASH_PAGE_SIZE;

		if (page_base >= start)
		{
			stm32_flash_erase_sector(page);
		}
	}
}

static int ota_readback_matches(unsigned int addr, const unsigned char *src, unsigned int len)
{
	unsigned char tmp[128];
	unsigned int off = 0;

	while (off < len)
	{
		unsigned int n = len - off;

		if (n > sizeof(tmp))
		{
			n = sizeof(tmp);
		}
		stm32_flash_read(addr + off, n, tmp, sizeof(tmp));
		if (memcmp(tmp, src + off, n) != 0)
		{
			return 0;
		}
		off += n;
	}
	return 1;
}

unsigned int get_ota_file_size(void)
{
	return ota_file_size;
}

void set_ota_file_size(unsigned int val)
{
	ota_file_size = val;
}

int ota_write(void *buf,unsigned int len)
{
	unsigned int start = 0;
	const unsigned char *src = (const unsigned char *)buf;

	if (s_ota_error)
	{
		return -1;
	}
	if ((buf == 0) || (len == 0))
	{
		return -1;
	}
	/* Halfword program. An odd length programs a pad byte and the next
	 * chunk starts on an odd address, which the flash controller rejects.
	 */
	if ((len & 1u) || (ota_file_size & 1u))
	{
		return -1;
	}
	if ((UPDATE_FILE_START_ADDR & 1u) != 0)
	{
		return -1;
	}
	if ((ota_file_size >= UPDATE_FILE_MAX_SIZE) || (len > (UPDATE_FILE_MAX_SIZE - ota_file_size)))
	{
		return -1;
	}

	start = UPDATE_FILE_START_ADDR + ota_file_size;
	ota_erase_new_pages(start, len);
	stm32_flash_write(start, buf, len);
	if (ota_readback_matches(start, src, len) == 0)
	{
		s_ota_error = 1;
		return -1;
	}

	s_ota_crc = ota_crc16_update(s_ota_crc, src, len);
	ota_file_size += len;
	return 0;
}

int ota_image_is_valid(void)
{
	unsigned char tmp[128];
	unsigned int off = 0;
	unsigned short crc = 0xFFFF;
	unsigned int len = ota_file_size;

	if (s_ota_error)
	{
		return 0;
	}
	if ((len == 0) || (len & 1u) || (len > UPDATE_FILE_MAX_SIZE))
	{
		return 0;
	}

	while (off < len)
	{
		unsigned int n = len - off;

		if (n > sizeof(tmp))
		{
			n = sizeof(tmp);
		}
		stm32_flash_read(UPDATE_FILE_START_ADDR + off, n, tmp, sizeof(tmp));
		crc = ota_crc16_update(crc, tmp, n);
		off += n;
	}
	return (crc == s_ota_crc) ? 1 : 0;
}

void ota_download_finish(void)
{
	Date dat = {0};
	unsigned char *prtc = get_rtc_time();

	if (ota_image_is_valid() == 0)
	{
		set_update_status(UPDATE_STATUS_UPDATE_FAIL);
		save_update_info();
		DBG_Print(0,"OTA image rejected (len:%u).\r\n", get_ota_file_size());
		return ;
	}

	set_update_status(UPDATE_STATUS_FILE_OK);
	set_update_start_addr(UPDATE_FILE_START_ADDR);
	set_update_total_bytes(get_ota_file_size());
	set_update_end_time(GetRunTime());
	dat.year = prtc[0];
	dat.month = prtc[1];
	dat.day = prtc[2];
	dat.hour = prtc[3];
	dat.min = prtc[4];
	dat.sec = prtc[5];

	set_update_end_date(&dat);
	set_update_take_times(GetRunTime() - get_update_start_time());
	save_update_info();

	DBG_Print(0,"OTA Download Finish.System will reboot.\r\n");
	os_sleep(50);
	NVIC_SystemReset();
	//SystemSoftwareReset();
}

char *update_way_str[] = {"Unkown","USART","TCP","FTP","HTTP"};

char *get_update_way_tip(unsigned char update_way)
{
	unsigned char cnt = sizeof(update_way_str) / sizeof(update_way_str[0]);
	unsigned char way = update_way;

	if (way >= cnt)
	{
		way = 0;
	}

	return update_way_str[way];	
}

void ota_start(unsigned char update_way)
{
	Date dat = {0};
	unsigned char *prtc = get_rtc_time();

	s_page_len = 0;
	ota_reset_image();
	//set_update_server(GetFtpServerAddr(),GetFtpServerPort());
	//set_update_download_file_name(GetFtpDownloadFileName());

	//SetFTPStatus(FTP_STATUS_STARTING);
	set_update_status(UPDATE_STATUS_START);
	set_update_way(update_way);

	set_update_start_time(GetRunTime());

	dat.year = prtc[0];
	dat.month = prtc[1];
	dat.day = prtc[2];
	dat.hour = prtc[3];
	dat.min = prtc[4];
	dat.sec = prtc[5];

	set_update_start_date(&dat);
	save_update_info();
	DBG_Print(LEVEL0,"ota start(way:%s)\r\n",get_update_way_tip(get_update_way()));
}

void ota_stop(void)
{
	ota_reset_image();
	set_update_status(UPDATE_STATUS_NO);
	save_update_info();
	DBG_Print(LEVEL0,"ota stop(cur way:%d)\r\n",get_update_way());
}




