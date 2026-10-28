#ifndef __GPIO_H__
#define __GPIO_H__

#ifdef __cplusplus
extern "C" {
#endif

extern void _gpio_init(uint32_t rcc,GPIO_TypeDef* port,uint16_t pin,GPIOMode_TypeDef mode);

extern void pin_low(uint32_t rcc,GPIO_TypeDef* port,uint16_t pin);

extern void pin_high(uint32_t rcc,GPIO_TypeDef* port,uint16_t pin);

extern void pin_toggle(uint32_t rcc,GPIO_TypeDef* port,uint16_t pin);


extern unsigned char pin_read_in(uint32_t rcc,GPIO_TypeDef* port,uint16_t pin);


#ifdef __cplusplus
}
#endif

#endif


