#include "EC20.h"

void EC20_QueryVer(void)
{
	SendATCmd("AT+CGMR",strlen("AT+CGMR"),5000);
}


void EC20_QuerySim(void)
{
	SendATCmd("AT+CPIN?",strlen("AT+CPIN?"),3000);
}

void EC20_QueryReg(void)
{
	SendATCmd("AT+CREG?",strlen("AT+CREG?"),1000);

	//ICCID
	SendATCmd("AT+QCCID",strlen("AT+QCCID"),3000);
	
}


void EC20_QueryInfo(void)
{
    SendATCmd("AT+CSQ",strlen("AT+CSQ"),3000);
    //ICCID
	SendATCmd("AT+QCCID",strlen("AT+QCCID"),3000);

	SendATCmd("AT+GSN",strlen("AT+GSN"),3000);
	SendATCmd("AT+CGSN",strlen("AT+CGSN"),3000);

	SendATCmd("AT+CGMI",strlen("AT+CGMI"),3000);
	SendATCmd("AT+GMM",strlen("AT+GMM"),3000);
	SendATCmd("AT+CGMM",strlen("AT+CGMM"),3000);
	
	SendATCmd("AT+GMR",strlen("AT+GMR"),3000);

	SendATCmd("AT+GMI",strlen("AT+GMI"),3000);
}


void EC20_GetIP(INT8U ucLinkIdx,void *szApn,void *szApnUsername,void *szApnPassword)
{
	char szTemp[64] = {0};
	unsigned char rlen = 0;

	//SendATCmd("AT+CIPSHUT",strlen("AT+CIPSHUT"),1000);

	rlen = snprintf(szTemp,sizeof(szTemp),"AT+QICSGP=1,1,\"%s\",\"%s\",\"%s\",%d",
	szApn ? (char *)szApn : "",
	szApnUsername ? (char *)szApnUsername : "",
	szApnPassword ? (char *)szApnPassword : "",
	3);

	SendATCmd(szTemp,rlen,1000);

	//先去激活
	SendATCmd("AT+QIDEACT=1",strlen("AT+QIDEACT=1"),1000);
	//再激活
	SendATCmd("AT+QIACT=1",strlen("AT+QIACT=1"),1000);
}

void EC20_QueryIP(INT8U ucLinkIdx)
{
	ucLinkIdx = ucLinkIdx;
	SendATCmd("AT+QIACT?",strlen("AT+QIACT?"),1000);
}

void EC20_Connect(INT8U ucLinkIdx,void *szIP,unsigned short usPort,INT8U ucIsTcp)
{
	char szTemp[64] = {0};
	unsigned char rlen = 0;

	if ((szIP == 0) || (usPort == 0))
	{
		return ;
	}

	rlen = snprintf(szTemp,sizeof(szTemp),"AT+QIOPEN=1,%d,\"%s\",\"%s\",%d,0,1",
	ucLinkIdx,(ucIsTcp ? "TCP" : "UDP"),(char *)szIP,usPort);

	SendATCmd(szTemp,rlen,2000);
}

void EC20_CloseSocket(INT8U idx)
{
	char szTemp[64] = {0};
	unsigned char rlen = 0;

	rlen = snprintf(szTemp,sizeof(szTemp),"AT+QICLOSE=%d",idx);
	SendATCmd(szTemp,rlen,2000);	
}

void EC20_QueryStatus(void)
{
	SendATCmd("AT+CREG?",strlen("AT+CREG?"),1000);

	SendATCmd("AT+CSQ",strlen("AT+CSQ"),1000);
	SendATCmd("AT+QISTATE",strlen("AT+QISTATE"),1000);


	//SendATCmd("AT+CIPSTATUS",strlen("AT+CIPSTATUS"),1000);
}

void EC20_QuerySendBytes(INT8U idx)
{
	unsigned int rlen = 0;
	char cmd[32] = {0};

	rlen = snprintf(cmd,sizeof(cmd), "AT+QISEND=%d,0", idx);

	SendATCmd(cmd,rlen,2000);
}

void EC20_SendData(INT8U idx,void *pdat,INT16U len)
{
	char cmd[32] = {0};

	if ((pdat == 0) || (len == 0)) return ;

	/* 向平台发送数据 */
	snprintf(cmd,sizeof(cmd), "AT+QISEND=%u,%u", idx,len);
	SendATCmdEx(cmd,pdat,len,3000);

	EC20_QuerySendBytes(idx);
}

void EC20_ReadData(INT8U idx)
{
	unsigned int rlen = 0;
	char cmd[16] = {0};

	rlen = snprintf(cmd,sizeof(cmd), "AT+QIRD=%d,0", idx);

	SendATCmd(cmd,rlen,1000);
}


void EC20_QueryFtpFileSize(void)
{
	int rlen = 0;
	char temp[64] = {0};

	rlen = snprintf(temp,sizeof(temp),"AT+QFTPSIZE=\"%s\"",stNet.pFtpFileName);

	SendATCmd(temp,rlen,1000);
}


void EC20_AnalyzeModemResponse(void *buf,unsigned int len)
{
	//INT8U ucLinkIdx = 0;
	//INT32U ulDatLen = 0;
	unsigned int i = 0;
	unsigned int templen = 0;
	unsigned int stemplen = 0;
	char *ptr = (char *)buf;
	char *pTemp = 0;
	char *pTemp1 = 0;
	char *pTemp2 = 0;
	char *pTemp3 = 0;
	//char *pTemp4 = 0;

	char aucTemp[32] = {0};

	if (ptr == 0) return ;

	//+QIURC: "pdpdeact",1

	//RDY 标识模块重启了
	if (strstr(ptr,"RDY"))
	{
		for (i = 0; i < MAX_LINK_CNT; i++)
		{
			SetNetStatus(i,NO_SIM);
		}
		if (GetFTPStatus() >= FTP_STATUS_STARTING) SetFTPStatus(FTP_STATUS_STARTING);
	}

	//查询SIM卡是否插入
	if (strstr(ptr,"+CPIN: READY"))
	{
		for (i = 0; i < MAX_LINK_CNT; i++)
		{
			if (GetNetStatus(i) < SIM_READY) SetNetStatus(i,SIM_READY);
		}
	}
	//模块主动上报SIM卡 是否插入 移除
	pTemp = strstr(ptr,"+QSIMSTAT");
	if (pTemp)
	{
		pTemp1 = strstr(pTemp1,",");
		if (pTemp1)
		{
			if (atoi(pTemp + 1))
			{
				for (i = 0; i < MAX_LINK_CNT; i++)
				{
					if (GetNetStatus(i) < SIM_READY) SetNetStatus(i,SIM_READY);
				}
			}
			else
			{
				for (i = 0; i < MAX_LINK_CNT; i++)
				{
					SetNetStatus(i,NO_SIM);
				}
			}
		}
	}

	//1本地网络 5漫游网络
	if ((pTemp = strstr(ptr,"+CREG:")) != 0)
	{
		if ((*(pTemp + 9) == '1') || (*(pTemp + 9) == '5'))
		{
			for (i = 0; i < MAX_LINK_CNT; i++)
			{
				if (GetNetStatus(i) < REGNETOK) SetNetStatus(i,REGNETOK);
			}
		}
		else
		{
			for (i = 0; i < MAX_LINK_CNT; i++)
			{
				if (GetNetStatus(i) >= REGNETOK) SetNetStatus(i,REGNET);
			}
		}
	}

	//信号强度
	if ((pTemp = strstr(ptr,"+CSQ: ")) != 0)
	{
		SetCsq(atoi(pTemp + strlen("+CSQ: ")));
	}
	//ICCID
	if ((pTemp = strstr(ptr,"+QCCID:")) != 0)
	{
		GetSubString(pTemp,"+QCCID: ","\r\n",aucTemp,sizeof(aucTemp) - 1);
		SetICCID(aucTemp);
		DBG_Print(LEVEL4,"<EC20>ICCID:%s\r\n",aucTemp);
	}


	//+QIACT: 1,1,1,"10.15.176.162"
	//+QIACT: 2,1,1,"10.146.40.231"
	//+QIACT: 1作为TCP协议链路  +QIACT: 2作为FTP协议链路
	if (strstr(ptr,"+QIACT: 1"))
	{
		for (i = 0; i < MAX_LINK_CNT;i++)
		{
			if (GetNetStatus(i) < GETIPOK) SetNetStatus(i,GETIPOK);
		}
	}
	if (strstr(ptr,"+QIACT: 2"))
	{
		set_ftp_get_ip_flag(1);

		if (GetFTPStatus() == FTP_STATUS_SET_PARAM_OK) SetFTPStatus(FTP_STATUS_LOGIN);
		
	}

	//监测连接服务器是否成功
	//+QIOPEN: 0,0   +QIOPEN: 1,0
	for (i = 0; i < MAX_LINK_CNT; i++)
	{
		snprintf(aucTemp,sizeof(aucTemp),"+QIOPEN: %d,0",i);
		
		if (strstr(ptr,aucTemp))
		{
			SetNetStatus(i,CONNECT_SERVER_OK);
		}
	}

	//+QIURC: "closed",0   被远程服务器断开
	for (i = 0; i < MAX_LINK_CNT; i++)
	{
		snprintf(aucTemp,sizeof(aucTemp),"+QIURC: \"closed\",%d",i);
		
		if (strstr(ptr,aucTemp))
		{
			if (GetNetStatus(i) >= CONNECT_SERVER_OK)
			{
				disconnect_server_hook pDisconnect = get_disconnect_server_hook_ptr(i);
				SetNetStatus(i,CONNECT_SERVER);

				if (pDisconnect)
				{
					pDisconnect();
				}
			}
		}
	}
	//状态
	//+QISTATE: 0,"TCP","101.200.38.40",7730,10254,4,1,0,1,"uart1"
	pTemp1 = ptr;
	while (1)
	{
		pTemp = strstr(pTemp1,"+QISTATE: ");
		if (pTemp == 0)
		{
			break;
		}

		templen = atoi(pTemp+strlen("+QISTATE: "));
		DBG_Print(LEVEL3,"connectID:%d ",templen);

		for (i = 0; i < 5; i++)
		{
			pTemp2 = strstr(pTemp,",");
			if (pTemp2 == 0)
			{
				break;
			}
			pTemp = pTemp2 + 1;
		}
		/**
		0  “Initial”: connection has not been established
		1  “Opening”: client is connecting or server is trying to listen
		2  “Connected”: client/incoming connection has been established
		3  “Listening”: server is listening
		4  “Closing”: connection is closing
		*/
		DBG_Print(LEVEL3,"socket status:%d\r\n",atoi(pTemp2+1));
		//从模块查询出来的状态与程序中的状态不符合 需要调整程序中的状态
		if ((atoi(pTemp2+1) != 2) && (GetNetStatus(templen) >= CONNECT_SERVER_OK))
		{
			//返回上一个状态 重新连接服务器
			disconnect_server_hook pDisconnect = get_disconnect_server_hook_ptr(templen);
			SetNetStatus(templen,CONNECT_SERVER);

			if (pDisconnect)
			{
				pDisconnect();
			}
		}
		
		pTemp1 = pTemp + strlen("+QISTATE: ");
	}

#if 1
	//+QISEND:<total_send_length>,<ackedbytes>,<unackedbytes>
	//+QISEND: 475098,474685,413
	pTemp = strstr(ptr,"+QISEND: ");
	if (pTemp)
	{
		pTemp1 = strstr(pTemp,",");
		if (pTemp1)
		{
			static unsigned int s_send_ack_cnt = 0;

			//到达服务器的字节总数
			templen = atoi(pTemp1 + 1);

			if ((templen >= get_total_arrive_server_data_len()) && 
			((templen - get_total_arrive_server_data_len()) == get_cur_send_data_len())
			)
			{
				SetDataSendStatus(get_cur_send_data_link_id(),SEND_STATUS_OK);
				s_send_ack_cnt = 0;
			}
			else
			{
				s_send_ack_cnt++;
				if (s_send_ack_cnt >= 50)
				{
					s_send_ack_cnt = 0;
					SetDataSendStatus(get_cur_send_data_link_id(),SEND_STATUS_FALSE);
				}
				else
				{
					//查询到达服务器字节个数
					stemplen = snprintf(aucTemp,sizeof(aucTemp), "AT+QISEND=%d,0\r", get_cur_send_data_link_id());

					DBG_Print(LEVEL_GPRS,"%s\r\n",(char *)aucTemp);
					DBG_Print(LEVEL4,"%s\r\n",(char *)aucTemp);					
					WriteModemUsart(aucTemp,stemplen);
				}
			}
			
			//更新送达服务器的字节数
			set_total_arrive_server_data_len(templen);
		}
	}
#endif

	if (strstr(ptr,"SEND OK"))
	{
		//SetDataSendStatus(get_cur_send_data_link_id(),SEND_STATUS_OK);
	}
	//SEND FAIL
	if (strstr(ptr,"SEND FAIL"))
	{
		SetDataSendStatus(get_cur_send_data_link_id(),SEND_STATUS_FALSE);
	}

	//ERROR
	if (strstr(ptr,"ERROR"))
	{
		if (GetNetStatus(get_cur_send_data_link_id()) >= CONNECT_SERVER_OK)
		{
			//SetNetStatus(get_cur_send_data_link_id(),CONNECT_SERVER);
		}
	}

	//+QIURC: "recv",0		//数据到达 需要给模块发送读取指令
	pTemp = strstr(ptr,"+QIURC: \"recv\",");
	if (pTemp)
	{
		unsigned char idx = atoi(pTemp + 15);
		unsigned int rlen = 0;
		unsigned char *pdata = 0;
		net_data_arrive_callback pf = 0;

		pTemp1 = strstr(pTemp + 15,",");
		if (pTemp1)
		{
			rlen = atoi(pTemp1 + 1);
			pTemp2 = strstr(pTemp1+1,"\r\n");
			if (pTemp2 && ((pTemp2 - pTemp1) < 5))
			{
				pdata = (unsigned char *)pTemp2 + 2;
				pf = get_net_data_arrive_callback_ptr(idx);
				if (pf)
				{
					pf(pdata,rlen);
				}	
			}
		}
	}
#if 1
	if (GetFTPStatus() >= FTP_STATUS_STARTING)
	{
		//+QFTPOPEN: 0,0
		if (strstr(ptr,"+QFTPOPEN: 0,0"))
		{
			SetFTPStatus(FTP_STATUS_LOGIN_OK);
		}

		pTemp = (char *)ReverseFindSubStr(ptr,len,"+QFTPGET: 0,",strlen("+QFTPGET: 0,"));
		if (pTemp)
		{
			ftp_data_arrive_callback parrive = get_ftp_data_arrive_callback_ptr();
		
			templen = atoi(pTemp + strlen("+QFTPGET: 0,"));
			if (templen)
			{
				pTemp1 = strstr(ptr,"CONNECT");
				if (pTemp1)
				{
					//CONNECT\r\n后面跟着数据 
					if (parrive) parrive(pTemp1 + 9,templen);
					SetFTPBreakPos(GetFTPBreakPos() + templen);
				}
			}
		}
		if (strstr(ptr,"+CME ERROR: 603") 
		|| strstr(ptr,"+CME ERROR: 627")
		|| strstr(ptr,"+CME ERROR: 625"))
		{
			SetFTPStatus(FTP_STATUS_STARTING);
		}
		//+QFTPSIZE: 627,550
		pTemp = strstr(ptr,"+QFTPSIZE: ");
		if (pTemp)
		{
			if (atoi(pTemp + 11) == 0)
			{
				//查到了文件大小才允许进行下一步
				SetFTPStatus(FTP_STATUS_DOWNLOADING);
			}
			else
			{
				//文件大小查询失败 说明服务器上没有该文件 停止下载程序
				SetFTPStatus(FTP_STATUS_NO_START);
				DBG_Print(LEVEL0,"FTP Download false.FTP Server have no this file.\r\n");
			}
		}

		if (strstr(ptr,"+QFTPGET: 0,0"))
		{
			ftp_download_finish_callback pdf = get_ftp_download_finish_callback_ptr();
		
			SetFTPStatus(FTP_STATUS_DOWNLOAD_OK);
			SetFTPBreakPos(0);
			if (pdf)
			{
				pdf();
			}
		}

	}
#endif
	pTemp = strstr(ptr,"+CMT:");
	if (pTemp)
	{

		DBG_Print(0,"短信到达\r\n");
	}


#if 1
	pTemp2 = ptr;
	do
	{
		pTemp = strstr(pTemp2,"+CMGL: ");
		if (pTemp)
		{
			sms_arrive_callback pfsms = get_sms_arrive_callback_ptr();
			sms_arrive_callback drv_sms_ptr = get_sms_arrive_callback_drv_ptr();
			
			pTemp1 = GetSubString(pTemp,"\"","\"",aucTemp,sizeof(aucTemp));
			if (pTemp1 == 0)
			{
				break;
			}
			pTemp1 += (strlen(aucTemp) + 2);
			pTemp3 = GetSubString(pTemp1,"\"","\"",aucTemp,sizeof(aucTemp));
			if (pTemp3 == 0)
			{
				break;
			}

			pTemp1 = strstr(pTemp3,"\r\n");
			if (pTemp1 == 0)
			{
				break;
			}
			
			pTemp3 = strstr(pTemp1+1,"\r\n");
			if (pTemp3 == 0)
			{
				break;
			}
		
			if (drv_sms_ptr)
			{
				*pTemp3 = 0;
				//DBG_Print(0,"号码:%s 内容:%s\r\n",aucTemp,pTemp1+2);
				drv_sms_ptr(aucTemp,pTemp1+2,pTemp3 - pTemp1);
			}

			if (pfsms)
			{
				*pTemp3 = 0;
				//DBG_Print(0,"号码:%s 内容:%s\r\n",aucTemp,pTemp1+2);
				pfsms(aucTemp,pTemp1+2,pTemp3 - pTemp1);
			}
			
			set_del_sms_flag(1);	//允许删除短信

			pTemp2 = pTemp3 + 2;
		}
	}while (pTemp);
#endif
	//短信发送成功
	if (strstr(ptr,"+CMGS:"))
	{
		SendSMSOK();
	}

	//NO CARRIER
	if (strstr(ptr,"NO CARRIER"))
	{
		//对方已挂断 或 无人接听
	}
}














