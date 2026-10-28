#include "usercmd.h"


typedef unsigned int (*SystemCmdFunc)(void *content,unsigned int contentlen,void *outbuf,unsigned int outbuflen);


/* 用户指令结构体 */
typedef struct tagSystemCommand
{
	void *pCmd;				//指令类型
	SystemCmdFunc pFunc;	//执行相应的函数
}SystemCommand;


unsigned int Cmd_SetDbgLevel(void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	int rlen = 0;
	int flag = atoi((char *)pArg);

	DBG_Print(LEVEL0,"Set Debug Level:%u\r\n", flag);
	Set_DBG_Level(flag);
	if (pOut)
	{
		rlen = snprintf((char *)pOut,outlen,"Set Debug Level:%u", flag);
	}
	return rlen;
}

unsigned int Cmd_GetDbgLevel(void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	int rlen = 0;

	DBG_Print(LEVEL0,"Get Debug Level:%u\r\n", Get_DBG_Level());
	if (pOut)
	{
		rlen = snprintf((char *)pOut,outlen,"Get Debug Level:%u", Get_DBG_Level());
	}

	return rlen;
}


unsigned int Cmd_Reboot(void *content,unsigned int contentlen,void *pOut,unsigned int outbuflen)
{
	int rlen = 0;

	SetSystemRestart(1);
	DBG_Print(0,"%s\r\n","System Will Reboot After 60s");
	if (pOut && outbuflen)
	{
		rlen = snprintf((char *)pOut,outbuflen,"System Will Reboot After 60s");
	}
	return rlen;
}


unsigned int Cmd_GetSoftwareVersion(void *content,unsigned int contentlen,void *pOut,unsigned int outlen)
{
	unsigned int rlen = 0;

	DBG_Print(LEVEL0,"Driver Version:%s Compile @ %s %s %u\r\n",
				DRIVER_VERSION,__TIME__,__DATE__,get_mpu_uart_bps());
	if (pOut && outlen)
	{
		rlen = snprintf(pOut,outlen,"Driver Version:%s Compile @ %s %s %u\r\n",
					DRIVER_VERSION,__TIME__,__DATE__,get_mpu_uart_bps());
	}

	return rlen;
}


static unsigned int s_val = 0;

unsigned int get_test_val(void)
{
	return s_val;
}

void set_test_val(unsigned int val)
{
	s_val = val;
}

char *find_str_tail(void *ptr,void *tip)
{
	char *pRet = 0;
	if ((ptr == 0) || (tip == 0) || (strlen((char *)tip) == 0))
	{
		return 0;
	}

	pRet = strstr((char *)ptr,(char *)tip);
	if (pRet)
	{
		return (pRet + strlen((char *)tip));
	}
	return 0;
}

void func_test(unsigned int func_id)
{
#if 1
	unsigned char *ptr = 0;
	unsigned int rlen = 0;

	switch (func_id)
	{
	case 1:
		pin_high(GPRS_PWR_RCC,GPRS_PWR_PORT,GPRS_PWR_PIN);
		pin_high(GPRS_ON_OFF_RCC,GPRS_ON_OFF_PORT,GPRS_ON_OFF_PIN);
		os_sleep(2100);
		pin_low(GPRS_ON_OFF_RCC,GPRS_ON_OFF_PORT,GPRS_ON_OFF_PIN);

	break;
	case 2:
		pin_low(GPRS_PWR_RCC,GPRS_PWR_PORT,GPRS_PWR_PIN);
	break;
	case 3:
		DBG_Print(LEVEL2,"init uart1 115200\r\n");

	break;
	case 4:
	{
		for (rlen = 0; rlen < (MAX_THREAD_CNT+1); rlen++)
		{
			DBG_Print(LEVEL2,"<thread%u>free:%u/total:%u\r\n",rlen,
				os_get_stack_free(rlen),os_get_stack_size(rlen));
		}
	}
	break;
	case 5:
	{
		ota_start(0);
		DBG_Print(LEVEL2,"ota test start...\r\n");
		ptr = os_malloc(1536);
		if (ptr)
		{
			memset(ptr,'3',1536);
			for (rlen = 0; rlen < 250; rlen++)
			{
				ota_write(ptr,1024);
			}

			rlen = 0;
			while (rlen < (1024 * 50))
			{
				memset(ptr,0,1024);
				stm32_flash_read(UPDATE_FILE_START_ADDR + rlen,1024,ptr,1024);

				DBG_Print(LEVEL1,"addr:%08X\r\n",UPDATE_FILE_START_ADDR + rlen);
				DBG_PrintBuf(LEVEL1,0,ptr,256);
				rlen += 1024;
				os_sleep(1000);
			}

			os_free(ptr);
		}
		DBG_Print(LEVEL2,"ota test finish\r\n");
		
	}
	break;
	case 6:
		
		DBG_Print(LEVEL2,"read...\r\n");
		ptr = os_malloc(1536);
		if (ptr)
		{
			rlen = 0;
			while (rlen < (1024 * 64))
			{
				memset(ptr,0,1024);
				stm32_flash_read(UPDATE_FILE_START_ADDR + rlen,1024,ptr,1024);

				DBG_Print(LEVEL1,"addr:%08X\r\n",UPDATE_FILE_START_ADDR + rlen);
				DBG_PrintBuf(LEVEL1,0,ptr,512);
				rlen += 1024;
				os_sleep(1000);
			}
			os_free(ptr);
		}
		DBG_Print(LEVEL2,"read test finish\r\n");
	break;
	case 7:
	{
		unsigned char buf[256] = {0};
		
		memset(buf,GetRunTime(),sizeof(buf));
		IIC_Write(0,0xA8,0,buf,256);
		DBG_Print(LEVEL2,"write test(%02X)\r\n",buf[0]);
	}
	break;

	case 8:
	{
		check_update_status();
	}
	break;
	case 9:
	{
		INT8U dat[16] = {0};

		ptr = os_malloc(1024);
		if (ptr)
		{
			memset(ptr,'8',1024);
			stm32_flash_erase_sector(UPDATE_FILE_START_ADDR  / FLASH_PAGE_SIZE);
			stm32_flash_write(UPDATE_FILE_START_ADDR,ptr,1024);
			os_free(ptr);
		}

		memcpy(dat,(unsigned char *)UPDATE_FILE_START_ADDR,16);
		DBG_PrintBuf(LEVEL2,"read flash param:\r\n",dat,16);
	}
	break;
	case 10:
		send_msg(S_MSG_ENTER_SLEEP_MODE,(void *)2,0,0);
	break;
	case 11:
		//DBG_Print(LEVEL1,"rtc wakeup test\r\n");
		stm32_rtc_set_alarm_wakeup(100);
	break;
	case 12:
	{
		unsigned int i = 0;
		CanTxMsg tx = {0x7DF,0,CAN_ID_STD,CAN_RTR_DATA,8,{0x11,0x11,0x11,0x11,0x11,0x11,0x11,0x11}};
		CanTxMsg tx1 = {0x7E0,0,CAN_ID_STD,CAN_RTR_DATA,8,{0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22}};
		
		DBG_Print(LEVEL2,"send can test\r\n");

		can_init(0,500);
		can_init(1,500);

		for (i = 0; i < 100000; i++)
		{
			can_send_data(0,&tx);
			can_send_data(1,&tx1);
		}
		
		DBG_Print(LEVEL2,"can test finish\r\n");
	}
	break;

	case 32:
		pin_high(GPRS_RST_RCC,GPRS_RST_PORT,GPRS_RST_PIN);

		pin_high(GPRS_RST_RCC,GPRS_RST_PORT,GPRS_RST_PIN);
		os_sleep(300);
		pin_low(GPRS_RST_RCC,GPRS_RST_PORT,GPRS_RST_PIN);
	break;

	case 33:
		//4G模块开机
		pin_low(GPRS_ON_OFF_RCC,GPRS_ON_OFF_PORT,GPRS_ON_OFF_PIN);
		os_sleep(2200);
		pin_high(GPRS_ON_OFF_RCC,GPRS_ON_OFF_PORT,GPRS_ON_OFF_PIN);

	break;
	case 35:
		pin_low(GPRS_ON_OFF_RCC,GPRS_ON_OFF_PORT,GPRS_ON_OFF_PIN);
		os_sleep(400);
		pin_high(GPRS_ON_OFF_RCC,GPRS_ON_OFF_PORT,GPRS_ON_OFF_PIN);
		os_sleep(2200);
		pin_low(GPRS_ON_OFF_RCC,GPRS_ON_OFF_PORT,GPRS_ON_OFF_PIN);
	break;
	default:break;
	}
#endif
}

unsigned int Cmd_Expand(void *content,unsigned int contentlen,void *pOut,unsigned int outlen)
{
	//CanRxMsg msg;
	char *ptr = (char *)content;
	char *ptemp = 0;
	//unsigned int a = 0;
	//unsigned int b = 0;
	unsigned int templen = 0;
	unsigned int tlen = 0;
	unsigned int rlen = 0;
	unsigned char tempbuf[64] = {0};
	unsigned int ack_len = 0;

	if (GetSubString(ptr,"<ftpupload:",">",(char *)tempbuf,sizeof(tempbuf) - 1))
	{
		mcu_send_msg_to_mpu(TCCP_MCU_TO_MPU_FTP_UPLOAD_FILE1_MSG_ID,tempbuf,strlen((char *)tempbuf));
		if (pOut && outlen)
		{
			ack_len += snprintf((char *)pOut + ack_len,outlen - ack_len,"start ftp upload(%s)\r\n",tempbuf);
		}
		DBG_Print(LEVEL1,"start ftp upload(%s)\r\n",tempbuf);
	}

	if (strstr(ptr,"get_err_flag"))
	{
		memcpy(tempbuf,(unsigned char *)(UPDATE_FILE_START_ADDR - (2 * FLASH_PAGE_SIZE)),10);
		if (pOut && outlen)
		{
			templen = (tempbuf[6] << 24) + (tempbuf[7] << 16) + (tempbuf[8] << 8) + tempbuf[9];
			ack_len += snprintf((char *)pOut,outlen,"mpu app err time:%02d-%02d-%02d %02d:%02d:%02d(%u)\r\n",tempbuf[0],tempbuf[1],tempbuf[2],tempbuf[3],tempbuf[4],tempbuf[5],templen);
		}
		DBG_Print(LEVEL0,"mpu app err time:%02d-%02d-%02d %02d:%02d:%02d(%u)\r\n",tempbuf[0],tempbuf[1],tempbuf[2],tempbuf[3],tempbuf[4],tempbuf[5],templen);
	}

	if (strstr(ptr,"view_stack"))
	{
		if (pOut && outlen)
		{
			ack_len += snprintf((char *)pOut,outlen,"threadid free/total\r\n");
		}

		for (rlen = 0; rlen < (MAX_THREAD_CNT+1); rlen++)
		{
			templen = os_get_stack_free(rlen);
			tlen = os_get_stack_size(rlen);
		
			DBG_Print(LEVEL2,"<thread%u>free:%u/total:%u\r\n",rlen,templen,tlen);

			if (pOut && outlen)
			{
				ack_len += snprintf((char *)pOut+ack_len,outlen-ack_len,"%u.%u/%u\r\n",rlen,templen,tlen);
			}
		}
	}

	if (strstr(ptr,"linuxcmd:"))
	{
		ptemp = os_malloc(1536);
		if (ptemp)
		{
			memset(ptemp,0,1536);
			if (GetSubString(ptr,"<linuxcmd:",">",ptemp,384))
			{
				rlen = tccp_pack(TCCP_MCU_TO_MPU_EXE_LINUX_CMD_MSG_ID,ptemp,strlen(ptemp),ptemp+384,512);
				send_to_mpu(ptemp + 384,rlen);
			}
			os_free(ptemp);
		}
	}

	if (strstr(ptr,"atcmd:"))
	{
		ptemp = os_malloc(1536);
		if (ptemp)
		{
			memset(ptemp,0,1536);
			if (GetSubString(ptr,"<atcmd:",">",ptemp,640))
			{
				rlen = tccp_pack(TCCP_MCU_TO_MPU_EXE_AT_CMD_MSG_ID,ptemp,strlen(ptemp),ptemp+640,640);
				send_to_mpu(ptemp + 640,rlen);
			}
			os_free(ptemp);
		}
	}

	ptemp = find_str_tail(ptr,"func_test:");
	if (ptemp)
	{
		templen = atoi(ptemp);

		func_test(templen);
		DBG_Print(LEVEL2,"mcu func test:%u\r\n",templen);	
	}
		

	//ATEX=mcu_to_mpu_test:1
	ptemp = find_str_tail(ptr,"mcu_to_mpu_test:");
	if (ptemp)
	{
		char tm[2] = {0};

		templen = atoi(ptemp);
		tm[0] = templen >> 8;
		tm[1] = templen;

		DBG_Print(LEVEL2,"mpu test:%u\r\n",templen);
		rlen = tccp_pack(TCCP_MCU_TO_MPU_TEST_MSG_ID,tm,2,tempbuf,64);
		send_to_mpu(tempbuf,rlen);
	}

	ptemp = find_str_tail(ptr,"test_out:");
	if (ptemp)
	{
		if (atoi(ptemp))
		{
			pin_high(OUT1_EN_RCC,OUT1_EN_PORT,OUT1_EN_PIN);
			//pin_high(OUT2_EN_RCC,OUT2_EN_PORT,OUT2_EN_PIN);
		}
		else
		{
			pin_low(OUT1_EN_RCC,OUT1_EN_PORT,OUT1_EN_PIN);
			//pin_low(OUT2_EN_RCC,OUT2_EN_PORT,OUT2_EN_PIN);
		}

		if (pOut && outlen)
		{
			ack_len += snprintf((char *)pOut+ack_len,outlen-ack_len,"test_out:%u(io1:%u io2:%u io3:%u io4:%u)\r\n",atoi(ptemp),
						pin_read_in(IO1_IN_RCC,IO1_IN_PORT,IO1_IN_PIN),
						pin_read_in(IO2_IN_RCC,IO2_IN_PORT,IO2_IN_PIN),
						pin_read_in(IO3_IN_RCC,IO3_IN_PORT,IO3_IN_PIN),
						pin_read_in(IO4_IN_RCC,IO4_IN_PORT,IO4_IN_PIN)
						);
		}
	}

	//获取发动机类型
	if (strstr(ptr,"ENGINETYPE?"))
	{
		DBG_Print(LEVEL0,"engine type:%s\r\n",get_engine_type_str(get_engine_type()));
	}

	//设置发动机类型
	ptemp = strstr(ptr,"ENGINETYPE=");
	if (ptemp)
	{
		set_engine_type((EngineType)atoi(ptemp + strlen("ENGINETYPE=")));
		DBG_Print(LEVEL0,"set engine type:%s\r\n",get_engine_type_str(get_engine_type()));
	}
	if (strstr(ptr,"GPSAT:"))
	{
		DBG_Print(0,"send to gps:%s\r\n",ptr + 6);
		
		//send_to_gps(ptr + 6,strlen(ptr + 6));
	}
	ptemp = strstr(ptr,"val:");
	if (ptemp)
	{
		set_test_val(atoi(ptemp+4));
		DBG_Print(0,"set test val:%u\r\n",atoi(ptemp+4));
	}

	if (strstr(ptr,"CHARGESW:1"))
	{
		DBG_Print(0,"open bat charge.\r\n");
	}

	if (strstr(ptr,"CHARGESW:0"))
	{
		DBG_Print(0,"close bat charge.\r\n");
	}
	

	return ack_len;
}

unsigned int Cmd_Test(void *content,unsigned int contentlen,void *pOut,unsigned int outlen)
{
	//CanRxMsg msg;
	char *ptr = (char *)content;
	unsigned int a = 0;
	unsigned int b = 0;

	if (strstr(ptr,"store"))
	{
		a = cpu_clock();
		//StoreOneData(0,&msg,sizeof(msg));
		b = cpu_clock();
		
		DBG_Print(0,"store take time:%u\r\n",(b - a) / 75);

	}
	//set_test_val(atoi(ptr));
	//DBG_Print(0,"set test val:%u\r\n",atoi(ptr));

	return 0;
}


unsigned int Cmd_GetRtc(void *pArg,unsigned int len,void *pOut,unsigned int outlen)
{
	return 0;
}



unsigned int Cmd_SetRtc(void *pArg,unsigned int len,void *pOut,unsigned int outlen)
{

	return 0;
}

/**************************************************************************
* 函  数: int Cmd_DefaultDevice(void *pArg,INT32U len,void *pOut,INT32U outlen)
* 描  述: 恢复出厂设置
* 举  例: ATRST
* 入  参: void *pArg: 指令的参数
*		  INT32U len: 参数的长度
*	      INT32U outlen：输出信息的最大长度
* 出  参: void *pOut：输出信息
* 返回值: int:输出信息的实际长度
**************************************************************************/
static unsigned int Cmd_DefaultDevice(void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	int rlen = 0;

	return rlen;
}

#define _SET_BIT(val,bit_no) val |= (1 << bit_no)
#define _CLR_BIT(val,bit_no) val &= (~(1 << bit_no))

/**
第0位表示:SIM卡插入状态 0表示未插入 1表示已插入
第1位表示是否连上平台标志 0表示未连上 1表示已连上
第2位表示ACC状态 0表示OFF  1表示ON
第3位表示FLASH是否OK 0表示不OK  1表示OK
4-31位保留 待定
*/
INT32U _get_sw_status(void)
{
	INT32U ret = 0;

	return ret;
}

unsigned int get_status(void *pOutBuf,unsigned int outbuflen)
{
	return 0;
}

unsigned int Cmd_SetReportStatusSw(void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	int rlen = 0;
	int flag = atoi((char *)pArg);

	SetReportStatus(flag);
	if (pOut)
	{
		rlen = snprintf(pOut,outlen,"Set report status switch:%d", flag);
	}
	DBG_Print(LEVEL0,"Set report status switch:%d\r\n", flag);
	return rlen;
}


unsigned int Cmd_GetVin(void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	int rlen = 0;
	char *vin = 0;

	vin = GetVIN();
	DBG_Print(LEVEL0,"<VIN:%s>\r\n", vin);
	if (pOut)
	{
		rlen = snprintf((char *)pOut,outlen,"VIN:%s", vin);
	}

	return rlen;
}

unsigned int Cmd_SetVin(void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	int rlen = 0;
	char *vin = (char *)pArg;

	SetVIN(vin);
	DBG_Print(LEVEL0,"Set Vin:%s\r\n", vin);
	if (pOut)
	{
		rlen = snprintf((char *)pOut,outlen,"Set Vin:%s OK", vin);
	}
	return rlen;
}

/**************************************************************************
* 函  数: int Cmd_GetSn(void *pArg,INT32U len,void *pOut,INT32U outlen)
* 描  述: 获取SN序列号
* 举  例: ATSN?
* 入  参: void *pArg: 指令的参数
*		  INT32U len: 参数的长度
*	      INT32U outlen：输出信息的最大长度
* 出  参: void *pOut：输出信息
* 返回值: int:输出信息的实际长度
**************************************************************************/
unsigned int Cmd_GetSn(void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	int rlen = 0;
	char *sn = 0;

	sn = GetSN();
	DBG_Print(LEVEL0, "Get <SN:%s>\r\n", sn);	
	if (pOut)
	{
		rlen = snprintf((char *)pOut,outlen,"Get SN:%s", sn);
	}

	return rlen;
}

/**************************************************************************
* 函  数: int Cmd_SetSn(void *pArg,INT32U len,void *pOut,INT32U outlen)
* 描  述: 设置SN序列号
* 举  例: ATSN=XXXXXXXXXXXXXXXXXXXXXX
* 入  参: void *pArg: 指令的参数
*		  INT32U len: 参数的长度
*	      INT32U outlen：输出信息的最大长度
* 出  参: void *pOut：输出信息
* 返回值: int:输出信息的实际长度
**************************************************************************/
unsigned int Cmd_SetSn(void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	int rlen = 0;

	DBG_Print(LEVEL0,"Set SN:%s\r\n", (char *)pArg);
	SetSN((char *)pArg);
	if (pOut)
	{
		rlen = snprintf((char *)pOut, outlen, "Set SN:%s", (char *)pArg);
	}

	return rlen;
}

unsigned int Cmd_SetApn(void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	int rlen = 0;

	DBG_Print(LEVEL0,"Set APN:%s\r\n",(char *)pArg);
	SPSetApn(0,(char *)pArg);

	if (pOut)
	{
		rlen = snprintf((char *)pOut, outlen, "Set APN:%s", (char *)pArg);
	}

	return rlen;
}

unsigned int Cmd_GetApn(void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	int rlen = 0;
	char *apn = 0;

	apn = SPGetApn(0);
	DBG_Print(LEVEL0,"Get APN:%s\r\n", apn);
	if (pOut)
	{
		rlen = snprintf((char *)pOut,outlen,"Get APN:%s", apn);
	}

	return rlen;
}

int set_ip(char idx,void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	char *ipDomain = pArg;
	
	SPSetServerAddr(idx,pArg);
	if (idx == 0)
	{
		DBG_Print(LEVEL0,"<FIRSTIP:%s>\r\n", ipDomain);
		return snprintf((char *)pOut,outlen,"FIRSTIP:%s", ipDomain);
	}
	else if (idx == 1)
	{
		DBG_Print(LEVEL0,"<SECONDIP:%s>\r\n", ipDomain);
		return snprintf((char *)pOut,outlen,"SECONDIP:%s", ipDomain);
	}
	else if (idx == 2)
	{
		DBG_Print(LEVEL0,"<THIRDIP:%s>\r\n", ipDomain);
		return snprintf((char *)pOut,outlen,"THIRDIP:%s",ipDomain);
	}
	return 0;
}

int set_port(char idx,void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	INT16U port = 0;

	if (pArg == 0) return 0;
	port = atoi((char *)pArg);

	SPSetServerPort(idx,port);

	if (idx == 0)
	{
		DBG_Print(LEVEL0,"<FIRSTPORT:%d>\r\n", port);
		return snprintf((char *)pOut,outlen,"FIRSTPORT:%d", port);
	}
	else if (idx == 1)
	{
		DBG_Print(LEVEL0,"<SECONDPORT:%d>\r\n", port);
		return snprintf((char *)pOut,outlen,"SECONDPORT:%d", port);
	}
	else if (idx == 2)
	{
		DBG_Print(LEVEL0,"<THIRDPORT:%d>\r\n", port);
		return snprintf((char *)pOut,outlen,"THIRDPORT:%d",port);
	}
	return 0;
}


unsigned int Cmd_SetFirstIP(void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	return set_ip(0,pArg,len,pOut,outlen);
}

unsigned int Cmd_SetSecondIP(void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	return set_ip(1,pArg,len,pOut,outlen);
}

unsigned int Cmd_SetThirdIP(void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	return set_ip(2,pArg,len,pOut,outlen);
}


unsigned int Cmd_SetFirstPort(void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	return set_port(0,pArg,len,pOut,outlen);
}

unsigned int Cmd_SetSecondPort(void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	return set_port(1,pArg,len,pOut,outlen);
}

unsigned int Cmd_SetThirdPort(void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	return set_port(2,pArg,len,pOut,outlen);
}

int set_ipport(char idx,void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	INT16U port = 0;
	char *ptemp = 0;
	unsigned int iplen = 0;
	char ip[48] = {0};

	if (pArg == 0) return 0;

	ptemp = strstr((char *)pArg,",");
	if (ptemp == 0)
	{
		ptemp = strstr((char *)pArg,":");
		if (ptemp == 0)
		{
			ptemp = strstr((char *)pArg," ");
			if (ptemp == 0)
			{
				return 0;
			}
		}
	}

	iplen = ptemp - (char *)pArg;
	if (iplen >= 48)
	{
		return 0;
	}
	memcpy(ip,pArg,iplen);
	port = atoi(ptemp + 1);

	mcu_modify_server(idx,ip,port);

	if (idx == 0)
	{
		DBG_Print(LEVEL0,"<FIRSTSERVER:%s:%d>\r\n",ip,port);
		return snprintf((char *)pOut,outlen,"FIRSTSERVER:%s:%d",ip,port);
	}
	else if (idx == 1)
	{
		DBG_Print(LEVEL0,"<SECONDSERVER:%s:%d>\r\n",ip,port);
		return snprintf((char *)pOut,outlen,"SECONDSERVER:%s:%d",ip,port);
	}
	else if (idx == 2)
	{
		DBG_Print(LEVEL0,"<THIRDSERVER:%s:%d>\r\n",ip,port);
		return snprintf((char *)pOut,outlen,"THIRDSERVER:%s:%d",ip,port);
	}
	return 0;
}


unsigned int Cmd_SetFirstServer(void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	return set_ipport(0,pArg,len,pOut,outlen);
}

unsigned int Cmd_SetSecondServer(void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	return set_ipport(1,pArg,len,pOut,outlen);
}

unsigned int Cmd_SetThirdServer(void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	return set_ipport(2,pArg,len,pOut,outlen);
}

unsigned int Cmd_Set4Server(void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	return set_ipport(3,pArg,len,pOut,outlen);
}

unsigned int Cmd_Set5Server(void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	return set_ipport(4,pArg,len,pOut,outlen);
}

unsigned int Cmd_Set6Server(void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	return set_ipport(5,pArg,len,pOut,outlen);
}

unsigned int Cmd_Set7Server(void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	return set_ipport(6,pArg,len,pOut,outlen);
}

unsigned int Cmd_Set8Server(void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	return set_ipport(7,pArg,len,pOut,outlen);
}

static unsigned int Cmd_GetPlat(void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	int rlen = 0;

	
	DBG_Print(LEVEL0,"<FIRSTIP:%s><FIRSTPORT:%u>"
	"<SECONDIP:%s><SECONDPORT:%u>"
	"<THIRDIP:%s><THIRDPORT:%u>"
	"\r\n",
	SPGetServerAddr(0), SPGetServerPort(0),
	SPGetServerAddr(1), SPGetServerPort(1),
	SPGetServerAddr(2), SPGetServerPort(2)
	);

	if (pOut)
	{
		rlen = snprintf((char *)pOut,outlen,"<FIRSTIP:%s><FIRSTPORT:%u>"
		"<SECONDIP:%s><SECONDPORT:%u>"
		"<THIRDIP:%s><THIRDPORT:%u>"
		"\r\n",
		SPGetServerAddr(0), SPGetServerPort(0),
		SPGetServerAddr(1), SPGetServerPort(1),
		SPGetServerAddr(2), SPGetServerPort(2)
		);

	}
	return rlen;
}




unsigned int Cmd_SetCan1Bps(void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	int rlen = 0;
	unsigned int bps = atoi((char *)pArg);

	DBG_Print(LEVEL0,"Set CAN1 Bps:%u\r\n", bps);
	SetCan0Bps(bps);
	//can0_init(bps);

	if (pOut)
	{
		rlen = snprintf((char *)pOut,outlen,"Set CAN1 Bps:%u", bps);
	}

	return rlen;
}

unsigned int Cmd_GetCan1Bps(void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	int rlen = 0;

	DBG_Print(LEVEL0,"Get CAN1 Bps:%u\r\n", GetCan0Bps());
	if (pOut)
	{
		rlen = snprintf((char *)pOut,outlen,"Get CAN1 Bps:%u", GetCan0Bps());
	}

	return rlen;
}

unsigned int Cmd_SetCan2Bps(void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	int rlen = 0;
	unsigned int bps = atoi((char *)pArg);

	DBG_Print(LEVEL0,"Set CAN2 Bps:%u\r\n", bps);

	SetCan2Bps(bps);
	//can2_init(bps);

	if (pOut)
	{
		rlen = snprintf((char *)pOut,outlen,"Set CAN2 Bps:%u", bps);
	}

	return rlen;
}

unsigned int Cmd_GetCan2Bps(void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	int rlen = 0;

	DBG_Print(LEVEL0,"Get CAN2 Bps:%u\r\n", GetCan2Bps());
	if (pOut)
	{
		rlen = snprintf((char *)pOut,outlen,"Get CAN2 Bps:%u", GetCan2Bps());
	}

	return rlen;
}

unsigned int Cmd_SetCan3Bps(void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	int rlen = 0;
	unsigned int bps = atoi((char *)pArg);

	DBG_Print(LEVEL0,"Set CAN3 Bps:%u\r\n", bps);
	SetCan1Bps(bps);
	//can1_init(bps);

	if (pOut)
	{
		rlen = snprintf((char *)pOut,outlen,"Set CAN3 Bps:%u", bps);
	}

	return rlen;
}

unsigned int Cmd_GetCan3Bps(void *pArg,INT32U len,void *pOut,INT32U outlen)
{
	int rlen = 0;

	DBG_Print(LEVEL0,"Get CAN3 Bps:%u\r\n", GetCan1Bps());
	if (pOut)
	{
		rlen = snprintf((char *)pOut,outlen,"Get CAN3 Bps:%u", GetCan1Bps());
	}

	return rlen;
}


/* 所有支持的用户指令 */
SystemCommand const stCmdList[] = 
{
{"ATDRVVER?",	Cmd_GetSoftwareVersion},

{"ATWST",			Cmd_Reboot},			//重启设备
{"ATRST",			Cmd_DefaultDevice}, 	//恢复出厂设置

//设置 查询调试等级
{"ATDBG=",			Cmd_SetDbgLevel},
{"ATDBG?",			Cmd_GetDbgLevel},

{"ATSETREPORTSW=",  Cmd_SetReportStatusSw},

//设置 查询汽车VIN
{"ATVIN=",			Cmd_SetVin},
{"ATVIN?",			Cmd_GetVin},
//设置 查询SN号
{"ATSN=",			Cmd_SetSn},
{"ATSN?",			Cmd_GetSn},

{"ATAPN=",	 		Cmd_SetApn},
{"ATAPN?",	 		Cmd_GetApn},

{"ATPLAT?",			Cmd_GetPlat},
{"ATFIRSTIP=",		Cmd_SetFirstIP},
{"ATFIRSTPORT=",	Cmd_SetFirstPort},

{"ATSECONDIP=", 	Cmd_SetSecondIP},
{"ATSECONDPORT=",	Cmd_SetSecondPort},

{"ATTHIRDIP=",		Cmd_SetThirdIP},
{"ATTHIRDPORT=",	Cmd_SetThirdPort},

{"AT0SERVER=",		Cmd_SetFirstServer},
{"AT1SERVER=",		Cmd_SetSecondServer},
{"AT2SERVER=",		Cmd_SetThirdServer},
{"AT3SERVER=",		Cmd_Set4Server},
{"AT4SERVER=",		Cmd_Set5Server},
{"AT5SERVER=",		Cmd_Set6Server},
{"AT6SERVER=",		Cmd_Set7Server},
{"AT7SERVER=",		Cmd_Set8Server},


{"ATRTC=",			Cmd_SetRtc},
{"ATRTC?",			Cmd_GetRtc},

{"ATEX=",Cmd_Expand},
};

unsigned int analyze_usercmd(void *ptr,unsigned int len,void *pOut,unsigned int outbuflen)
{
	unsigned int rlen = 0;
	char acTemp[200] = {0};
	unsigned int i = 0;

	if ((ptr == 0) || (len == 0))
	{
		return 0;
	}

	for (i = 0; i < ARRAY_ELEMENT_CNT(stCmdList); i++)
	{
		if (strstr((char *)ptr,stCmdList[i].pCmd))	//逐一对比指令表
		{
			if (GetSubString((char *)ptr,stCmdList[i].pCmd,"\r\n",acTemp,sizeof(acTemp))
			|| GetSubString((char *)ptr,stCmdList[i].pCmd,0,acTemp,sizeof(acTemp)))
			{
				if (stCmdList[i].pFunc)
				{
					DBG_Print(LEVEL4,"cmd:%s\r\narg:%s\r\n",stCmdList[i].pCmd,acTemp);
					rlen = stCmdList[i].pFunc(acTemp,strlen(acTemp),pOut,outbuflen);
				}
			}
		}
	}

	return rlen;
}











