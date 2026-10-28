#ifndef __UPDATE_H__
#define __UPDATE_H__
#ifdef __cplusplus
extern "C" {
#endif

#define UPDATE_INFO_START_ADDR	(0x08000000 + (12 * 1024))

#define UPDATE_FILE_START_ADDR 	(0x08000000 + (192*1024))
#define UPDATE_FILE_MAX_SIZE 	(188*1024)


extern void ota_start(unsigned char update_way);
extern void ota_write(void *buf,unsigned int len);
extern void ota_download_finish(void);
extern void ota_stop(void);

extern unsigned int get_ota_file_size(void);



#ifdef __cplusplus
}
#endif
#endif



