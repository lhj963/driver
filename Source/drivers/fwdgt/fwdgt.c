#include "fwdgt.h"

//初始化独立看门狗
//prer:分频数:0~7(只有低 3 位有效!)
//分频因子=4*2^prer.但最大值只能是 256!
//rlr:重装载寄存器值:低 11 位有效.
//时间计算(大概):Tout=((4*2^prer)*rlr)/40 (ms).

/* FWDGT timeout value */
#define FWDGT_PSC_TIMEOUT         	((uint32_t)0x000FFFFFU)                   /*!< FWDGT_PSC register write operation state flag timeout */
#define FWDGT_RLD_TIMEOUT           ((uint32_t)0x000FFFFFU)                   /*!< FWDGT_RLD register write operation state flag timeout */

int IWDG_Config(uint8_t prer,uint16_t rlr)
{
	uint32_t timeout = FWDGT_PSC_TIMEOUT;
    uint32_t flag_status = RESET;
	
	IWDG_WriteAccessCmd(IWDG_WriteAccess_Enable); //①使能对寄存器 I 写操作
	
	do {
        flag_status = IWDG_GetFlagStatus(0x01);
    } while((--timeout > 0U) && ((uint32_t)RESET != flag_status));

    if((uint32_t)RESET != flag_status) {
        return ERROR;
    }
	
    IWDG_SetPrescaler(prer); //②设置 IWDG 预分频值:设置 IWDG 预分频值
	
	timeout = FWDGT_RLD_TIMEOUT;
    /* wait until the RUD flag to be reset */
    do {
        flag_status = IWDG_GetFlagStatus(0x02);
    } while((--timeout > 0U) && ((uint32_t)RESET != flag_status));

    if((uint32_t)RESET != flag_status) {
        return ERROR;
    }

    IWDG_SetReload(rlr); //②设置 IWDG 重装载值
    IWDG_ReloadCounter(); //③按照 IWDG 重装载寄存器的值重装载 IWDG 计数器
    IWDG_Enable(); //④使能 IWDG
	return 0;
}

//喂独立看门狗
void IWDG_Feed(void)
{ 
    IWDG_ReloadCounter();//reload 
}
