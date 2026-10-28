#include "stm32_rtc.h"


/*rtc中断向量配置*/
void NVIC_Configuration(void)
{
    NVIC_InitTypeDef NVIC_InitStructure;
    NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2); 
    NVIC_InitStructure.NVIC_IRQChannel = RTC_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 4;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);
}

void RTC_IRQHandler(void)
{
	if (RTC_GetITStatus(RTC_IT_ALR)!= RESET)//闹钟中断
	{
		RTC_ClearITPendingBit(RTC_IT_ALR);//清闹钟中断 
	}
	RTC_ClearITPendingBit(RTC_IT_OW);//清闹钟中断
	//RTC_WaitForLastTask();                                                   
}

void stm32_rtc_set_alarm_wakeup(unsigned int wakeup_time)
{
	unsigned long cnt = 0;
	EXTI_InitTypeDef EXTI_InitStructure;

	if (wakeup_time == 0) return ;

	/* 使能PWR和BKP时钟 */
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_PWR | RCC_APB1Periph_BKP,ENABLE);
	/* 使能对后备寄存器的访问 */ 
	PWR_BackupAccessCmd(ENABLE);
	/* 复位BKP寄存器 */ 
	BKP_DeInit();

	RCC_LSICmd(ENABLE);
	/*等待启动完成 */
	while (RCC_GetFlagStatus(RCC_FLAG_LSIRDY) == RESET)
	{
		cnt++;
		if (cnt >= 0xFFFFFFF0)
		{
			return ;
		}
	}

	RCC_RTCCLKConfig(RCC_RTCCLKSource_LSI);

	RTC_SetAlarm(wakeup_time);

	/* 使能RTC Clock */ 
	RCC_RTCCLKCmd(ENABLE);
	/* 等待同步 */ 
	RTC_WaitForSynchro();
	/* 等待对RTC寄存器最后的写操作完成*/			 
	RTC_WaitForLastTask();
	/* 配置了预分频值: 设置RTC时钟周期为1s */
	RTC_SetPrescaler(40000 - 1); /* RTC period = RTCCLK/RTC_PR = (40 KHz)/(40K)*/
	/* 等待对RTC寄存器最后的写操作完成 */
	RTC_WaitForLastTask();

	/* 等待对RTC寄存器最后的写操作完成 */		  
	RTC_WaitForLastTask();

	EXTI_InitStructure.EXTI_Line = EXTI_Line17;
	EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
	EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising_Falling;
	EXTI_InitStructure.EXTI_LineCmd = ENABLE;
	EXTI_Init(&EXTI_InitStructure);

    NVIC_Configuration();

	/* Clear reset flags */
	RCC_ClearFlag();

	RTC_ITConfig(RTC_IT_ALR, ENABLE);
}



