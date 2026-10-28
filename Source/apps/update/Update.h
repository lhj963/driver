#ifndef __UPDATE_H__
#define __UPDATE_H__
#ifdef __cplusplus
extern "C" {
#endif

/* Flash addresses live in HardwareCfg.h (boot / app / OTA / metadata). */

extern void ota_start(unsigned char update_way);
/* 0 stored, non-zero rejected (not programmed). */
extern int ota_write(void *buf,unsigned int len);
/* Non-zero when length and flash CRC both match the accepted image. */
extern int ota_image_is_valid(void);
extern void ota_download_finish(void);
extern void ota_stop(void);

extern unsigned int get_ota_file_size(void);



#ifdef __cplusplus
}
#endif
#endif



