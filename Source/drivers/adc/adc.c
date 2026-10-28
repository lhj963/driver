#include "ADC.h"

typedef struct tagADCGPIOList
{
	uint32_t RCC_APB2Periph;
	GPIO_TypeDef* GPIOx;
	uint16_t GPIO_Pin;
}ADCGPIOList;

ADCGPIOList stADCGPIOList[] = 
{
{RCC_APB2Periph_GPIOA,GPIOA,GPIO_Pin_0},
{RCC_APB2Periph_GPIOA,GPIOA,GPIO_Pin_1},
{RCC_APB2Periph_GPIOA,GPIOA,GPIO_Pin_2},
{RCC_APB2Periph_GPIOA,GPIOA,GPIO_Pin_3},
{RCC_APB2Periph_GPIOA,GPIOA,GPIO_Pin_4},
{RCC_APB2Periph_GPIOA,GPIOA,GPIO_Pin_5},
{RCC_APB2Periph_GPIOA,GPIOA,GPIO_Pin_6},
{RCC_APB2Periph_GPIOA,GPIOA,GPIO_Pin_7},

{RCC_APB2Periph_GPIOB,GPIOB,GPIO_Pin_0},
{RCC_APB2Periph_GPIOB,GPIOB,GPIO_Pin_1},

{RCC_APB2Periph_GPIOC,GPIOC,GPIO_Pin_0},
{RCC_APB2Periph_GPIOC,GPIOC,GPIO_Pin_1},
{RCC_APB2Periph_GPIOC,GPIOC,GPIO_Pin_2},
{RCC_APB2Periph_GPIOC,GPIOC,GPIO_Pin_3},
{RCC_APB2Periph_GPIOC,GPIOC,GPIO_Pin_4},
{RCC_APB2Periph_GPIOC,GPIOC,GPIO_Pin_5},
};

#define MAX_ADC_CHANNEL 15


//channel:0-15
void ADC_GPIO_Init(uint8_t channel)
{
	GPIO_InitTypeDef GPIO_InitStructure;

	//¨º1?¨¹GPIO¨ªa¨¦¨¨¨º¡À?¨®
	RCC_APB2PeriphClockCmd(stADCGPIOList[channel].RCC_APB2Periph,ENABLE);

	GPIO_InitStructure.GPIO_Mode  = GPIO_Mode_AIN;
	GPIO_InitStructure.GPIO_Pin  = stADCGPIOList[channel].GPIO_Pin;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(stADCGPIOList[channel].GPIOx,&GPIO_InitStructure);
}


void _ADC_Init(ADC_TypeDef* ADCx)
{
	ADC_InitTypeDef ADC_InitStructure;

	if (ADCx == ADC2)
	{
		RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC2,ENABLE);
	}
	else if (ADCx == ADC3)
	{
		RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC3,ENABLE);
	}
	else
	{
		RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC1,ENABLE);
	}
	RCC_ADCCLKConfig(RCC_PCLK2_Div8);	 //?a¨¤?ADC¡¤??¦Ì¡ê?ADC1¡è¡Á¡Â?¦Ì?¨º¡Á???2?3?1y14M

	ADC_DeInit(ADCx);
	ADC_InitStructure.ADC_Mode = ADC_Mode_Independent;
	ADC_InitStructure.ADC_ScanConvMode = DISABLE;	
	ADC_InitStructure.ADC_ContinuousConvMode = DISABLE;
	ADC_InitStructure.ADC_DataAlign = ADC_DataAlign_Right;
	ADC_InitStructure.ADC_ExternalTrigConv= ADC_ExternalTrigConv_None;
	ADC_InitStructure.ADC_NbrOfChannel = 1;
	ADC_Init(ADCx,&ADC_InitStructure);

	//¨º1?¨¹ADC
	ADC_Cmd(ADCx,ENABLE);

	//D¡ê¡Á?ADC
	ADC_ResetCalibration(ADCx);
	while(ADC_GetResetCalibrationStatus(ADCx));
	ADC_StartCalibration(ADCx);
	while(ADC_GetCalibrationStatus(ADCx));
}

void ADC1_Init(uint8_t channel)
{
	if (channel > MAX_ADC_CHANNEL) return ;
	ADC_GPIO_Init(channel);
	_ADC_Init(ADC1);
}

void ADC2_Init(uint8_t channel)
{
	if (channel > MAX_ADC_CHANNEL) return ;
	ADC_GPIO_Init(channel);
	_ADC_Init(ADC2);
}

void ADC3_Init(uint8_t channel)
{
	if (channel > MAX_ADC_CHANNEL) return ;
	ADC_GPIO_Init(channel);
	_ADC_Init(ADC3);
}

//channel:0-15
uint16_t GetADCValue(ADC_TypeDef* ADCx,uint8_t channel)
{
	uint16_t cnt = 0;
	uint16_t tempdata = 0; 

	if (channel > MAX_ADC_CHANNEL) return 0;

	ADC_RegularChannelConfig(ADCx,channel,1,ADC_SampleTime_55Cycles5);
	ADC_SoftwareStartConvCmd(ADCx,ENABLE);
	while(!ADC_GetFlagStatus(ADCx, ADC_FLAG_EOC))	//¦Ì¨¨¡äy?¨¢¨¨??¨¢¨º?
	{
		cnt++;
		if (cnt > 0x3FFF)
		{
			break;
		}
	}
	tempdata =  ADC_GetConversionValue(ADCx);

	return tempdata;
}





