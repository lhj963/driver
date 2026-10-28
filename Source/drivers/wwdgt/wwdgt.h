#ifndef __WWDGT_H__
#define __WWDGT_H__


#ifdef __cplusplus
extern "C" {
#endif

void WWDG_Init(uint8_t tr,uint8_t wr,uint32_t fprer);
void WWDG_IRQHandler(void);

#ifdef __cplusplus
}
#endif

#endif
