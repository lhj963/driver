#include "Net.h"
//#if __EC20__
#include "ec20.h"
//#endif

typedef enum tagModemType
{
	UnknowModem = 0,
	M26,
	SIM800,
	EC20,

}ModemType;

ModemType eModemType = UnknowModem;

void SetModemType(ModemType eType)
{
	if (eModemType == eType)
	{
		return ;
	}
	DBG_Print(LEVEL3,"<SetModemType>NewType:%d OldType:%d\r\n",eType,eModemType);
	eModemType = eType;
}

ModemType GetModemType(void)
{
	return eModemType;
}




#define	FTPFILE_TYPE_TXT  	1
#define	FTPFILE_TYPE_BIN 	0

typedef struct tagNetStruction
{
	unsigned char mdm_is_ok;		//模块是否正常
	unsigned char csq;	//信号强度
	char szICCID[32];
	NetStatus eStatus[MAX_LINK_CNT];
	DATASENDSTATUS aeDATASENDSTATUS[MAX_LINK_CNT];	//数据发送状态
	unsigned long aulLastTime[MAX_LINK_CNT];
	char cIsipmux;								//ip多链路模式
	unsigned char cur_send_data_link_id;		//标识当前正在发送数据的链路
	unsigned int cur_send_data_len;				//标识当前正在发送的数据长度
	unsigned long total_arrive_server_data_len;	//标识总的到达服务器的数据长度

	//char *pApn;
	//char *pApnUserName;
	//char *pApnPassword;

	//char *pServerAddr[MAX_LINK_CNT];
	//unsigned int server_port[MAX_LINK_CNT];
	//unsigned char is_tcp[MAX_LINK_CNT];

	net_send_hook pUserNetSendFunc[MAX_LINK_CNT];

	net_data_arrive_callback pNetDataArriveFunc[MAX_LINK_CNT];
	connect_server_ok_hook pConnectOk[MAX_LINK_CNT];
	disconnect_server_hook pDisConnect[MAX_LINK_CNT];


	char start_user_send_flag[MAX_LINK_CNT];
	char send_result[MAX_LINK_CNT];
	unsigned char *will_send_data_ptr[MAX_LINK_CNT];
	unsigned int will_send_len[MAX_LINK_CNT];

	//FTP相关
	char *pFtpServerAddr;
	unsigned int ftp_port;
	char *pFtpUserName;
	char *pFtpPassword;
	unsigned char eFtpFileType;		//文件类型 0:binary 1:ascii
	unsigned char ftp_transmode;	//传输模式 0主动 1被动
	char *pFtpFileName;

	FTPStatus eFtpStatus;
	INT32U ulBreakPos;		//断点位置
	INT32U ulDownloadedBytes;	//已下载的总大小
	ftp_data_arrive_callback pFtpDataArriveFunc;
	ftp_download_finish_callback pftp_download_finish_func;
	unsigned char is_get_ftp_ip_ok;

	//短信相关
	sms_arrive_callback p_sms_callback;		//用于APP
	sms_arrive_callback p_sms_drv_callback;		//用于DRV

	INT8U del_sms_flag;		//允许删除短信标志

	EMAIL_STATUS eEMAIL_STATUS;
	INT32U ulLastResponseTime;					//模块最近一次回复指令的时间
}NetStruction;



NetStruction stNet = {0};

void set_del_sms_flag(INT8U val)
{
	stNet.del_sms_flag = val;
}

INT8U get_del_sms_flag(void)
{
	return stNet.del_sms_flag;
}

sms_arrive_callback get_sms_arrive_callback_ptr(void)
{
	return stNet.p_sms_callback;
}

sms_arrive_callback get_sms_arrive_callback_drv_ptr(void)
{
	return stNet.p_sms_drv_callback;
}

void reg_sms_arrive_callback(void (*pf)(void *szPhoneNo,void *content,unsigned int contentlen))
{
	stNet.p_sms_callback = pf;
}

void reg_sms_arrive_callback_drv(void (*pf)(void *szPhoneNo,void *content,unsigned int contentlen))
{
	stNet.p_sms_drv_callback = pf;
}



void reg_ftp_data_arrive_callback(void (*pf)(void *p,unsigned int len))
{
	stNet.pFtpDataArriveFunc = pf;
}

void reg_ftp_download_finish_callback(void (*pf)(void))
{
	stNet.pftp_download_finish_func = pf;
}


ftp_data_arrive_callback get_ftp_data_arrive_callback_ptr(void)
{
	return stNet.pFtpDataArriveFunc;
}



ftp_download_finish_callback get_ftp_download_finish_callback_ptr(void)
{
	return stNet.pftp_download_finish_func;
}


void set_ftp_download_file_name(void *ptr)
{
	stNet.pFtpFileName = ptr;
}

void set_ftp_username(void *ptr)
{
	stNet.pFtpUserName = ptr;
}

void set_ftp_userpassword(void *ptr)
{
	stNet.pFtpPassword = ptr;
}

void set_ftp_file_type(unsigned char type)
{
	stNet.eFtpFileType = type;
}

void set_ftp_server_addr(void *ptr)
{
	stNet.pFtpServerAddr = ptr;
}

void set_ftp_server_port(unsigned int port)
{
	stNet.ftp_port = port;
}

void set_ftp_transmode(unsigned char mode)
{
	stNet.ftp_transmode = mode;
}


net_data_arrive_callback get_net_data_arrive_callback_ptr(unsigned char idx)
{
	if (idx >= MAX_LINK_CNT) return 0;

	return stNet.pNetDataArriveFunc[idx];
}

net_send_hook get_net_send_hook_ptr(unsigned char idx)
{
	if (idx >= MAX_LINK_CNT) return 0;

	return stNet.pUserNetSendFunc[idx];
}

connect_server_ok_hook get_connect_server_ok_hook_ptr(unsigned char idx)
{
	if (idx >= MAX_LINK_CNT) return 0;

	return stNet.pConnectOk[idx];
}

disconnect_server_hook get_disconnect_server_hook_ptr(unsigned char idx)
{
	if (idx >= MAX_LINK_CNT) return 0;

	return stNet.pDisConnect[idx];
}







unsigned long get_total_arrive_server_data_len(void)
{
	return stNet.total_arrive_server_data_len;
}

void set_total_arrive_server_data_len(unsigned long val)
{
	stNet.total_arrive_server_data_len = val;
}


unsigned int get_cur_send_data_len(void)
{
	return stNet.cur_send_data_len;
}

void set_cur_send_data_len(unsigned int val)
{
	stNet.cur_send_data_len = val;
}


unsigned char get_cur_send_data_link_id(void)
{
	return stNet.cur_send_data_link_id;
}

void set_cur_send_data_link_id(unsigned char val)
{
	stNet.cur_send_data_link_id = val;
}

#if 1
void GPRS_MD_SetModemExistFlag(unsigned char val)
{
	stNet.mdm_is_ok = val;
}

unsigned char GPRS_MD_GetModemExistFlag(void)
{
	return stNet.mdm_is_ok;
}

#endif

void SetEMAIL_STATUS(EMAIL_STATUS val)
{
	if (stNet.eEMAIL_STATUS == val)
	{
		return ;
	}
	stNet.eEMAIL_STATUS = val;
}

EMAIL_STATUS GetEMAIL_STATUS(void)
{
	return stNet.eEMAIL_STATUS;
}

INT8U s_ucModemAckOkFlag = 0;

void SetModemAckFlag(INT8U val)
{
	s_ucModemAckOkFlag = val;
}

INT8U GetModemAckFlag(void)
{
	return s_ucModemAckOkFlag;
}


void SetLastResponseTime(INT32U ulTime)
{
	if (stNet.ulLastResponseTime == ulTime)
	{
		return ;
	}
	stNet.ulLastResponseTime = ulTime;
}

INT32U GetLastResponseTime(void)
{
	return stNet.ulLastResponseTime;
}

void SetIPMux(char cFlag)
{
	if (stNet.cIsipmux == cFlag)
	{
		return ;
	}
	stNet.cIsipmux = cFlag;
}

char GetIPMux(void)
{
	return stNet.cIsipmux;
}



static SMS s_stSMS = {0};

static INT16S s_asUnreadSmsIdx[MAX_SMS_BUF_CNT] = {0};	//未读短信的idx

//发送短信缓冲区
static SMS s_astSMSSend[MAX_SMS_BUF_CNT] = {0};
static SMS *pCurSendSms = 0;

SMS stSmsQIn;

INT8U s_ucNextSmsAllowSendFlag = 1;	//允许下一条短信发送标志


void SetICCID(void *str)
{
	char *ptr = (char *)str;

	//参数条件检查 首字母为'8' 长度不能超过stNet.szICCID大小 并且字符串内容和stNet.szICCID不相等
	if (str && (*ptr == '8') && (strlen(ptr) < sizeof(stNet.szICCID))
	&& strcmp(ptr,stNet.szICCID))
	{
		memset(stNet.szICCID,0,sizeof(stNet.szICCID));
		snprintf(stNet.szICCID, sizeof(stNet.szICCID), "%s", (char *)str);
	}
}

char *GetICCID(void)
{
	return stNet.szICCID;
}

DATASENDSTATUS GetDataSendStatus(INT8U idx)
{
	return stNet.aeDATASENDSTATUS[idx];
}

void SetDataSendStatus(INT8U idx,DATASENDSTATUS eStatus)
{
	if (stNet.aeDATASENDSTATUS[idx] == eStatus)
	{
		return ;
	}
	stNet.aeDATASENDSTATUS[idx] = eStatus;
}




INT32U GetFTPBreakPos(void)
{
	return stNet.ulBreakPos;
}

void SetFTPBreakPos(INT32U pos)
{
	stNet.ulBreakPos = pos;
}

FTPStatus GetFTPStatus(void)
{
	return stNet.eFtpStatus;
}

void SetFTPStatus(FTPStatus eStatus)
{
	//如果当前状态等于要设置的状态 则不进行再次设置
	if (stNet.eFtpStatus == eStatus)
	{
		return ;
	}

	stNet.eFtpStatus = eStatus;
}

void SetCsq(INT8U csq)
{
	stNet.csq = csq;
}

INT8U GetCsq(void)
{
	return stNet.csq;
}

SMS *GetCurRecvSmsPtr(void)
{
	return &s_stSMS;
}


INT16U AddUnreadSmsIdx(INT16U idx)
{
#if 1
	INT16U temp = idx;

	//QueueIn(1,&temp);
	return temp;
#else
	INT8U i = 0;

	for (i = 0; i < MAX_SMS_BUF_CNT; i++)
	{
		if (s_asUnreadSmsIdx[i] < 0)
		{
			s_asUnreadSmsIdx[i] = idx;
		}
	}
	return idx;
#endif
}


//返回值:小于0 说明没有未处理短信
int FindUnreadSmsIdx(void)
{
	INT8U i = 0;

	for (i = 0; i < MAX_SMS_BUF_CNT; i++)
	{
		if (s_asUnreadSmsIdx[i] > 0)
		{
			return s_asUnreadSmsIdx[i];
		}
	}
	return -1;
}

void ReadSmsOk(void)
{
}

void SendSMSOK(void)
{
	if ((pCurSendSms = QueueGetCurMsg(QUEUE_NO_SEND_SMS)) != 0)
	{
		DBG_Print(LEVEL3,"SMS Send OK(%s len:%d %s)\r\n",pCurSendSms->szNo,
		pCurSendSms->usContentLen,pCurSendSms->szContent);
	}

	QueueMsgDealOk(QUEUE_NO_SEND_SMS);

	s_ucNextSmsAllowSendFlag = 1;	//下一条短信允许发送标志
}


void SetNetLastTime(unsigned char ucLinkIdx,unsigned long ulTime)
{
	stNet.aulLastTime[ucLinkIdx] = ulTime;
}

unsigned long GetNetLastTime(unsigned char ucLinkIdx)
{
	return stNet.aulLastTime[ucLinkIdx];
}

NetStatus GetNetStatus(unsigned char ucLinkIdx)
{
	return stNet.eStatus[ucLinkIdx];
}

void SetNetStatus(unsigned char ucLinkIdx,NetStatus eStat)
{
	if (stNet.eStatus[ucLinkIdx] == eStat) return ;
	stNet.eStatus[ucLinkIdx] = eStat;
	//每当网络状态发生改变 清零上一次时间计数
	SetNetLastTime(ucLinkIdx,0);
}

void AnalyzeModemResponse(void *buf,unsigned int len)
{
	char *ptr = (char *)buf;
	ModemType eType;

	if (ptr == 0)
	{
		return ;
	}

	if (GetModemType() == UnknowModem)
	{
		if (strstr(ptr,"SIM800")  && strstr(ptr,"Revision:"))
		{
			SetModemType(SIM800);
		}
		
		if (strstr(ptr,"M26")  && strstr(ptr,"Revision:"))
		{
			SetModemType(M26);
		}
		
		if (strstr(ptr,"EC20"))
		{
			SetModemType(EC20);
		}
	}


	if (strstr(ptr,"OK"))
	{
		SetModemAckFlag(1);
	}

	eType = GetModemType();

#if __SIM800__
	if (eType == SIM800)
	{
		SIM800_AnalyzeModemResponse(buf,len);
	}
#endif

#if __M26__
	if (eType == M26)
	{
		M26_AnalyzeModemResponse(buf,len);
	}
#endif

#if __EC20__
	if (eType == EC20)
	{
		EC20_AnalyzeModemResponse(buf,len);
	}
#endif
}

//监控模块的响应
void MonitorModemResponse(unsigned int uiTimeout)
{
	unsigned int rlen = 0;

	rlen = ReadModemUsart(0,0,uiTimeout);

	if (rlen > 0)
	{
		unsigned char *ptr = 0;

		ptr = os_malloc(1536);
		if (ptr)
		{
			rlen = ReadModemUsart(ptr,1536,(unsigned int)-1);
			
			if (rlen > 2)
			{
				GPRS_MD_SetModemExistFlag(1);
				SetLastResponseTime(GetRunTime());
				
				DBG_Print(LEVEL_GPRS,"[\r\n%s]\r\n",ptr);
				DBG_Print(LEVEL4,"[(%u)\r\n%s]\r\n",rlen,ptr);
			
				//解析模块的响应
				AnalyzeModemResponse(ptr,rlen);
			}
			else
			{
				//串口干扰数据
				DBG_PrintBuf(LEVEL1,"<MonitorModemResponse>ErrorData:",ptr,rlen);
			}

			os_free(ptr);
		}
	}
}



//0 失败 非零成功
int SendATCmd(void *buf,unsigned int len,unsigned int uiTimeout)
{
	DBG_Print(LEVEL_GPRS,"%s\r\n",(char *)buf);
	DBG_Print(LEVEL4,"%s\r\n",(char *)buf);

	SetModemAckFlag(0);
	WriteModemUsart(buf,len);
	WriteModemUsart("\r",1);

	MonitorModemResponse(uiTimeout);

	return GetModemAckFlag();
}

//先发一条指令 再发数据
int SendATCmdEx(void *cmd,void *pdat,INT16U len,unsigned int uiTimeout)
{
	if ((cmd == 0) || (len == 0) || (pdat == 0)) return 0;

	//下指令
	SendATCmd(cmd,strlen((char *)cmd),uiTimeout);

	//下数据
	DBG_Print(LEVEL_GPRS,"%s\r\n",(char *)pdat);
	DBG_Print(LEVEL4,"%s\r\n",(char *)pdat);

	WriteModemUsart(pdat,len);
	WriteModemUsart("\x1A",1);

	MonitorModemResponse(uiTimeout);
	return 0;
}



char IsConnectServerOk(unsigned char ucLinkIdx)
{
	return ((GetNetStatus(ucLinkIdx) >= CONNECT_SERVER_OK) ? 1 : 0);
}

void CMD_SendSMS(void *szPhone,void *buf,INT16U len)
{
	char cmd[36] = {0};

	if ((szPhone == 0) || (buf == 0) || (len == 0))
	{
		return ;
	}
	s_ucNextSmsAllowSendFlag = 0;
	if (GetModemType() == SIM800)
	{
		//SIM800_SendSMS(szPhone,buf, len);
	}
	else if (GetModemType() == EC20)
	{
		snprintf(cmd,sizeof(cmd),"AT+CMGS=\"%s\"",(char *)szPhone);
		
		SendATCmdEx(cmd,buf,len,3000);
	}
	DBG_Print(LEVEL3,"Send SMS(len:%d %s %s)\r\n",len,(char *)szPhone,(char *)buf);
}

//返回发送的长度 为0 表示 发送失败
INT8U _SendSMS(void *szPhone,void *buf,INT16U len)
{
	INT8U rlen = 0;
	INT8U templen = sizeof(stSmsQIn.szContent) - 1;

	if ((szPhone == 0) || (buf == 0) || (len == 0))
	{
		return 0;
	}

	memset(&stSmsQIn,0,sizeof(stSmsQIn));

	snprintf(stSmsQIn.szNo, sizeof(stSmsQIn.szNo), "%s", (char *)szPhone);
	rlen = (len > templen) ? templen : len;
	stSmsQIn.usContentLen = rlen;
	memcpy(stSmsQIn.szContent,buf,rlen);

	if (QueueIn(QUEUE_NO_SEND_SMS,&stSmsQIn) == 0)
	{
		return rlen;
	}
	else
	{
		return 0;
	}

}


int SendSMS(void *szPhone,void *buf,INT16U len)
{
	INT16U rlen = len;
	INT8U templen = 0;
	INT16U idx = 0;

	if ((szPhone == 0) || (buf == 0) || (len == 0))
	{
		return 0;
	}

	if (strlen((char *)szPhone) == 0)
	{
		return 0;
	}

	while (1)
	{
		templen = _SendSMS(szPhone,(char *)buf + idx,rlen);
		DBG_Print(LEVEL3,"<SendSMS>sms len:%d(%s)\r\n",templen,(char *)buf + idx);
		rlen -= templen;
		idx += templen;
		if (idx >= len)
		{
			break;
		}
		if (templen == 0)
		{
			DBG_Print(LEVEL2,"<SendSMS>Error have no enough Send SMS Buffer.\r\n");
			break;
		}
	}

	return 0;
}

void SendSMSProc(void)
{
	static INT32U s_ulLast = 0;

	//队列中无数据 跳出函数
	if ((pCurSendSms = QueueGetCurMsg(QUEUE_NO_SEND_SMS)) == 0)
	{
		return ;
	}

	//超时时间20s
	if (s_ucNextSmsAllowSendFlag || ((GetRunTime() - s_ulLast) > 20))
	{
		s_ulLast = GetRunTime();

		CMD_SendSMS(pCurSendSms->szNo,pCurSendSms->szContent,pCurSendSms->usContentLen);
	}
}

void Cmd_ReadSms(void)
{
	static unsigned int s_ul_last_rd_sms = 0;

	if ((GetRunTime() - s_ul_last_rd_sms) >= 5)
	{
		set_del_sms_flag(0);
		SendATCmd("AT+CMGL=\"ALL\"",strlen("AT+CMGL=\"ALL\""),2000);

		s_ul_last_rd_sms = GetRunTime();
	}

	if (get_del_sms_flag())
	{
		//AT+CMGD=1,4
		SendATCmd("AT+CMGD=1,4",strlen("AT+CMGD=1,4"),1000);
		set_del_sms_flag(0);
	}
}

void SMSProc(void)
{
	//没注册上基站 短信任务先不要开展了
	if (GetNetStatus(0) < REGNETOK) return ;

	//每隔4秒查一次是否有短信
	Cmd_ReadSms();

	//发送短信队列
	SendSMSProc();
}


void CMD_QueryNetStatus(void)
{
	//SendATCmd("AT+CGACT?\r",strlen("AT+CGACT?\r"),100);
	//SendATCmd("AT+CGDCONT?\r",strlen("AT+CGDCONT?\r"),100);	

}

void CMD_Connect(INT8U ucLinkIdx,void *szServerAddr,INT16U usPort,INT8U ucIsTcp)
{
	ModemType eType;

	eType = GetModemType();
#if __M26__
	if (eType == M26)
	{
		M26_Connect(ucLinkIdx,szServerAddr,usPort,ucIsTcp);
	}
#endif
#if __SIM800__
	if (eType == SIM800)
	{
		SIM800_Connect(ucLinkIdx,szServerAddr,usPort,ucIsTcp);
	}
#endif

#if __EC20__
	if (eType == EC20)
	{
		EC20_Connect(ucLinkIdx,szServerAddr,usPort,ucIsTcp);
	}
#endif
}

void CMD_SendData(INT8U idx,void *pdat,INT16U len)
{
	ModemType eType = UnknowModem;
	char tip[32] = {0};

	eType = GetModemType();
	set_cur_send_data_link_id(idx);		//顺序不能变化 set_cur_send_data_link_id()要在xxx_SendData之前
	set_cur_send_data_len(len);
	SetDataSendStatus(idx,SEND_STATUS_ING);
	#if __SIM800__
	if (eType == SIM800)
	{
		SIM800_SendData(idx,pdat,len);
	}
	#endif
	#if __EC20__
	if (eType == EC20)
	{
		EC20_SendData(idx,pdat,len);
	}
	#endif

	snprintf(tip,sizeof(tip),"(%d)SEND(%d)\r\n",idx,len);
	DBG_PrintBuf(LEVEL4,tip,pdat,len);
}


int smtp_send_data(void * pdat,INT16U len)
{
	CMD_SendData(2,  pdat, len);
	return 0;
}


void CMD_QueryIP(unsigned char ucLinkIdx)
{
	ModemType eType;

	eType = GetModemType();
#if __SIM800__
	if (eType == SIM800)
	{
		SIM800_QueryIP(ucLinkIdx);
	}
#endif

#if __M26__
	if (eType == M26)
	{
		M26_QueryIP(ucLinkIdx);
	}
#endif

#if __EC20__
	if (eType == EC20)
	{
		EC20_QueryIP(ucLinkIdx);
	}
#endif

}



void CMD_GetIP(unsigned char ucLinkIdx)
{
	ModemType eType;

	eType = GetModemType();
#if __SIM800__
	if (eType == SIM800)
	{
		SIM800_GetIP(ucLinkIdx,GetApn(),GetApnUsername(),GetApnPassword());
	}
#endif

#if __M26__
	if (eType == M26)
	{
		M26_GetIP(ucLinkIdx,GetApn(),GetApnUsername(),GetApnPassword());
	}
#endif

#if __EC20__
	if (eType == EC20)
	{
		EC20_GetIP(ucLinkIdx, SPGetApn(0),SPGetApnUsername(0),SPGetApnPassword(0));
	}
#endif

}

void CMD_QueryModemType(void)
{
	if (GetModemType() == UnknowModem)
	{
		#if __SIM800__
		SIM800_QueryVer();
		#endif
		#if __M26__
		M26_QueryVer();
		#endif
		#if __EC20__
		EC20_QueryVer();
		#endif
	}
}

void CMD_QuerySim(void)
{
	ModemType eType;

	eType = GetModemType();
#if __M26__
	if (eType == M26)
	{
		M26_QuerySim();
	}
#endif

#if __SIM800__
	if (eType == SIM800)
	{
		SIM800_QuerySim();
	}
#endif

#if __EC20__
	if (eType == EC20)
	{
		EC20_QuerySim();
	}
#endif
}

void CMD_QueryReg(void)
{
	ModemType eType;

	eType = GetModemType();
#if __M26__
	if (eType == M26)
	{
		M26_QueryReg();
	}
#endif

#if __SIM800__
	if (eType == SIM800)
	{
		SIM800_QueryReg();
	}
#endif

#if __EC20__
	if (eType == EC20)
	{
		EC20_QueryReg();
	}
#endif
	os_sleep(3000);
}


void CMD_QueryInfo(void)
{
	ModemType eType;

	eType = GetModemType();
#if __M26__
	if (eType == M26)
	{
		M26_QueryInfo();
	}
#endif

#if __SIM800__
	if (eType == SIM800)
	{
		SIM800_QueryInfo();
	}
#endif

#if __EC20__
	if (eType == EC20)
	{
		EC20_QueryInfo();
	}
#endif
}

void CMD_SetInfo(void)
{
	ModemType eType;

	eType = GetModemType();
#if __M26__
	if (eType == M26)
	{
		SendATCmd("AT+QIMUX=1",strlen("AT+QIMUX=1"),2000);		//支持多链路
		SendATCmd("AT+QIMUX?",strlen("AT+QIMUX?"),2000);		//查询是否支持多链路
		SendATCmd("AT+QIHEAD=1",strlen("AT+QIHEAD=1"),2000);	//显示IP头
	}
#endif

#if __SIM800__
	if (eType == SIM800)
	{
		SendATCmd("AT+CMGF=1",strlen("AT+CMGF=1"),1000);
		SendATCmd("AT+CSCS=\"GSM\"",strlen("AT+CSCS=\"GSM\""),1000);
		SIM800_DelReadedSms();

		SendATCmd("AT+CIPMUX=1",strlen("AT+CIPMUX=1"),2000);
		SendATCmd("AT+CIPMUX?",strlen("AT+CIPMUX?"),2000);
	}
#endif

#if __EC20__
	if (eType == EC20)
	{
		SendATCmd("ATE0",strlen("ATE0"),1000);
		//短信相关设置
		SendATCmd("AT+CMGF=1",strlen("AT+CMGF=1"),2000);
		SendATCmd("AT+CSCS=\"IRA\"",strlen("AT+CSCS=\"IRA\""),2000);
		//SendATCmd("AT+CNMI=1,2,0,1,0",strlen("AT+CNMI=1,2,0,1,0"),2000);


		//sim卡状态上报
		SendATCmd("AT+QSIMSTAT=1",strlen("AT+QSIMSTAT=1"),2000);

	}
#endif


}


const char *pNetStatusTip[] = 
{
	"NO_SIM",
	"SIM_READY",
	"REGNET",
	"REGNETOK",
	"GETIP",
	"GETIPOK",
	"CONNECT_SERVER",
	"CONNECT_SERVER_ING",
	"CONNECT_SERVER_OK",
	"CONNECT_SERVER_CONNECTED",
};

void DispNetStatus(void)
{
	INT8U i = 0;


	DBG_Print(LEVEL4,"<DispNetStatus>csq:%d ModemType:%d\r\n",
	stNet.csq,GetModemType());
	for (i = 0; i < MAX_LINK_CNT; i++)
	{
		DBG_Print(LEVEL4,"<DispNetStatus>link%d:%s\r\n",i,
		pNetStatusTip[GetNetStatus(i)]);
	}
}





int ModemInit(int bps,int iParity)
{

	ModemUsartInit( bps, iParity);
	//ModemPowerOn();

	//创建消息队列
	CreateQueue(QUEUE_NO_SEND_SMS,s_astSMSSend,sizeof(s_astSMSSend[0]),MAX_SMS_BUF_CNT);
	CreateQueue(QUEUE_NO_READ_SMS_IDX,s_asUnreadSmsIdx,sizeof(s_asUnreadSmsIdx[0]),MAX_SMS_BUF_CNT);

	//邮件服务器初始化
	//SMTP_Init(GetEmailSendUser(),GetEmailSendPsw(),smtp_send_data);

	return 0;
}

void EC20_FtpSetParam(void)
{
	unsigned int rlen = 0;
	char cmd[128] = {0};

	rlen = snprintf(cmd,sizeof(cmd),"AT+QFTPCFG=\"contextid\",2");
	SendATCmd(cmd,rlen,1000);

	rlen = snprintf(cmd,sizeof(cmd),"AT+QFTPCFG=\"account\",\"%s\",\"%s\"",
	stNet.pFtpUserName,stNet.pFtpPassword);
	SendATCmd(cmd,rlen,5000);

	rlen = snprintf(cmd,sizeof(cmd),"AT+QFTPCFG=\"filetype\",0");
	SendATCmd(cmd,rlen,5000);

	rlen = snprintf(cmd,sizeof(cmd),"AT+QFTPCFG=\"transmode\",%d",stNet.ftp_transmode);
	SendATCmd(cmd,rlen,5000);

	rlen = snprintf(cmd,sizeof(cmd),"AT+QFTPCFG=\"rsptimeout\",90");
	SendATCmd(cmd,rlen,5000);

#if 1
	stNet.is_get_ftp_ip_ok = 0;
	SendATCmd("AT+QIACT?",strlen("AT+QIACT?"),5000);
	if (stNet.is_get_ftp_ip_ok == 0)
	{
		//先去激活
		SendATCmd("AT+QIDEACT=2",strlen("AT+QIDEACT=2"),5000);
		//再激活
		SendATCmd("AT+QIACT=2",strlen("AT+QIACT=2"),5000);
	}
#endif

}

void EC20_FtpDownload(void)
{
	unsigned int rlen = 0;
	char cmd[128] = {0};

	//rlen = sprintf(cmd,"AT+QFTPSIZE=\"BC_UpgradeYC.bin\"");
	//SendATCmd(cmd,rlen,5000);

	rlen = snprintf(cmd,sizeof(cmd),"AT+QFTPGET=\"%s\",\"COM:\",%u,%u",
	stNet.pFtpFileName,GetFTPBreakPos(),1024);
	SendATCmd(cmd,rlen,5000);

	//MonitorModemResponse(5000);
}

void set_ftp_get_ip_flag(unsigned char val)
{
	stNet.is_get_ftp_ip_ok = val;
}


void EC20_FtpLogin(void)
{
	unsigned int rlen = 0;
	char cmd[128] = {0};

	set_ftp_get_ip_flag(0);

	SendATCmd("AT+QIACT?",strlen("AT+QIACT?"),5000);

	//if (stNet.is_get_ftp_ip_ok == 0)
	{
		//先去激活
		SendATCmd("AT+QIDEACT=2",strlen("AT+QIDEACT=2"),5000);
		//再激活
		SendATCmd("AT+QIACT=2",strlen("AT+QIACT=2"),5000);
	}

	rlen = snprintf(cmd,sizeof(cmd),"AT+QFTPOPEN=\"%s\",%d",stNet.pFtpServerAddr,stNet.ftp_port);

	SendATCmd(cmd,rlen,5000);
}


//设置参数
void CMD_FtpSetParam(void)
{
	ModemType eType;

	eType = GetModemType();
	if (eType == SIM800)
	{
		//SIM800_FtpSetParam(szDownloadFileName,szApn,pos);
	}
	else if (eType == EC20)
	{
		EC20_FtpSetParam();
	}
}

void CMD_FtpLogin(void)
{
	ModemType eType;

	eType = GetModemType();
	if (eType == SIM800)
	{
		//SIM800_FtpLogin(szServerAddr, usPort, szUsername, szPassword);
	}
	else if (eType == EC20)
	{
		EC20_FtpLogin();
	}

}

void CMD_QueryFtpFileSize(void)
{
	EC20_QueryFtpFileSize();
}

void CMD_FtpDownloading(void)
{
	ModemType eType;

	eType = GetModemType();
	if (eType == SIM800)
	{
		//SIM800_FtpDownloading();
	}
	else if (eType == EC20)
	{
		EC20_FtpDownload();
	}
}

void FTPDownloadProc(void)
{
	static INT32U s_ulTimeOut = 0;
	unsigned int timeout = 0;

	if ((stNet.pFtpServerAddr == 0) || (stNet.ftp_port == 0))
	{
		return ;
	}

	//没注册上网络 禁止FTP操作
	if (GetNetStatus(0) < GETIPOK)
	{
		return ;
	}
	switch (GetFTPStatus())
	{
	case FTP_STATUS_NO_START:				//未启动下载
	break;
	case FTP_STATUS_STARTING:				//启动FTP下载
	case FTP_STATUS_SET_PARAM:
	if (0)		//读配置文件
	{
		SetFTPBreakPos(0);
		CMD_FtpSetParam();
	}
	else
	{
		//SetFTPBreakPos(GetUpdateDownloadBytes());
		CMD_FtpSetParam();
	}

	SetFTPStatus(FTP_STATUS_SET_PARAM_OK);
	s_ulTimeOut = GetRunTime();

	break;
	case FTP_STATUS_SET_PARAM_OK:	

#if 1
	SendATCmd("AT+QIACT?",strlen("AT+QIACT?"),5000);
	if ((GetRunTime() - s_ulTimeOut) >= 10)
	{
		SetFTPStatus(FTP_STATUS_STARTING);
	}
#endif
		//SetFTPStatus(FTP_STATUS_LOGIN);

	break;
	case FTP_STATUS_LOGIN:					//登录动作执行完成后 就进入登录中状态 等待服务器的反馈	
	SetFTPStatus(FTP_STATUS_LOGIN_ING);
	CMD_FtpLogin();
	s_ulTimeOut = GetRunTime();
	break;
	case FTP_STATUS_LOGIN_ING:					//登录中...
	timeout = 20;

	if ((GetRunTime() - s_ulTimeOut) >= timeout)		//20秒还没登录成功 则重新登录
	{
		SetFTPStatus(FTP_STATUS_STARTING);
	}
	break;
	case FTP_STATUS_LOGIN_OK:
	{
		static unsigned int s_last_time = 0;

		if ((GetRunTime() - s_last_time) >= 1)
		{
			s_last_time = GetRunTime();

			DBG_Print(LEVEL3,"login ftp server(%s:%d) ok.\r\n",
			stNet.pFtpServerAddr,stNet.ftp_port);			
					
			CMD_QueryFtpFileSize();
		}
	}
	break;
	case FTP_STATUS_DOWNLOADING:
	{

		CMD_FtpDownloading();

	}

	break;
	case FTP_STATUS_PUTTING:
	break;
	case FTP_STATUS_DOWNLOAD_OK:	//下载完成 校验文件完整性
	break;
	case FTP_STATUS_PUT_OK:
	break;
	case FTP_STATUS_CHECK_FILE:	
	{
	}
	break;
	case FTP_STATUS_WAIT_UPDATE:

	break;
	default:break;
	}
}

void CMD_CloseSocket(INT8U idx)
{
	ModemType eType;

	eType = GetModemType();
#if __SIM800__
	if (eType == SIM800)
	{
		SIM800_CloseSocket(idx);
	}
#endif
#if __EC20__
	if (eType == EC20)
	{
		EC20_CloseSocket(idx);
	}
#endif
}

void CMD_QueryStatus(void)
{
	ModemType eType;

	eType = GetModemType();
#if __SIM800__
	if (eType == SIM800)
	{
		SIM800_QueryStatus();
	}
#endif
#if __M26__
	if (eType == M26)
	{
		M26_QueryStatus();
	}
#endif
#if __EC20__
	if (eType == EC20)
	{
		EC20_QueryStatus();
	}
#endif
}



int net_send_in_cb(unsigned char ucLinkID,void *pdat,unsigned int len)
{
	int ret = 1;
	unsigned int cnt = 0;

	//还没连上服务器 那就不要发送数据了 直接返回失败
	if (GetNetStatus(ucLinkID) < CONNECT_SERVER_OK) return 3;
	do
	{
		CMD_SendData(ucLinkID,pdat,len);

		//DBG_Print(LEVEL0,"send data status:%u\r\n",GetDataSendStatus(ucLinkID));
		while (GetDataSendStatus(ucLinkID) == SEND_STATUS_ING)
		{
			MonitorModemResponse(100);
			cnt++;
			if (cnt >= 45)
			{
				ret = 2;
				break;
			}
		}
		if (GetDataSendStatus(ucLinkID) == SEND_STATUS_OK)
		{
			ret = 0;
			break;
		}
		else if (GetDataSendStatus(ucLinkID) == SEND_STATUS_FALSE)
		{
			ret = 1;
			break;
		}
	}while (0);

	return ret;
}


int TCPLinkProc(INT8U idx)
{
	unsigned int timeouts = 0;
	NetStatus eStatus = NO_SIM;

	eStatus = GetNetStatus(idx);

	//服务器IP端口 发生变化 立即响应
	if (GetServerChangeFlag(idx))
	{
		SetServerChangeFlag(idx,0);
		if (GetNetStatus(idx) >= GETIPOK)
		{
			SetNetStatus(idx,CONNECT_SERVER);
			CMD_CloseSocket(idx);
			//关闭链路后 延时等待
			//os_sleep(2000);
		}
	}

	//在获取外网IP之前的链路 只由第0路链接来维护
	if (idx && (eStatus <= GETIP))
	{
		return 1;
	}

	switch (eStatus)
	{
	case NO_SIM:			//没有SIM卡的情况下 查询SIM卡状态
	{
		CMD_QueryModemType();
		CMD_QuerySim();
	}
	break;
	case SIM_READY:			//SIM卡已经检测到了 那就用指令查询网络注册情况
	case REGNET:
	CMD_QueryReg();
	break;
	case REGNETOK:			//已经注册上了网络 跟着就用指令从基站获取IP
	case GETIP:
	{
		static unsigned int s_last_time = 0;
		timeouts = 20;

		if ((GetRunTime() - s_last_time) >= 1)
		{
			s_last_time = GetRunTime();

			CMD_QueryInfo();
			CMD_SetInfo();
			if ((GetRunTime() - GetNetLastTime(idx)) > timeouts)
			{
				//获取外网IP指令
				CMD_GetIP(idx);
				SetNetLastTime(idx,GetRunTime());
			}
			//查询外网IP指令
			CMD_QueryIP(idx);
		}
	}
	break;
	case GETIPOK:			//已经从基站获取到了外网IP 发送连接服务器指令
	case CONNECT_SERVER:
	if (SPGetServerPort(idx) && SPGetServerAddr(idx) && strlen(SPGetServerAddr(idx)))
	{
		SetNetStatus(idx,CONNECT_SERVER_ING);
		CMD_CloseSocket(idx);
		CMD_Connect(idx,SPGetServerAddr(idx),SPGetServerPort(idx),ServerLinkIsTcp(idx));
		SetNetLastTime(idx,GetRunTime());
	}
	break;
	case CONNECT_SERVER_ING:
	{
		SetDataSendStatus(idx,SEND_STATUS_START_SEND);
		timeouts = 25;

		if ((GetRunTime() - GetNetLastTime(idx)) >= timeouts)
		{
			SetNetStatus(idx,CONNECT_SERVER);
		}
	}
	break;
	case CONNECT_SERVER_OK:
	{
		if (stNet.pConnectOk[idx]) (stNet.pConnectOk[idx])();
		SetNetStatus(idx,CONNECT_SERVER_CONNECTED);
	}
	break;
	case CONNECT_SERVER_CONNECTED:
	{
		if (stNet.pUserNetSendFunc[idx]) stNet.pUserNetSendFunc[idx]();

		if (stNet.start_user_send_flag[idx])
		{
			stNet.send_result[idx] = (char)net_send_in_cb(idx,stNet.will_send_data_ptr[idx],stNet.will_send_len[idx]);
			stNet.start_user_send_flag[idx] = 0;		//用户发送程序执行完成
		}
	}
	break;
	default:break;
	}

	return 0;
}

//错误处理
void ModemErrorProc(void)
{
	INT8U i = 0;

	//100秒模块都没有应答 则重启模块
	if ((GetRunTime() - GetLastResponseTime()) > 100)
	{
		for (i = 0; i < MAX_LINK_CNT; i++)
		{
			SetNetStatus(i,NO_SIM);
		}
		//ModemRestart();
		SetLastResponseTime(GetRunTime());
	}
}

void NetLinkProc(void)
{
	unsigned char i = 0;
	static INT32U s_ulQueryStatusInv = 0;

	MonitorModemResponse(100);

	for (i = 0; i < MAX_LINK_CNT; i++)
	{
		TCPLinkProc(i);
	}

	//5秒查询一次状态
	if ((GetRunTime() - s_ulQueryStatusInv) >= 5)
	{
		CMD_QueryStatus();
		s_ulQueryStatusInv = GetRunTime();
		DispNetStatus();
	}

	SMSProc();

	FTPDownloadProc();

	//邮件服务器
	//SMTP_Proc();

	ModemErrorProc();
}



void reg_net_data_arrive_callback(unsigned char ucLinkID,void (*pf)(void *pdat,unsigned int len))
{
	if (ucLinkID >= MAX_LINK_CNT) return ;

	stNet.pNetDataArriveFunc[ucLinkID] = pf;
}

void reg_server_connected_callback(unsigned char idx,void (*pf)(void))
{
	if (idx >= MAX_LINK_CNT) return ;

	stNet.pUserNetSendFunc[idx] = pf;
}



void reg_net_server_disconnect_callback(unsigned char linkid,void (*pf)(void))
{
	if (linkid >= MAX_LINK_CNT) return ;
	stNet.pDisConnect[linkid] = pf;
}

void reg_net_server_connect_ok_callback(unsigned char linkid,void (*pf)(void))
{
	if (linkid >= MAX_LINK_CNT) return ;
	stNet.pConnectOk[linkid] = pf;
}



