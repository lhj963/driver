#ifndef __CAN_H__
#define __CAN_H__

#ifdef __cplusplus
extern "C" {
#endif

#define REMAP1_CAN1		0
#define REMAP2_CAN1		0

#define REMAP_CAN2		0


#define CAN1_NVIC_PREE_PRIO	3
#define CAN1_NVIC_SUB_PRIO	3

#define CAN2_NVIC_PREE_PRIO	3
#define CAN2_NVIC_SUB_PRIO	3



//#define CAN_RX_BUF_CNT		75

typedef void (*CanMsgArriveCallBack)(CanRxMsg *);


extern void CAN1_Init(unsigned int bps);

extern void CAN2_Init(unsigned int bps);

extern int CAN1_SendData(CanTxMsg* CanData);

extern int CAN2_SendData(CanTxMsg* CanData);


extern int ReadCan1Msg(CanRxMsg *pMsg);

extern int ReadCan2Msg(CanRxMsg *pMsg);


extern char IsHaveCan1Data(void);

extern char IsHaveCan2Data(void);


extern int install_can1_msg_arrive_hook(void (*pf)(CanRxMsg *));
extern int install_can2_msg_arrive_hook(void (*pf)(CanRxMsg *));
extern int install_can3_msg_arrive_hook(void (*pf)(CanRxMsg *));

extern int drv_install_can1_msg_arrive_hook(void (*pf)(CanRxMsg *));
extern int drv_install_can2_msg_arrive_hook(void (*pf)(CanRxMsg *));
extern int drv_install_can3_msg_arrive_hook(void (*pf)(CanRxMsg *));



extern unsigned long can1_recv_total_msg_cnt(void);
extern unsigned long can2_recv_total_msg_cnt(void);
extern unsigned long can3_recv_total_msg_cnt(void);


extern void can_init(unsigned char channel,unsigned int bps);
extern int can_send_data(unsigned char channel,CanTxMsg* CanData);
extern int install_can_msg_arrive_hook(unsigned char channel,void (*pf)(CanRxMsg *));
extern unsigned long can_recv_total_msg_cnt(unsigned char channel);


#ifdef __cplusplus
}
#endif
#endif

