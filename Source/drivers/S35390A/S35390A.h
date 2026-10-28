#ifndef __S35390A_H__
#define __S35390A_H__

/*******************************************************************************
* Constants and macros
*******************************************************************************/
#define S35390A_STS_REG1_W	0X60
#define S35390A_STS_REG1_R	0X61

#define S35390A_YEAR_DAT_W	0X64
#define S35390A_YEAR_DAT_R	0X65


extern void s35390a_init(void);
extern void s35390a_set_time(unsigned char set_datetime[6]);
extern void s35390a_get_time(unsigned char get_datetime[6]);

#endif
