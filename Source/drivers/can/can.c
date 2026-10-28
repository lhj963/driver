
/*****************************************
  CAN1 Remap
*****************************************/
#include "CAN.h"
#include <stdio.h>
#include<string.h>


CanRxMsg RxMessage1;
CanRxMsg RxMessage2;


CanMsgArriveCallBack pCan1MsgArrive = 0;
CanMsgArriveCallBack pCan2MsgArrive = 0;
CanMsgArriveCallBack pDrvCan1MsgArrive = 0;
CanMsgArriveCallBack pDrvCan2MsgArrive = 0;

unsigned long can1_total_msg_cnt = 0;
unsigned long can2_total_msg_cnt = 0;


unsigned long can1_recv_total_msg_cnt(void)
{
	return can1_total_msg_cnt;
}

unsigned long can2_recv_total_msg_cnt(void)
{
	return can2_total_msg_cnt;
}

unsigned long can3_recv_total_msg_cnt(void)
{
	return 0;
}



int install_can1_msg_arrive_hook(void (*pf)(CanRxMsg *))
{
	pCan1MsgArrive = pf;
	return 0;
}

int install_can2_msg_arrive_hook(void (*pf)(CanRxMsg *))
{
	pCan2MsgArrive = pf;
	return 0;
}

int install_can3_msg_arrive_hook(void (*pf)(CanRxMsg *))
{
	return 0;
}

int drv_install_can1_msg_arrive_hook(void (*pf)(CanRxMsg *))
{
	pDrvCan1MsgArrive = pf;
	return 0;
}

int drv_install_can2_msg_arrive_hook(void (*pf)(CanRxMsg *))
{
	pDrvCan2MsgArrive = pf;
	return 0;
}

int drv_install_can3_msg_arrive_hook(void (*pf)(CanRxMsg *))
{
	return 0;
}



char IsHaveCan1Data(void)
{
	return 0;
}

char IsHaveCan2Data(void)
{
	return 0;
}

//﹞米???米0㊣赤那??芍豕?3谷1| ﹞?0?芍豕?那∫～邦
int ReadCan1Msg(CanRxMsg *pMsg)
{
	return 0;
}

//﹞米???米0㊣赤那??芍豕?3谷1| ﹞?0?芍豕?那∫～邦
int ReadCan2Msg(CanRxMsg *pMsg)
{
	return 0;
}

//?D??﹞t??o‘那y
//void CAN1_RX0_IRQHandler(void)
void USB_LP_CAN1_RX0_IRQHandler(void)
{	
	if( CAN_GetITStatus(CAN1, CAN_IT_FMP0) == SET )
	{
		can1_total_msg_cnt++;

		CAN_Receive(CAN1, CAN_FIFO0, &RxMessage1);

		//?∩DD?y?‘hook
		if (pDrvCan1MsgArrive)
		{
			pDrvCan1MsgArrive(&RxMessage1);
		}

		//?∩DDapp hook
		if (pCan1MsgArrive)
		{
			pCan1MsgArrive(&RxMessage1);
		}

		CAN_ClearITPendingBit(CAN1,CAN_IT_FMP0);
	}
}

//?D??﹞t??o‘那y			    
void CAN2_RX1_IRQHandler(void)
{
	if( CAN_GetITStatus(CAN2, CAN_IT_FMP1) == SET )
	{
		can2_total_msg_cnt++;
		//?∩DD車??∫hooko‘那y
		CAN_Receive(CAN2, CAN_FIFO1, &RxMessage2);
		//?∩DD?y?‘ hook
		if (pDrvCan2MsgArrive)
		{
			pDrvCan2MsgArrive(&RxMessage2);
		}
		//?∩DDapp hook
		if (pCan2MsgArrive)
		{
			pCan2MsgArrive(&RxMessage2);
		}
		CAN_ClearITPendingBit(CAN2,CAN_IT_FMP1);
	}
}



//CAN13?那??‘
//tsjw:??D?赤?2?足???那㊣??米ㄓ?a.﹞??∫:1~3; CAN_SJW_1tq	 CAN_SJW_2tq CAN_SJW_3tq CAN_SJW_4tq
//tbs2:那㊣????2米?那㊣??米ㄓ?a.﹞??∫:1~8;
//tbs1:那㊣????1米?那㊣??米ㄓ?a.﹞??∫:1~16;	  CAN_BS1_1tq ~CAN_BS1_16tq
//brp :2“足??那﹞??米?¯.﹞??∫:1~1024;(那米?那辰a?車1,辰2?赤那?1~1024) tq=(brp)*tpclk1
//℅⊿辰a辰?谷?2?那y豕?o?辰?????2??邦谷豕?a0,﹞??辰?芍?辰.
//2“足??那=Fpclk1/((tsjw+tbs1+tbs2)*brp);
//Fpclk1米?那㊣?車?迆3?那??‘米?那㊣o辰谷豕???a36M,豕?1?谷豕??CAN1_Config(1,8,7,5);
//?辰2“足??那?a:36M/((1+6+5)*6)=500Kbps
//﹞米???米:0,3?那??‘OK;
//    ????,3?那??‘那∫～邦;
void CAN1_Config(uint8_t sjw,uint8_t bs1,uint8_t bs2,uint16_t pres)
{
    GPIO_InitTypeDef GPIO_InitStructure;
    CAN_InitTypeDef        CAN_InitStructure;
    CAN_FilterInitTypeDef  CAN_FilterInitStructure;
#if !__USE_UCOS__
	NVIC_InitTypeDef NVIC_InitStructure;
#endif

    /* ∩辰?aGPIO那㊣?車?⊿AFIO那㊣?車㏒?CAN那㊣?車 */
#if REMAP1_CAN1
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB | RCC_APB2Periph_AFIO, ENABLE);
#elif REMAP2_CAN1
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOD | RCC_APB2Periph_AFIO, ENABLE);
#else
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_AFIO, ENABLE);
#endif	
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_CAN1, ENABLE);

#if REMAP1_CAN1
	/* CAN1 RX PB8 */
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_8;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOB, &GPIO_InitStructure);
	/* CAN1 TX PB9 */
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_9;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOB, &GPIO_InitStructure);
	GPIO_PinRemapConfig(GPIO_Remap1_CAN1,ENABLE);  // CAN1 remap
#elif REMAP2_CAN1
	/* CAN1 RX PD0 */
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOD, &GPIO_InitStructure);
	/* CAN1 TX PD1 */
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_1;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOD, &GPIO_InitStructure);
	GPIO_PinRemapConfig(GPIO_Remap2_CAN1,ENABLE);  // CAN1 remap
#else
	/* CAN1 RX PA11 */
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_11;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOA, &GPIO_InitStructure);
	/* CAN1 TX PA12 */
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_12;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOA, &GPIO_InitStructure);
#endif

#if __USE_UCOS__
	BSP_IntVectSet(BSP_INT_ID_CAN1_RX0, CAN1_RX0_IRQHandler);
	BSP_IntEn(BSP_INT_ID_CAN1_RX0);
#else
    /* CAN1 Enabling interrupt */									  
    NVIC_InitStructure.NVIC_IRQChannel=USB_LP_CAN1_RX0_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = CAN1_NVIC_PREE_PRIO;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = CAN1_NVIC_SUB_PRIO;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);									
#endif

    /* CAN  BaudRate = RCC_APB1PeriphClock/(CAN_SJW+CAN_BS1+CAN_BS2)/CAN_Prescaler */
	CAN_DeInit(CAN1);
    CAN_StructInit(&CAN_InitStructure);   

	CAN_InitStructure.CAN_TTCM=DISABLE;				//﹞?那㊣??∩ㄓ﹞⊿赤“D??㏒那?  //
	CAN_InitStructure.CAN_ABOM=ENABLE;				//豕赤?t℅??‘角???1邦角赤	 //?a??℅??‘角??????∩
	CAN_InitStructure.CAN_AWUM=DISABLE;				//?‘???㏒那?赤“1y豕赤?t??D?(??3yCAN->MCR米?SLEEP??)//
	CAN_InitStructure.CAN_NART=DISABLE;				//2????1㊣“??℅??‘∩??赤 //
	CAN_InitStructure.CAN_RFLM=DISABLE;				//㊣“??2????“,D?米??2???谷米? // 
	CAN_InitStructure.CAN_TXFP=DISABLE;				//車??豕??車谷㊣“??㊣那那?﹞????“ //
    CAN_InitStructure.CAN_Mode=CAN_Mode_Normal;   
	//CAN_InitStructure.CAN_Mode=CAN_Mode_LoopBack;
    CAN_InitStructure.CAN_SJW=sjw;
    CAN_InitStructure.CAN_BS1=bs1;  
    CAN_InitStructure.CAN_BS2=bs2;	
    CAN_InitStructure.CAN_Prescaler=pres;

    CAN_Init(CAN1,&CAN_InitStructure);	// CAN1											

    CAN_FilterInitStructure.CAN_FilterNumber=0;	 
    CAN_FilterInitStructure.CAN_FilterMode=CAN_FilterMode_IdMask;	 // ㊣那那?﹞??芍㊣????㏒那?
    CAN_FilterInitStructure.CAN_FilterScale=CAN_FilterScale_32bit;   // 32??1y???¯
    CAN_FilterInitStructure.CAN_FilterIdHigh=0x0000;			// 1y???¯㊣那那?﹞?
    CAN_FilterInitStructure.CAN_FilterIdLow=0x0000;				
    CAN_FilterInitStructure.CAN_FilterMaskIdHigh=0x0000;		// 1y???¯?芍㊣?㊣那那?﹞?
    CAN_FilterInitStructure.CAN_FilterMaskIdLow=0x0000;
    CAN_FilterInitStructure.CAN_FilterFIFOAssignment=CAN_Filter_FIFO0;	 // FIFO0???辰1y???¯
    CAN_FilterInitStructure.CAN_FilterActivation=ENABLE;
    CAN_FilterInit(&CAN_FilterInitStructure);

    CAN_ITConfig(CAN1,CAN_IT_FMP0,ENABLE);  // CAN1
}

/*****************************************
  CAN2 Config
  FIFO_1	  
  ﹞米??㏒o
*****************************************/
void CAN2_Config(uint8_t sjw,uint8_t bs1,uint8_t bs2,uint16_t pres)
{
    GPIO_InitTypeDef GPIO_InitStructure;
    CAN_InitTypeDef        CAN_InitStructure;
    CAN_FilterInitTypeDef  CAN_FilterInitStructure;
#if !__USE_UCOS__
	NVIC_InitTypeDef NVIC_InitStructure;
#endif

    /* ∩辰?aGPIO那㊣?車?⊿AFIO那㊣?車㏒?CAN那㊣?車 */
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB | RCC_APB2Periph_AFIO, ENABLE);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_CAN2, ENABLE);
#if REMAP_CAN2
	/* CAN2 RX PB5 */
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_5;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOB, &GPIO_InitStructure);
	/* CAN2 TX PB6 */
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_6;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOB, &GPIO_InitStructure);
	GPIO_PinRemapConfig(GPIO_Remap_CAN2,ENABLE);  // CAN2 remap
#else
	/* CAN2 RX PB12 */
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_12;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOB, &GPIO_InitStructure);
	/* CAN2 TX PB13 */
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_13;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOB, &GPIO_InitStructure);								
#endif

#if __USE_UCOS__
	BSP_IntVectSet(BSP_INT_ID_CAN2_RX1, CAN2_RX1_IRQHandler);
	BSP_IntEn(BSP_INT_ID_CAN2_RX1);
#else
	/* CAN2 Enabling interrupt */								 	  
    NVIC_InitStructure.NVIC_IRQChannel=CAN2_RX1_IRQn;	// FIFO_1
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = CAN2_NVIC_PREE_PRIO;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = CAN2_NVIC_SUB_PRIO;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);								  	
#endif
    /* CAN  BaudRate = RCC_APB1PeriphClock/(CAN_SJW+CAN_BS1+CAN_BS2)/CAN_Prescaler */
	CAN_DeInit(CAN2);
    CAN_StructInit(&CAN_InitStructure);   

	CAN_InitStructure.CAN_TTCM=DISABLE;				//﹞?那㊣??∩ㄓ﹞⊿赤“D??㏒那?  //
	CAN_InitStructure.CAN_ABOM=ENABLE;				//豕赤?t℅??‘角???1邦角赤	 //?a??℅??‘角??????∩
	CAN_InitStructure.CAN_AWUM=DISABLE;				//?‘???㏒那?赤“1y豕赤?t??D?(??3yCAN->MCR米?SLEEP??)//
	CAN_InitStructure.CAN_NART=DISABLE;				//2????1㊣“??℅??‘∩??赤 //
	CAN_InitStructure.CAN_RFLM=DISABLE;				//㊣“??2????“,D?米??2???谷米? // 
	CAN_InitStructure.CAN_TXFP=DISABLE;				//車??豕??車谷㊣“??㊣那那?﹞????“ //
    CAN_InitStructure.CAN_Mode=CAN_Mode_Normal;   
	//CAN_InitStructure.CAN_Mode=CAN_Mode_LoopBack;
    CAN_InitStructure.CAN_SJW=sjw;
    CAN_InitStructure.CAN_BS1=bs1;  
    CAN_InitStructure.CAN_BS2=bs2;	
    CAN_InitStructure.CAN_Prescaler=pres;

    CAN_Init(CAN2,&CAN_InitStructure);   // CAN2													

    CAN_FilterInitStructure.CAN_FilterNumber=15;	// 
    CAN_FilterInitStructure.CAN_FilterMode=CAN_FilterMode_IdMask;	 // ㊣那那?﹞??芍㊣????㏒那?
    CAN_FilterInitStructure.CAN_FilterScale=CAN_FilterScale_32bit;   // 32??1y???¯
    CAN_FilterInitStructure.CAN_FilterIdHigh=0x0000;			// 1y???¯㊣那那?﹞?
    CAN_FilterInitStructure.CAN_FilterIdLow=0x0000;				
    CAN_FilterInitStructure.CAN_FilterMaskIdHigh=0x0000;		// 1y???¯?芍㊣?㊣那那?﹞?
    CAN_FilterInitStructure.CAN_FilterMaskIdLow=0x0000;
    CAN_FilterInitStructure.CAN_FilterFIFOAssignment=CAN_Filter_FIFO1;	 // FIFO1???辰1y???¯
    CAN_FilterInitStructure.CAN_FilterActivation=ENABLE;
    CAN_FilterInit(&CAN_FilterInitStructure);

	CAN_ITConfig(CAN2,CAN_IT_FMP1,ENABLE);  // CAN2
}

/*****************************************
  CAN1﹞⊿?赤那y?Y
*****************************************/
int CAN1_SendData(CanTxMsg* CanData)
{
    unsigned int retrys=0;
    unsigned char mailbox=0;

    do
	{
	    mailbox=CAN_Transmit(CAN1,CanData);
		retrys++;
	}
	while((mailbox==CAN_TxStatus_NoMailBox)&&(retrys<250));

	if (mailbox == CAN_TxStatus_NoMailBox)
	{
		return 1;
	}

	retrys = 0;
	while (CAN_TransmitStatus(CAN1,mailbox) != CAN_TxStatus_Ok)
	{
		retrys++;
		if (retrys >= 8000)
		{
			return 1;
		}
	}

	return 0;
}

/*****************************************
  CAN2﹞⊿?赤那y?Y
*****************************************/
int CAN2_SendData(CanTxMsg* CanData)
{
    unsigned int retrys=0;
    unsigned char mailbox=0;

    do
	{
	    mailbox=CAN_Transmit(CAN2,CanData);
		retrys++;
	}
	while((mailbox==CAN_TxStatus_NoMailBox)&&(retrys<250));

	if (mailbox == CAN_TxStatus_NoMailBox)
	{
		return 1;
	}

	retrys = 0;
	while (CAN_TransmitStatus(CAN2,mailbox) != CAN_TxStatus_Ok)
	{
		retrys++;
		if (retrys >= 8000)
		{
			return 1;
		}
	}

	return 0;
}



//CAN℅邦?????? 赤a2?米¯車?
void CAN1_Init(unsigned int bps)
{
	switch(bps)
	{
		case 1000: //CAN3?那??‘?y3㏒?㏒那?,2“足??那1000Kbps 75%
			CAN1_Config(CAN_SJW_1tq,CAN_BS1_7tq,CAN_BS2_2tq,5);
			break;
		case 500: //CAN3?那??‘?y3㏒?㏒那?,2“足??那500Kbps 87.5%
			CAN1_Config(CAN_SJW_1tq,CAN_BS1_7tq,CAN_BS2_2tq,10);
			break;
		case 250: //CAN3?那??‘?y3㏒?㏒那?,2“足??那250Kbps 87.5%
			CAN1_Config(CAN_SJW_1tq,CAN_BS1_7tq,CAN_BS2_2tq,20);
			break;
		case 125: //CAN3?那??‘?y3㏒?㏒那?,2“足??那125Kbps 87.5%
			CAN1_Config(CAN_SJW_1tq,CAN_BS1_7tq,CAN_BS2_2tq,40);
			break;
		case 100: //CAN3?那??‘?y3㏒?㏒那?,2“足??那100Kbps
			CAN1_Config(CAN_SJW_1tq,CAN_BS1_7tq,CAN_BS2_2tq,50);
			break;
		case 50: //CAN3?那??‘?y3㏒?㏒那?,2“足??那50Kbps
			CAN1_Config(CAN_SJW_1tq,CAN_BS1_7tq,CAN_BS2_2tq,100);
			break;
		default:break;
	}
}

//CAN℅邦?????? 赤a2?米¯車?
void CAN2_Init(unsigned int bps)
{
	switch(bps)
	{
		case 1000: //CAN3?那??‘?y3㏒?㏒那?,2“足??那1000Kbps 75%
			CAN2_Config(CAN_SJW_1tq,CAN_BS1_7tq,CAN_BS2_2tq,5);
			break;
		case 500: //CAN3?那??‘?y3㏒?㏒那?,2“足??那500Kbps 87.5%
			CAN2_Config(CAN_SJW_1tq,CAN_BS1_7tq,CAN_BS2_2tq,10);
			break;
		case 250: //CAN3?那??‘?y3㏒?㏒那?,2“足??那250Kbps 87.5%
			CAN2_Config(CAN_SJW_1tq,CAN_BS1_7tq,CAN_BS2_2tq,20);
			break;
		case 125: //CAN3?那??‘?y3㏒?㏒那?,2“足??那125Kbps 87.5%
			CAN2_Config(CAN_SJW_1tq,CAN_BS1_7tq,CAN_BS2_2tq,40);
			break;
		case 100: //CAN3?那??‘?y3㏒?㏒那?,2“足??那100Kbps
			CAN2_Config(CAN_SJW_1tq,CAN_BS1_7tq,CAN_BS2_2tq,50);
			break;
		case 50: //CAN3?那??‘?y3㏒?㏒那?,2“足??那50Kbps
			CAN2_Config(CAN_SJW_1tq,CAN_BS1_7tq,CAN_BS2_2tq,100);
			break;
		default:break;
	}
}

void can_init(unsigned char channel,unsigned int bps)
{
	if (channel == 0)
	{
		CAN1_Init(bps);
	}
	else if (channel == 1)
	{
		CAN2_Init(bps);
	}
}


int can_send_data(unsigned char channel,CanTxMsg* CanData)
{
	int ret = 0;

	if (channel == 0)
	{
		ret = CAN1_SendData(CanData);
		if (ret)
		{
			//DBG_Print(LEVEL1,"%s","[CAN0]send err.\r\n");
			//ret = CAN1_SendData(CanData);
		}

		return ret;
	}
	else if (channel == 1)
	{
		ret = CAN2_SendData(CanData);
		if (ret)
		{
			//DBG_Print(LEVEL1,"%s","[CAN1]send err.\r\n");
			//ret = CAN2_SendData(CanData);
		}
		return ret;
	}
	return 0;
}

int install_can_msg_arrive_hook(unsigned char channel,void (*pf)(CanRxMsg *))
{
	if (channel == 0)
	{
		return install_can1_msg_arrive_hook(pf);
	}
	else if (channel == 1)
	{
		return install_can2_msg_arrive_hook(pf);
	}
	return 1;
}

unsigned long can_recv_total_msg_cnt(unsigned char channel)
{
	if (channel == 0)
	{
		return can1_recv_total_msg_cnt();
	}
	else if (channel == 1)
	{
		return can2_recv_total_msg_cnt();
	}
	return 0;
}



