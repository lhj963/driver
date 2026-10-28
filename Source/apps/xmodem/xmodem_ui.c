#include "xmodem_ui.h"



void xmodem_send(void *pdat,unsigned int len)
{
	if ((pdat == 0) || (len == 0)) return ;

	DBG_SendData(pdat,len);
}

unsigned int file_size = 0;


unsigned int get_file_data(unsigned long offset,unsigned int wantToReadBytes,void *pBuf,unsigned int buflen)
{
	if (offset >= file_size) return 0;

	if ((offset + wantToReadBytes) >= file_size)
	{
		wantToReadBytes = file_size - offset;
	}
	store_fast_read(BLOCK_UPDATE_FILE_ID,offset,wantToReadBytes,pBuf,buflen);

	return wantToReadBytes;

}


void xmodem_disp_progress(unsigned long already)
{
	unsigned char percent = 0;

	//DBG_Print(LEVEL3,"download:%u\r\n",already);
	set_device_answer_time(GetRunTime());

	if (already >= file_size)
	{
		percent = 100;
	}
	else
	{
		percent = (unsigned char)(((already * 1.0) / file_size) * 100);
	}

	report_download_progress(1,percent);
}

void x_send(void *pdat,unsigned int len)
{
	if ((pdat == 0) || (len == 0)) return ;

	connect_device_com1_write_usart(pdat,len);
	connect_device_com2_write_usart(pdat,len);
}


void xmode_start_download_file(void)
{
	INT32U app_file_size = 0;

	//can芯片功能关闭 防干扰
	can_sw_off();
	//设备断电
	device_power_off();
	//boot0引脚置低 进入flash启动模式
	device_exit_bootloader_mode();

	//ReadOneData_Reverse(BLOCK_UPDATE_INFO_ID,0,&app_file_size,sizeof(app_file_size));
	app_file_size = get_app_file_size();
	file_size = app_file_size;

	connect_device_com1_usart_init(115200,0);

	xmode_init(x_send,get_file_data,xmodem_disp_progress,0);
	xmode_host_start();

	//初始化工作完成后设备上电
	BSP_OS_TimeDlyMs(2500);

	device_acc_power_on();
	device_power_on();
	set_device_answer_time(GetRunTime());
	//DBG_Print(LEVEL3,"xmode_start_download_file\r\n");
}

unsigned long s_aulOffset[2] = {0};
char s_download_boot_flag = 0;

//infoBlockID:0表示BOOT  1表示APP
void xmode_unpack_data(unsigned int infoBlockID,unsigned int datBlockID,void *pdat,unsigned int len)
{
	INT32U file_len = 0;
	unsigned long offset = 0;

	if ((pdat == 0) || (len == 0)) return ;
	if (s_download_boot_flag)
	{
		offset = s_aulOffset[0];
	}
	else
	{
		offset = s_aulOffset[1];
	}

	store_fast_write(datBlockID,offset,pdat,len);
	offset += len;

	file_len = offset;
	if (s_download_boot_flag)
	{
		s_aulOffset[0] = offset;
	}
	else
	{
		s_aulOffset[1] = offset;
	}

	//StoreOneData(infoBlockID,&file_len,sizeof(file_len));
	if (infoBlockID == 0)
	{
		//set_boot_file_size(file_len);
	}
	else
	{
		//set_app_file_size(file_len);
	}
	file_len = file_len;
}

void xmode_unpack_data_app(void *pdat,unsigned int len)
{
	xmode_unpack_data(1,BLOCK_UPDATE_FILE_ID,pdat,len);
}

void xmode_unpack_data_boot(void *pdat,unsigned int len)
{
	xmode_unpack_data(0,BLOCK_UPDATE_BOOT_FILE_ID,pdat,len);
}


//file_type 0表示boot 1表示app
INT8U calc_file_xor(unsigned char file_type)
{
	unsigned char *ptr = 0;
	unsigned int offset = 0;
	unsigned int rlen = 1024;
	INT8U xor = 0;
	INT32U filelen = 0;
	char tip[40] = {0};

	ptr = get_big_mem();

	if (file_type)
	{
		filelen = get_app_file_size();
	}
	else
	{
		filelen = get_boot_file_size();
	}
	while (filelen)
	{
		if (filelen > 1024)
		{
			rlen = 1024;
		}
		else
		{
			rlen = filelen;
		}
		if (file_type)
		{
			store_fast_read(BLOCK_UPDATE_FILE_ID,offset,rlen,ptr,get_big_mem_size());
		}
		else
		{
			store_fast_read(BLOCK_UPDATE_BOOT_FILE_ID,offset,rlen,ptr,get_big_mem_size());
		}
		
		xor ^= XOR_Check(ptr,rlen);
		filelen -= rlen;
		offset += rlen;
	}

	free_big_mem(ptr);

	if (file_type)
	{
		if (xor != get_app_file_xor())
		{
			rlen = snprintf(tip,sizeof(tip),"app文件损坏请重新下载.(%02X %02X)",get_app_file_xor(),xor);
			gz_slave_speak(tip,rlen);
		}
	}
	else
	{
		if (xor != get_boot_file_xor())
		{
			rlen = snprintf(tip,sizeof(tip),"boot文件损坏请重新下载(%02X %02X)",get_boot_file_xor(),xor);
			gz_slave_speak(tip,rlen);
		}
	}

	return xor;
}

void boot_recv_finish(void)
{
	read_store_boot_ver();
}

void app_recv_finish(void)
{
	read_store_app_ver();
}

void xmode_slave_start_recv_app(void)
{
	s_download_boot_flag = 0;
	memset(s_aulOffset,0,sizeof(s_aulOffset));

	xmode_init(xmodem_send,0,0,xmode_unpack_data_app);
	xmode_set_recv_finish_callback(app_recv_finish);
	xmode_slave_start();

	//DBG_Print(LEVEL3,"xmode_slave_start_recv\r\n");
}

void xmode_slave_start_recv_boot(void)
{
	s_download_boot_flag = 1;
	memset(s_aulOffset,0,sizeof(s_aulOffset));

	xmode_init(xmodem_send,0,0,xmode_unpack_data_boot);
	xmode_set_recv_finish_callback(boot_recv_finish);
	xmode_slave_start();

	//DBG_Print(LEVEL3,"xmode_slave_start_recv\r\n");
}





