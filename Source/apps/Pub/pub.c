#include "pub.h"



void js(unsigned char year,unsigned char month,unsigned char day,unsigned char hour,unsigned char min,unsigned char sec)
{
	pcf8563_set_rtc(year+2000,month,day,hour,min,sec);
	DBG_Print(0,"校时完成(%04d-%02d-%02d %02d:%02d:%02d).\r\n",year,month,day,hour,min,sec);
}




void sms_arrive(void *szPhone,void *ptr,unsigned int rlen)
{
}


unsigned int _sta_ftp_rate = 0;
unsigned int sta_ftp_rate = 0;

unsigned int file_offset = 0;

//每秒执行一次
void sta_ftp_data_rate(void)
{
	sta_ftp_rate = _sta_ftp_rate;
	_sta_ftp_rate = 0;
}

unsigned int get_ftp_rate(void)
{
	return sta_ftp_rate;
}


void ftp_data_arrive(void *pdat,unsigned int rlen)
{
	//DBG_PrintBuf(0,"FTP Data:\r\n",pdat,rlen);

	_sta_ftp_rate += rlen;

	file_offset += rlen;
	store_fast_write(BLOCK_UPDATE_FILE_ID,GetFTPBreakPos(),pdat,rlen);
}

void ftp_download_ok(void)
{
	set_update_status(UPDATE_STATUS_FILE_OK);
	set_update_start_addr(UPDATE_APP_START_ADDR);
	set_update_total_bytes(file_offset);
	save_update_info();


	DBG_Print(0,"FTP Download Finish.System will reboot.\r\n");
	os_sleep(50);
	NVIC_SystemReset();
}



void server0_connected(void)
{
	//net_send_in_cb(0,"123",3);

}

void link0_data_arrive(void *pdat,unsigned int rlen)
{
	//DBG_Print(0,"Server Data(%d):\r\n",rlen);
	//DBG_PrintBuf(0,0,pdat,rlen);
}


void collect_data_stream(void)
{

}











