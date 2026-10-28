#ifndef __ADC_H__
#define __ADC_H__
#ifdef __cplusplus
extern "C" {
#endif


//channel:0-15
extern void ADC1_Init(uint8_t channel);
extern void ADC2_Init(uint8_t channel);
extern void ADC3_Init(uint8_t channel);

//channel:0-15
extern uint16_t GetADCValue(ADC_TypeDef* ADCx,uint8_t channel);


#ifdef __cplusplus
}
#endif
#endif

