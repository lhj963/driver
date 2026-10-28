#ifndef __USART_H__
#define __USART_H__
#ifdef __cplusplus
extern "C" {
#endif

#ifndef __USE_LFOS__
#define __USE_LFOS__ 		1
#endif

//串口1映射
#define REMAP_USART1			0

//串口2映射
#define REMAP_USART2			0

//串口3全映射
#define REMAP_FULL_USART3		1

//串口4映射
#define REMAP_USART4			0


#define USART1_NVIC_PREE_PRIO	3
#define USART1_NVIC_SUB_PRIO	3

#define USART2_NVIC_PREE_PRIO	3
#define USART2_NVIC_SUB_PRIO	1

#define USART3_NVIC_PREE_PRIO	2
#define USART3_NVIC_SUB_PRIO	1

#define USART4_NVIC_PREE_PRIO	3
#define USART4_NVIC_SUB_PRIO	3

#define USART5_NVIC_PREE_PRIO	3
#define USART5_NVIC_SUB_PRIO	3

#define USART6_NVIC_PREE_PRIO	3
#define USART6_NVIC_SUB_PRIO	3

#define USART7_NVIC_PREE_PRIO	3
#define USART7_NVIC_SUB_PRIO	3

#define USART8_NVIC_PREE_PRIO	3
#define USART8_NVIC_SUB_PRIO	3


#define USART_TWO_BYTE_INTERVAL  6

#define USART1_BUF_LEN 		(2048 + 384)
#define USART2_BUF_LEN 		128
#define USART3_BUF_LEN 		1536
#define USART4_BUF_LEN 		(1024)
#define USART5_BUF_LEN 		128
#define USART6_BUF_LEN 		128
#define USART7_BUF_LEN 		128
#define USART8_BUF_LEN 		(128)


#define MAX_USART_CNT       8
typedef void (*usart_data_arrive_callback)(void *pdat,unsigned int rlen);
typedef void (*_one_dat_arrive_func)(unsigned char ch);


extern void usart_init(unsigned char channel,unsigned long bps,char iParity);
extern unsigned int usart_send_data(unsigned char channel,void *buf,unsigned int len);
extern unsigned int _usart_send_data(unsigned char channel,void *buf,unsigned int len);
extern unsigned int usart_read(unsigned char channel,void *pOut,unsigned int outbuflen,unsigned int timeout);


//虚函数
extern int install_usart_recv_hook(unsigned char usart_channel,void (*pf)(unsigned char ch));
extern usart_data_arrive_callback get_usart_data_arrive_callback(unsigned char channel);
extern void set_usart_data_arrive_callback(unsigned char channel,usart_data_arrive_callback pf);



//放到1ms定时器里面去调用
extern void usart_rx_timing(unsigned char channel);



#ifdef __cplusplus
}
#endif

#endif




