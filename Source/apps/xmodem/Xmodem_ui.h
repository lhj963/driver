#ifndef __XMODEM_UI_H__
#define __XMDDEM_UI_H__

#ifdef __cplusplus
extern "C"{
#endif


//主动发送文件
extern void xmode_start_download_file(void);



//接收文件
extern void xmode_slave_start_recv_app(void);

extern void xmode_slave_start_recv_boot(void);

extern INT8U calc_file_xor(unsigned char file_type);



#ifdef __cplusplus
}
#endif
#endif
