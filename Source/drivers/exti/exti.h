#ifndef __EXTI_H__
#define __EXTI_H__

#ifdef __cplusplus
extern "C" {
#endif

#define __USE_UCOS__ 				0

#define EXIT_PreemptionPriority     1


extern void exit_init(uint32_t rcc,GPIO_TypeDef* port,
					uint16_t pin,GPIOMode_TypeDef mode,
					void (*handler)(void)
					);

extern void enable_pvd_monitor(void (*pvd_handler)(void));



#ifdef __cplusplus
}
#endif

#endif

