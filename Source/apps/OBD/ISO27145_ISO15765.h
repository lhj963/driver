#ifndef __ISO27145_ISO15765_H__
#define __ISO27145_ISO15765_H__

#ifdef __cplusplus
extern "C" {
#endif
//////////////////////////////////////////////////////////////////////////////////	 
//
////////////////////////////////////////////////////////////////////////////////// 


////////////////////////º¯Êý¶¨Òå///////////////////////////////


typedef void (*SENDCANMSGPROC)(CanTxMsg *pMsg);


extern void iso27145_init(SENDCANMSGPROC SendCanMsgFunc);


extern void iso27145_analysis(char channel,CanRxMsg *pMsg);


extern void iso27145_can_send_req_list(void);

#ifdef __cplusplus
}
#endif

#endif
