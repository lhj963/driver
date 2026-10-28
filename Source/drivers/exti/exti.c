#include "exti.h"

typedef struct tagGPIO_PIN_SOURCE_MAP
{
	uint16_t pin;
	unsigned char pin_source;
	unsigned int exit_line;
	void (*handler)(void);
}GPIO_PIN_SOURCE_MAP;

GPIO_PIN_SOURCE_MAP stGPIO_PIN_SOURCE_MAP[] = 
{
{GPIO_Pin_0,GPIO_PinSource0,EXTI_Line0,0},
{GPIO_Pin_1,GPIO_PinSource1,EXTI_Line1,0},
{GPIO_Pin_2,GPIO_PinSource2,EXTI_Line2,0},
{GPIO_Pin_3,GPIO_PinSource3,EXTI_Line3,0},
{GPIO_Pin_4,GPIO_PinSource4,EXTI_Line4,0},
{GPIO_Pin_5,GPIO_PinSource5,EXTI_Line5,0},
{GPIO_Pin_6,GPIO_PinSource6,EXTI_Line6,0},
{GPIO_Pin_7,GPIO_PinSource7,EXTI_Line7,0},
{GPIO_Pin_8,GPIO_PinSource8,EXTI_Line8,0},
{GPIO_Pin_9,GPIO_PinSource9,EXTI_Line9,0},
{GPIO_Pin_10,GPIO_PinSource10,EXTI_Line10,0},
{GPIO_Pin_11,GPIO_PinSource11,EXTI_Line11,0},
{GPIO_Pin_12,GPIO_PinSource12,EXTI_Line12,0},
{GPIO_Pin_13,GPIO_PinSource13,EXTI_Line13,0},
{GPIO_Pin_14,GPIO_PinSource14,EXTI_Line14,0},
{GPIO_Pin_15,GPIO_PinSource15,EXTI_Line15,0},
};

void EXTI0_IRQHandler(void)
{
	//¨¨¡¤¡À¡ê¨º?¡¤?2¨²¨¦¨²¨¢? EXTI Line ?D?? 
	if (EXTI_GetITStatus(stGPIO_PIN_SOURCE_MAP[0].exit_line) != RESET)
	{
		if (stGPIO_PIN_SOURCE_MAP[0].handler)
		{
			stGPIO_PIN_SOURCE_MAP[0].handler();
		}
		//??3y?D??¡À¨º????
		EXTI_ClearITPendingBit(stGPIO_PIN_SOURCE_MAP[0].exit_line);
	}
}

void EXTI1_IRQHandler(void)
{
	//¨¨¡¤¡À¡ê¨º?¡¤?2¨²¨¦¨²¨¢? EXTI Line ?D?? 
	if (EXTI_GetITStatus(stGPIO_PIN_SOURCE_MAP[1].exit_line) != RESET)
	{
		if (stGPIO_PIN_SOURCE_MAP[1].handler)
		{
			stGPIO_PIN_SOURCE_MAP[1].handler();
		}
		//??3y?D??¡À¨º????
		EXTI_ClearITPendingBit(stGPIO_PIN_SOURCE_MAP[1].exit_line);
	}

}

void EXTI2_IRQHandler(void)
{
	//¨¨¡¤¡À¡ê¨º?¡¤?2¨²¨¦¨²¨¢? EXTI Line ?D?? 
	if (EXTI_GetITStatus(stGPIO_PIN_SOURCE_MAP[2].exit_line) != RESET)
	{
		if (stGPIO_PIN_SOURCE_MAP[2].handler)
		{
			stGPIO_PIN_SOURCE_MAP[2].handler();
		}
		//??3y?D??¡À¨º????
		EXTI_ClearITPendingBit(stGPIO_PIN_SOURCE_MAP[2].exit_line);
	}
}

void EXTI3_IRQHandler(void)
{
	//¨¨¡¤¡À¡ê¨º?¡¤?2¨²¨¦¨²¨¢? EXTI Line ?D?? 
	if (EXTI_GetITStatus(stGPIO_PIN_SOURCE_MAP[3].exit_line) != RESET)
	{
		if (stGPIO_PIN_SOURCE_MAP[3].handler)
		{
			stGPIO_PIN_SOURCE_MAP[3].handler();
		}
		//??3y?D??¡À¨º????
		EXTI_ClearITPendingBit(stGPIO_PIN_SOURCE_MAP[3].exit_line);
	}
}

void EXTI4_IRQHandler(void)
{
	//¨¨¡¤¡À¡ê¨º?¡¤?2¨²¨¦¨²¨¢? EXTI Line ?D?? 
	if (EXTI_GetITStatus(stGPIO_PIN_SOURCE_MAP[4].exit_line) != RESET)
	{
		if (stGPIO_PIN_SOURCE_MAP[4].handler)
		{
			stGPIO_PIN_SOURCE_MAP[4].handler();
		}
		//??3y?D??¡À¨º????
		EXTI_ClearITPendingBit(stGPIO_PIN_SOURCE_MAP[4].exit_line);
	}
}

void EXTI9_5_IRQHandler(void)
{
	unsigned char i = 0;

	for (i = 5; i <= 9; i++)
	{
		//¨¨¡¤¡À¡ê¨º?¡¤?2¨²¨¦¨²¨¢? EXTI Line ?D?? 
		if (EXTI_GetITStatus(stGPIO_PIN_SOURCE_MAP[i].exit_line) != RESET)
		{
			if (stGPIO_PIN_SOURCE_MAP[i].handler)
			{
				stGPIO_PIN_SOURCE_MAP[i].handler();
			}
			//??3y?D??¡À¨º????
			EXTI_ClearITPendingBit(stGPIO_PIN_SOURCE_MAP[i].exit_line);
		}
	}
}

void EXTI15_10_IRQHandler(void)
{
	unsigned char i = 0;

	for (i = 10; i <= 15; i++)
	{
		//¨¨¡¤¡À¡ê¨º?¡¤?2¨²¨¦¨²¨¢? EXTI Line ?D?? 
		if (EXTI_GetITStatus(stGPIO_PIN_SOURCE_MAP[i].exit_line) != RESET)
		{
			if (stGPIO_PIN_SOURCE_MAP[i].handler)
			{
				stGPIO_PIN_SOURCE_MAP[i].handler();
			}
			//??3y?D??¡À¨º????
			EXTI_ClearITPendingBit(stGPIO_PIN_SOURCE_MAP[i].exit_line);
		}
	}
}

typedef struct tagGPIO_PORT_SOURCE_MAP
{
	GPIO_TypeDef *port;
	unsigned char gpio_port_source;
}GPIO_PORT_SOURCE_MAP;

GPIO_PORT_SOURCE_MAP stGPIO_PORT_SOURCE_MAP[] = 
{
	{GPIOA,GPIO_PortSourceGPIOA},
	{GPIOB,GPIO_PortSourceGPIOB},
	{GPIOC,GPIO_PortSourceGPIOC},
	{GPIOD,GPIO_PortSourceGPIOD},
	{GPIOE,GPIO_PortSourceGPIOE},
	{GPIOF,GPIO_PortSourceGPIOF},
	{GPIOG,GPIO_PortSourceGPIOG},
};

//D?¨®¨²0 ¡À¨ª¨º?2¨¦?¨°¨º¡ì¡ã¨¹
int get_gpio_port_source(GPIO_TypeDef *port)
{
	unsigned char i = 0;

	for (i = 0; i < (sizeof(stGPIO_PORT_SOURCE_MAP) / sizeof(stGPIO_PORT_SOURCE_MAP[0])); i++)
	{
		if (stGPIO_PORT_SOURCE_MAP[i].port == port)
		{
			return stGPIO_PORT_SOURCE_MAP[i].gpio_port_source;
		}
	}
	return -1;
}

int get_gpio_pin_source(uint16_t pin)
{
	unsigned char i = 0;

	for (i = 0; i < (sizeof(stGPIO_PIN_SOURCE_MAP) / sizeof(stGPIO_PIN_SOURCE_MAP[0])); i++)
	{
		if (stGPIO_PIN_SOURCE_MAP[i].pin == pin)
		{
			return stGPIO_PIN_SOURCE_MAP[i].pin_source;
		}
	}
	return -1;
}

int get_exit_line(uint16_t pin)
{
	unsigned char i = 0;

	for (i = 0; i < (sizeof(stGPIO_PIN_SOURCE_MAP) / sizeof(stGPIO_PIN_SOURCE_MAP[0])); i++)
	{
		if (stGPIO_PIN_SOURCE_MAP[i].pin == pin)
		{
			return stGPIO_PIN_SOURCE_MAP[i].exit_line;
		}
	}
	return -1;
}

void exit_nvic_config(unsigned char irq,unsigned char PreemptionPriority,unsigned char SubPriority)
{
	NVIC_InitTypeDef NVIC_InitStructure;

	NVIC_InitStructure.NVIC_IRQChannel = irq;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = PreemptionPriority;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = SubPriority;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);
}

void exit_init(uint32_t rcc,GPIO_TypeDef* port,
					uint16_t pin,GPIOMode_TypeDef mode,
					void (*handler)(void)
					)

{
	GPIO_InitTypeDef GPIO_InitStructure;
	EXTI_InitTypeDef EXTI_InitStructure;
	int port_source = 0;
	int pin_source = 0;
	int exit_line = 0;

	port_source = get_gpio_port_source(port);
	if (port_source < 0)
	{
		return ;
	}
	pin_source = get_gpio_pin_source(pin);
	if (pin_source < 0)
	{
		return ;
	}
	exit_line = get_exit_line(pin);
	if (exit_line < 0)
	{
		return ;
	}
	stGPIO_PIN_SOURCE_MAP[pin_source].handler = handler;

	/*?a??¨ªa2? GPIO ?¨²¦Ì?¨º¡À?¨®*/
	RCC_APB2PeriphClockCmd(rcc | RCC_APB2Periph_AFIO,ENABLE);
#if __USE_UCOS__
	switch (pin_source)
	{
	case 0:
	BSP_IntVectSet(BSP_INT_ID_EXTI0, EXTI0_IRQHandler);
	BSP_IntEn(BSP_INT_ID_EXTI0);
	break;
	case 1:
	BSP_IntVectSet(BSP_INT_ID_EXTI1, EXTI1_IRQHandler);
	BSP_IntEn(BSP_INT_ID_EXTI1);
	break;
	case 2:
	BSP_IntVectSet(BSP_INT_ID_EXTI2, EXTI2_IRQHandler);
	BSP_IntEn(BSP_INT_ID_EXTI2);
	break;
	case 3:
	BSP_IntVectSet(BSP_INT_ID_EXTI3, EXTI3_IRQHandler);
	BSP_IntEn(BSP_INT_ID_EXTI3);
	break;
	case 4:
	BSP_IntVectSet(BSP_INT_ID_EXTI4, EXTI4_IRQHandler);
	BSP_IntEn(BSP_INT_ID_EXTI4);
	break;
	case 5:
	case 6:
	case 7:
	case 8:
	case 9:
	BSP_IntVectSet(BSP_INT_ID_EXTI9_5, EXTI9_5_IRQHandler);
	BSP_IntEn(BSP_INT_ID_EXTI9_5);
	break;
	case 10:
	case 11:
	case 12:
	case 13:
	case 14:
	case 15:
	BSP_IntVectSet(BSP_INT_ID_EXTI15_10, EXTI15_10_IRQHandler);
	BSP_IntEn(BSP_INT_ID_EXTI15_10);
	break;
	default:break;
	}
#else
	switch (pin_source)
	{
		case 0:
		exit_nvic_config(EXTI0_IRQn,EXIT_PreemptionPriority,pin_source);
		break;
		case 1:
		exit_nvic_config(EXTI1_IRQn,EXIT_PreemptionPriority,pin_source);
		break;
		case 2:
		exit_nvic_config(EXTI2_IRQn,EXIT_PreemptionPriority,pin_source);
		break;
		case 3:
		exit_nvic_config(EXTI3_IRQn,EXIT_PreemptionPriority,pin_source);
		break;
		case 4:
		exit_nvic_config(EXTI4_IRQn,EXIT_PreemptionPriority,pin_source);
		break;
		case 5:
		case 6:
		case 7:
		case 8:
		case 9:
		exit_nvic_config(EXTI9_5_IRQn,EXIT_PreemptionPriority,pin_source);
		break;
		case 10:
		case 11:
		case 12:
		case 13:
		case 14:
		case 15:
		exit_nvic_config(EXTI15_10_IRQn,EXIT_PreemptionPriority,pin_source);
		break;
		default:break;
	}
#endif
	/* ????¡ã¡ä?¨¹¨®?¦Ì?¦Ì? GPIO */
	GPIO_InitStructure.GPIO_Pin = pin;
	/* ?????a????¨º?¨¨? */
	//GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
	GPIO_InitStructure.GPIO_Mode = mode;

	GPIO_Init(port, &GPIO_InitStructure);
	/* ???? EXTI ¦Ì?D?o??¡ä */
	GPIO_EXTILineConfig(port_source, pin_source);
	EXTI_InitStructure.EXTI_Line = exit_line;
	/* EXTI ?a?D???¡ê¨º? */
	EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
	/* ¨¦?¨¦y???D?? */
	EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising_Falling;
	/* ¨º1?¨¹?D?? */
	EXTI_InitStructure.EXTI_LineCmd = ENABLE;
	EXTI_Init(&EXTI_InitStructure);
}


typedef void (*pvd_handler)(void);

pvd_handler p_pvd_handler = 0;


void BSP_IntHandlerPVD(void)
{
	EXTI_ClearITPendingBit(EXTI_Line16);

	if (PWR_GetFlagStatus(PWR_FLAG_PVDO) != RESET) 
	{
		//_USART1_SendData("xxx",3);
		
		//???¡À¡ä|¨¤¨ª¡ä¨²??	MCU¦Ì??1¦Ì¨ª¦Ì?
		if (p_pvd_handler)
		{
			p_pvd_handler();
		}
	}

}

void PVD_Init(void)
{	
	EXTI_InitTypeDef EXTI_InitStructure; 	
	NVIC_InitTypeDef NVIC_InitStructure;		
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_1); 	
	NVIC_InitStructure.NVIC_IRQChannel = PVD_IRQn;	
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;  	
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0; 	
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;	
	NVIC_Init(&NVIC_InitStructure);		
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_PWR | RCC_APB1Periph_BKP, ENABLE);	  
	PWR_PVDLevelConfig(PWR_PVDLevel_2V9);   
	PWR_PVDCmd(ENABLE); 	
	EXTI_DeInit();  
	EXTI_StructInit(&EXTI_InitStructure);    
	EXTI_InitStructure.EXTI_Line = EXTI_Line16;  
	EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;  
	EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising_Falling;  
	EXTI_InitStructure.EXTI_LineCmd = ENABLE; // ¡§o1?¡§1?D????   
	EXTI_Init(&EXTI_InitStructure); 	//		EXTI_InitStructure.EXTI_Trigger= EXTI_Trigger_Rising; 		
}



void enable_pvd_monitor(void (*pvd_handler)(void))
{
	PVD_Init();
	//BSP_IntVectSet(BSP_INT_ID_PVD, PVD_Handler);

	p_pvd_handler = pvd_handler;
}




