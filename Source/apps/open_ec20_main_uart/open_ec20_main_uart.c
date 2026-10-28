#include "open_ec20_main_uart.h"



int open_ec20_net_send_in_cb(unsigned char ucLinkID,void *pdat,unsigned int len)
{


	return 1;
}


void open_ec20_msg_handler(unsigned int msgid,void * content,unsigned int contentlen)
{
	unsigned char ch = 0;
	unsigned char *ptr = (unsigned char *)content;

	switch (msgid)
	{
	case TCCP_EC20_TO_MCU_POWER_ON:

	DBG_Print(LEVEL2,"%s","[DRV]open ec20 modem.\r\n");
	break;

	//连接服务器成功
	case TCCP_EC20_TO_MCU_CONNECT_SVR_OK:
	{
		connect_server_ok_hook pConnectOk = 0;
		ch = ptr[0];
		pConnectOk = get_connect_server_ok_hook_ptr(ch);
		if (pConnectOk)
		{
			pConnectOk();
		}
		
		DBG_Print(LEVEL2,"[DRV]server %d connect ok.\r\n",ch);
	}
	break;

	//网络数据发送结果汇报
	case TCCP_EC20_TO_MCU_NET_DATA_SEND_RESULT:
	ch = ptr[0];

	if (ptr[1])
	{
		SetDataSendStatus(ch,SEND_STATUS_OK);
		DBG_Print(LEVEL4,"[DRV](%d)net data send ok.\r\n",ch);
	}
	else
	{
		SetDataSendStatus(ch,SEND_STATUS_FALSE);
		DBG_Print(LEVEL4,"[DRV](%d)net data send false.\r\n",ch);
	}

	break;

	//服务器数据到达
	case TCCP_EC20_TO_MCU_SVR_DATA_ARRIVE:
	{
		net_data_arrive_callback pNetDataArrive = 0;
		
		ch = ptr[0];
		pNetDataArrive = get_net_data_arrive_callback_ptr(ch);
		if (pNetDataArrive)
		{
			pNetDataArrive(ptr + 1,contentlen - 1);
		}
	}

	break;
	default:break;
	}
}

//监控EC20模块的响应
void MonitorOpenEc20Response(unsigned int uiTimeout)
{

	
}



