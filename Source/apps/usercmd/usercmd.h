#ifndef __USERCMD_H__
#define __USERCMD_H__

#ifdef __cplusplus
extern "C" {
#endif




extern unsigned int analyze_usercmd(void *ptr,unsigned int len,void *pOut,unsigned int outbuflen);


extern unsigned int get_test_val(void);

extern void set_test_val(unsigned int val);




#ifdef __cplusplus
}
#endif

#endif


