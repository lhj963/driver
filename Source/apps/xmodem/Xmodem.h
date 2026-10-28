#ifndef __XMODEM_H__
#define __XMDDEM_H__

#ifdef __cplusplus
extern "C"{
#endif

#define XMODEM_BASIC_EN		0	//xmodem基础协议 128字节
#define XMODEM_1K_EN		1	//xmodem_1k	

#define __XMODEM_HOST__  	0
#define __XMODEM_SLAVE__	1

#if ((XMODEM_1K_EN > 0) && (XMODEM_BASIC_EN > 0))
#error XMODEM_1K_EN和XMODEM_BASIC_EN不能同时开启
#endif

#if XMODEM_BASIC_EN
#define DATA_LEN	128
#define XMODEM_SEND_FILE_START_FLAG	0x15
#endif

#if XMODEM_1K_EN
#define DATA_LEN	1024
#define XMODEM_SEND_FILE_START_FLAG	'C'
#endif

#define ONE_PACK_SIZE	(DATA_LEN + 5)


#define	SOH		0x01
#define STX		0x02

#define EOT		0x04
#define ACK		0x06
#define NAK		0x15
#define CAN		0x18

typedef void (*XMODE_SEND_PACK)(void *pdat,unsigned int len);
typedef unsigned int (*XMODE_GET_DATA)(unsigned long offset,unsigned int wantToReadBytes,void *pBuf,unsigned int buflen);
typedef void (*XMODE_DOWNLOAD_PROGRESS)(unsigned long alread_download_size);
typedef void (*XMODE_UNPACK_DATA)(void *pdat,unsigned int len);

typedef void (*XMODE_RECV_FINISH)(void);



extern int xmode_init(XMODE_SEND_PACK pSend,XMODE_GET_DATA pGetData,
					XMODE_DOWNLOAD_PROGRESS pProgress,XMODE_UNPACK_DATA pUnpackData);

#if __XMODEM_HOST__
//解析设备给予的应答
extern int xmode_analyze_device_answer(void *device_ack,unsigned int len);
extern char is_xmode_send_finish(void);
extern void xmode_host_start(void);
extern void xmode_host_stop(void);
#endif

#if __XMODEM_SLAVE__
extern void xmode_set_recv_finish_callback(XMODE_RECV_FINISH pCall);
//解析成功 返回0
extern int xmode_analyze_host_answer(void *buf,unsigned int len);
extern char is_xmode_recv_finish(void);
extern void xmode_slave_start(void);
extern void xmode_slave_stop(void);
extern char xmode_handshake_to_host(void);
#endif






#ifdef __cplusplus
}
#endif
#endif
