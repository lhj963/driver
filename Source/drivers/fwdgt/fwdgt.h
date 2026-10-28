#ifndef __FWDGT_H__
#define __FWDGT_H__


#ifdef __cplusplus
extern "C" {
#endif

int IWDG_Config(uint8_t prer,uint16_t rlr);

void IWDG_Feed(void);


#ifdef __cplusplus
}
#endif

#endif
