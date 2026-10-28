#include "gpio.h"

void _gpio_init(uint32_t rcc,GPIO_TypeDef* port,uint16_t pin,GPIOMode_TypeDef mode)
{
	GPIO_InitTypeDef  gpio_init;

	if ((rcc == 0) || (port == 0) || (pin == 0))
	{
		return ;
	}
	RCC_APB2PeriphClockCmd(rcc, ENABLE);

	gpio_init.GPIO_Pin   = pin;
	gpio_init.GPIO_Speed = GPIO_Speed_50MHz;
	gpio_init.GPIO_Mode  = mode;
	GPIO_Init(port, &gpio_init);
}

void pin_low(uint32_t rcc,GPIO_TypeDef* port,uint16_t pin)
{
	if (rcc && port && pin)
	{
		GPIO_ResetBits(port, pin);
	}
}

void pin_high(uint32_t rcc,GPIO_TypeDef* port,uint16_t pin)
{
	if (rcc && port && pin)
	{
		GPIO_SetBits(port, pin);
	}
}

void pin_toggle(uint32_t rcc,GPIO_TypeDef* port,uint16_t pin)
{
	if (rcc && port && pin)
	{
		uint16_t pins;

		pins = GPIO_ReadOutputData(port);
		if (pins & pin) 
		{
			GPIO_ResetBits(port, pin);
		} 
		else
		{
			GPIO_SetBits(port, pin);
		}
	}
}


unsigned char pin_read_in(uint32_t rcc,GPIO_TypeDef* port,uint16_t pin)
{
	unsigned char dat = 0;

	if (rcc && port && pin)
	{
		dat = GPIO_ReadInputDataBit(port,pin);
	}

	return (dat ? 1 : 0);
}






