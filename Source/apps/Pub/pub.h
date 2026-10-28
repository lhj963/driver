#ifndef __PUB_H__
#define __PUB_H__
#ifdef __cplusplus
extern "C" {
#endif




extern void js(unsigned char year,unsigned char month,unsigned char day,unsigned char hour,unsigned char min,unsigned char sec);



extern void sms_arrive(void *szPhone,void *ptr,unsigned int rlen);


extern void sta_ftp_data_rate(void);
extern unsigned int get_ftp_rate(void);

extern void ftp_data_arrive(void *pdat,unsigned int rlen);
extern void ftp_download_ok(void);
extern void server0_connected(void);
extern void link0_data_arrive(void *pdat,unsigned int rlen);



extern void collect_data_stream(void);




#ifdef __cplusplus
}
#endif

#endif


