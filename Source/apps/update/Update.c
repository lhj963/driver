#include "update.h"


unsigned int ota_file_size = 0;


unsigned char s_page_buf[4096] = {0};
unsigned int s_page_len = 0;

unsigned int get_ota_file_size(void)
{
	return ota_file_size;
}

void set_ota_file_size(unsigned int val)
{
	ota_file_size = val;
}

void ota_write(void *buf,unsigned int len)
{
	if ((buf == 0) || (len == 0))
	{
		return ;
	}
	//file size to large
	if ((get_ota_file_size() >= UPDATE_FILE_MAX_SIZE) || (len > (UPDATE_FILE_MAX_SIZE - get_ota_file_size())))
	{
		return ;
	}

	if (((UPDATE_FILE_START_ADDR + ota_file_size) % FLASH_PAGE_SIZE) == 0)
	{
		stm32_flash_erase_sector((UPDATE_FILE_START_ADDR + ota_file_size) / FLASH_PAGE_SIZE);
	}
	stm32_flash_write(UPDATE_FILE_START_ADDR + ota_file_size,buf,len);

	ota_file_size += len;
}

void ota_download_finish(void)
{
	Date dat = {0};
	unsigned char *prtc = get_rtc_time();

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
	ota_file_size = 0;
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
	set_ota_file_size(0);
	set_update_status(UPDATE_STATUS_NO);
	save_update_info();
	DBG_Print(LEVEL0,"ota stop(cur way:%d)\r\n",get_update_way());
}




