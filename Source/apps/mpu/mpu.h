#ifndef __MPU_H__
#define __MPU_H__

#ifdef __cplusplus
extern "C" {
#endif

#define send_to_mpu(buf,len) usart_send_data(0,buf,len)



extern char is_update_mode(void);


extern void analyze_mpu_data(unsigned int msgid,void * content,unsigned int contentlen);


extern void update_status_indicator_proc(void);

extern void mcu_modify_server(unsigned char channel,void *ip,unsigned int port);
extern void mcu_modify_jiami_chip_id(void *chip_id,unsigned int chip_id_len);

extern void mcu_send_msg_to_mpu(unsigned int msgid,void *pcontent,unsigned int contentlen);

extern void send_shutdown_signal_to_mpu(void);

extern void report_mcu_status(void);

#ifdef __cplusplus
}
#endif

#endif


