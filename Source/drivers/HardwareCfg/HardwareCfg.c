#include "HardwareCfg.h"

#define VECT_TAB_OFFSET  0x08004000
unsigned int HSE_VALUE = 25000000;


void reset_rcc_clock(void)
{
	/* Reset the RCC clock configuration to the default reset state(for debug purpose) */
	/* Set HSION bit */
	RCC->CR |= (uint32_t)0x00000001;
	
	/* Reset SW, HPRE, PPRE1, PPRE2, ADCPRE and MCO bits */
	RCC->CFGR &= (uint32_t)0xF8FF0000;
	
	/* Reset HSEON, CSSON and PLLON bits */
	RCC->CR &= (uint32_t)0xFEF6FFFF;
	
	/* Reset HSEBYP bit */
	RCC->CR &= (uint32_t)0xFFFBFFFF;
	
	/* Reset PLLSRC, PLLXTPRE, PLLMUL and USBPRE/OTGFSPRE bits */
	RCC->CFGR &= (uint32_t)0xFF80FFFF;
	
	/* Disable all interrupts and clear pending bits  */
	RCC->CIR = 0x009F0000;
}


/**
  * @brief  Selects HSE as System clock source and configure HCLK, PCLK2
  *         and PCLK1 prescalers.
  * @note   This function should be used only after reset.
  * @param  None
  * @retval None
  */
static void set_sys_clock_to_hse(void)
{
  __IO uint32_t StartUpCounter = 0, HSEStatus = 0;
  
  /* SYSCLK, HCLK, PCLK2 and PCLK1 configuration ---------------------------*/    
  /* Enable HSE */    
  RCC->CR |= ((uint32_t)RCC_CR_HSEON);
 
  /* Wait till HSE is ready and if Time out is reached exit */
  do
  {
    HSEStatus = RCC->CR & RCC_CR_HSERDY;
    StartUpCounter++;  
  } while((HSEStatus == 0) && (StartUpCounter != HSE_STARTUP_TIMEOUT));

  if ((RCC->CR & RCC_CR_HSERDY) != RESET)
  {
    HSEStatus = (uint32_t)0x01;
  }
  else
  {
    HSEStatus = (uint32_t)0x00;
  }  

  if (HSEStatus == (uint32_t)0x01)
  {

    /* Enable Prefetch Buffer */
    FLASH->ACR |= FLASH_ACR_PRFTBE;

    /* Flash 0 wait state */
    FLASH->ACR &= (uint32_t)((uint32_t)~FLASH_ACR_LATENCY);


    FLASH->ACR |= (uint32_t)FLASH_ACR_LATENCY_0;

 
    /* HCLK = SYSCLK */
    RCC->CFGR |= (uint32_t)RCC_CFGR_HPRE_DIV1;
      
    /* PCLK2 = HCLK */
    RCC->CFGR |= (uint32_t)RCC_CFGR_PPRE2_DIV1;
    
    /* PCLK1 = HCLK */
    RCC->CFGR |= (uint32_t)RCC_CFGR_PPRE1_DIV1;
    
    /* Select HSE as system clock source */
    RCC->CFGR &= (uint32_t)((uint32_t)~(RCC_CFGR_SW));
    RCC->CFGR |= (uint32_t)RCC_CFGR_SW_HSE;    

    /* Wait till HSE is used as system clock source */
    while ((RCC->CFGR & (uint32_t)RCC_CFGR_SWS) != (uint32_t)0x04)
    {
    }
  }
  else
  { /* If HSE fails to start-up, the application will have wrong clock 
         configuration. User can add here some code to deal with this error */
  }  
}


static void _set_pll_mull(unsigned int _RCC_CFGR_PLLMULL)
{
  __IO uint32_t StartUpCounter = 0, HSEStatus = 0;
  
  /* SYSCLK, HCLK, PCLK2 and PCLK1 configuration ---------------------------*/    
  /* Enable HSE */    
  RCC->CR |= ((uint32_t)RCC_CR_HSEON);
 
  /* Wait till HSE is ready and if Time out is reached exit */
  do
  {
    HSEStatus = RCC->CR & RCC_CR_HSERDY;
    StartUpCounter++;  
  } while((HSEStatus == 0) && (StartUpCounter != HSE_STARTUP_TIMEOUT));

  if ((RCC->CR & RCC_CR_HSERDY) != RESET)
  {
    HSEStatus = (uint32_t)0x01;
  }
  else
  {
    HSEStatus = (uint32_t)0x00;
  }  

  if (HSEStatus == (uint32_t)0x01)
  {
    /* Enable Prefetch Buffer */
    FLASH->ACR |= FLASH_ACR_PRFTBE;

    /* Flash 2 wait state */
    FLASH->ACR &= (uint32_t)((uint32_t)~FLASH_ACR_LATENCY);
    FLASH->ACR |= (uint32_t)FLASH_ACR_LATENCY_2;    

 
    /* HCLK = SYSCLK */
    RCC->CFGR |= (uint32_t)RCC_CFGR_HPRE_DIV1;
      
    /* PCLK2 = HCLK */
    RCC->CFGR |= (uint32_t)RCC_CFGR_PPRE2_DIV1;
    
    /* PCLK1 = HCLK */
    RCC->CFGR |= (uint32_t)RCC_CFGR_PPRE1_DIV2;


   
    /*  PLL configuration: PLLCLK = HSE * 9 = 72 MHz */
    RCC->CFGR &= (uint32_t)((uint32_t)~(RCC_CFGR_PLLSRC | RCC_CFGR_PLLXTPRE |
                                        RCC_CFGR_PLLMULL));
	RCC->CFGR |= (uint32_t)(RCC_CFGR_PLLSRC_HSE | _RCC_CFGR_PLLMULL);


    /* Enable PLL */
    RCC->CR |= RCC_CR_PLLON;

    /* Wait till PLL is ready */
    while((RCC->CR & RCC_CR_PLLRDY) == 0)
    {
    }
    
    /* Select PLL as system clock source */
    RCC->CFGR &= (uint32_t)((uint32_t)~(RCC_CFGR_SW));
    RCC->CFGR |= (uint32_t)RCC_CFGR_SW_PLL;    

    /* Wait till PLL is used as system clock source */
    while ((RCC->CFGR & (uint32_t)RCC_CFGR_SWS) != (uint32_t)0x08)
    {
    }
  }
  else
  { /* If HSE fails to start-up, the application will have wrong clock 
         configuration. User can add here some code to deal with this error */
  }
}


void set_pll_mull(unsigned int _RCC_CFGR_PLLMULL)
{
	reset_rcc_clock();

	_set_pll_mull(_RCC_CFGR_PLLMULL);

	//SCB->VTOR = FLASH_BASE | VECT_TAB_OFFSET; /* Vector Table Relocation in Internal FLASH. */ 
}


void update_clock_to_hse(void)
{
	reset_rcc_clock();
	set_sys_clock_to_hse();

	//SCB->VTOR = FLASH_BASE | VECT_TAB_OFFSET; /* Vector Table Relocation in Internal FLASH. */ 
}

void update_clock_to_hsi(void)
{
	reset_rcc_clock();
	//SCB->VTOR = FLASH_BASE | VECT_TAB_OFFSET; /* Vector Table Relocation in Internal FLASH. */ 
}


void update_clock_to_72mhz(void)
{
	update_clock_to_hse();
	//HSE_VALUE = measure_hse();

	HSE_VALUE = 25000000;
	if (HSE_VALUE == 8000000)
	{
		set_pll_mull(RCC_CFGR_PLLMULL9);
	}

	if (HSE_VALUE == 12000000)
	{
		set_pll_mull(RCC_CFGR_PLLMULL6);
	}

	if (HSE_VALUE == 25000000)
	{
		set_pll_mull(RCC_CFGR_PLLMULL4);
	}
}



void set_gps_led(char is_on)
{
	if (is_on)
	{	
		pin_high(GPS_LED_RCC,GPS_LED_PORT,GPS_LED_PIN);
	}
	else
	{
		pin_low(GPS_LED_RCC,GPS_LED_PORT,GPS_LED_PIN);
	}
}

void set_sys_led(char is_on)
{
	if (is_on)
	{	
		pin_high(SYS_LED_RCC,SYS_LED_PORT,SYS_LED_PIN);
	}
	else
	{
		pin_low(SYS_LED_RCC,SYS_LED_PORT,SYS_LED_PIN);
	}
}

void set_can_led(char is_on)
{
	if (is_on)
	{	
		pin_high(CAN_LED_RCC,CAN_LED_PORT,CAN_LED_PIN);
	}
	else
	{
		pin_low(CAN_LED_RCC,CAN_LED_PORT,CAN_LED_PIN);
	}
}

void set_net_led(char is_on)
{
	if (is_on)
	{	
		pin_high(NET_LED_RCC,NET_LED_PORT,NET_LED_PIN);
	}
	else
	{
		pin_low(NET_LED_RCC,NET_LED_PORT,NET_LED_PIN);
	}
}

void set_out1_led(char is_on)
{
	if (is_on)
	{	
		pin_high(OUT1_EN_RCC,OUT1_EN_PORT,OUT1_EN_PIN);
	}
	else
	{
		pin_low(OUT1_EN_RCC,OUT1_EN_PORT,OUT1_EN_PIN);
	}
}

void set_out2_led(char is_on)
{
	if (is_on)
	{	
		pin_high(OUT2_EN_RCC,OUT2_EN_PORT,OUT2_EN_PIN);
	}
	else
	{
		pin_low(OUT2_EN_RCC,OUT2_EN_PORT,OUT2_EN_PIN);
	}
}

unsigned int read_main_power_vol(void)
{
	unsigned int main_power_adc = 0;
	unsigned int val = 0;

	main_power_adc = GetADCValue(ADC_MAIN_POWER_ADC_TYPE,ADC_MAIN_POWER_CHANNEL);
	add_main_power_ad_val_to_list(main_power_adc);
	/* 11:1 divider, 12-bit ADC, 3.3V ref, plus diode offset.
	 * Same unit as MAIN_POWER_BOOT_MIN_MV / MAIN_POWER_UV_ENTER_MV.
	 */
	val = (main_power_adc * MAIN_POWER_ADC_VREF_MV * MAIN_POWER_ADC_SCALE) >> MAIN_POWER_ADC_SHIFT;
	val += MAIN_POWER_DIODE_MV;

	//DBG_Print(LEVEL0,"main_power_adc:%u\r\n",val);
	return val;
}

unsigned int read_bat_temperature_vol(void)
{
	unsigned int adc_val = 0;
	unsigned int val = 0;

	adc_val = GetADCValue(ADC_BAT_TEMPERATURE_ADC_TYPE,ADC_BAT_TEMPERATURE_CHANNEL);
	val = (adc_val * 3300) >> 12;
	return val;
}

unsigned int read_bat_vol(void)
{
	unsigned int bat_adc = 0;
	unsigned int val = 0;
	//100K 62K = 100 / 162
	bat_adc = GetADCValue(ADC_BAT_ADC_TYPE,ADC_BAT_CHANNEL);

	if (bat_adc < 50)
	{
		val = 0;
	}
	else
	{
		//val = ((bat_adc * 3300 * 1) >> 12) * 162 / 100;
		val = (bat_adc * 33 * 162) >> 12;
	}
	return val;
}

//GPS天线电压
unsigned int read_gps_ant_vol(void)
{
	unsigned int ant_adc = 0;
	unsigned int val = 0;

	ant_adc = GetADCValue(ADC_GPS_ANT_ADC_TYPE,ADC_GPS_ANT_CHANNEL);
	add_gps_ant_ad_val_to_list(ant_adc);

	val = (ant_adc * 3300) >> 12;

	return val;
}

char read_acc_status(void)
{
	char sta1 = 0;

	sta1 = pin_read_in(ACC_RCC,ACC_PORT,ACC_PIN);
	return sta1;
}

//mode 0:normal 1:sleep
void hw_work_mode_ctrl(unsigned char mode)
{
	switch (mode)
	{
	case 0:
		pin_low(OUT1_EN_RCC,OUT1_EN_PORT,OUT1_EN_PIN);
		pin_low(OUT2_EN_RCC,OUT2_EN_PORT,OUT2_EN_PIN);

		pin_high(BAT_BACKUP_EN_RCC,BAT_BACKUP_EN_PORT,BAT_BACKUP_EN_PIN);
		pin_low(CHARGE_EN_RCC,CHARGE_EN_PORT,CHARGE_EN_PIN);

		pin_high(SHIFT_EN_RCC,SHIFT_EN_PORT,SHIFT_EN_PIN);
		pin_high(PWR_GPS_EN_RCC,PWR_GPS_EN_PORT,PWR_GPS_EN_PIN);
		pin_high(BT_POWER_EN_RCC,BT_POWER_EN_PORT,BT_POWER_EN_PIN);

		pin_high(GPRS_PWR_RCC,GPRS_PWR_PORT,GPRS_PWR_PIN);
		pin_high(MCU_WAKE_UP_4G_RCC,MCU_WAKE_UP_4G_PORT,MCU_WAKE_UP_4G_PIN);
		
		pin_low(GPRS_DTR_RCC,GPRS_DTR_PORT,GPRS_DTR_PIN);
		pin_low(GPRS_ON_OFF_RCC,GPRS_ON_OFF_PORT,GPRS_ON_OFF_PIN);
		pin_low(GPRS_RST_RCC,GPRS_RST_PORT,GPRS_RST_PIN);

		pin_high(CAN0_EN_RCC,CAN0_EN_PORT,CAN0_EN_PIN);
		pin_high(CAN0_STB_RCC,CAN0_STB_PORT,CAN0_STB_PIN);
		pin_high(CAN0_WAKE_RCC,CAN0_WAKE_PORT,CAN0_WAKE_PIN);

		pin_low(CAN1_EN_RCC,CAN1_EN_PORT,CAN1_EN_PIN);
		pin_high(CAN1_STB_RCC,CAN1_STB_PORT,CAN1_STB_PIN);
		pin_high(CAN1_WAKE_RCC,CAN1_WAKE_PORT,CAN1_WAKE_PIN);

	break;
	case 1:


	break;
	default:break;
	}
}

void gpio_init(void)
{
	_gpio_init(SHIFT_EN_RCC,SHIFT_EN_PORT,SHIFT_EN_PIN,SHIFT_EN_PIN_MODE);

	_gpio_init(CAN_LED_RCC,CAN_LED_PORT,CAN_LED_PIN,CAN_LED_PIN_MODE);
	_gpio_init(NET_LED_RCC,NET_LED_PORT,NET_LED_PIN,NET_LED_PIN_MODE);
	_gpio_init(GPS_LED_RCC,GPS_LED_PORT,GPS_LED_PIN,GPS_LED_PIN_MODE);
	_gpio_init(SYS_LED_RCC,SYS_LED_PORT,SYS_LED_PIN,SYS_LED_PIN_MODE);

	_gpio_init(OUT1_EN_RCC,OUT1_EN_PORT,OUT1_EN_PIN,OUT1_EN_PIN_MODE);
	_gpio_init(OUT2_EN_RCC,OUT2_EN_PORT,OUT2_EN_PIN,OUT2_EN_PIN_MODE);


	_gpio_init(BT_POWER_EN_RCC,BT_POWER_EN_PORT,BT_POWER_EN_PIN,BT_POWER_EN_PIN_MODE);

	_gpio_init(BAT_BACKUP_EN_RCC,BAT_BACKUP_EN_PORT,BAT_BACKUP_EN_PIN,BAT_BACKUP_EN_PIN_MODE);
	_gpio_init(CHARGE_STATUS_RCC,CHARGE_STATUS_PORT,CHARGE_STATUS_PIN,CHARGE_STATUS_PIN_MODE);
	_gpio_init(CHARGE_EN_RCC,CHARGE_EN_PORT,CHARGE_EN_PIN,CHARGE_EN_PIN_MODE);

	_gpio_init(ACC_RCC,ACC_PORT,ACC_PIN,ACC_PIN_MODE);
	_gpio_init(PWR_GPS_EN_RCC,PWR_GPS_EN_PORT,PWR_GPS_EN_PIN,PWR_GPS_EN_PIN_MODE);

	//4G引脚	
	_gpio_init(GPRS_PWR_RCC,GPRS_PWR_PORT,GPRS_PWR_PIN,GPRS_PWR_PIN_MODE);
	_gpio_init(GPRS_RST_RCC,GPRS_RST_PORT,GPRS_RST_PIN,GPRS_RST_PIN_MODE);
	_gpio_init(GPRS_ON_OFF_RCC,GPRS_ON_OFF_PORT,GPRS_ON_OFF_PIN,GPRS_ON_OFF_PIN_MODE);
	_gpio_init(MCU_WAKE_UP_4G_RCC,MCU_WAKE_UP_4G_PORT,MCU_WAKE_UP_4G_PIN,MCU_WAKE_UP_4G_PIN_MODE);
	_gpio_init(APU_STATUS_DET_4G_RCC,APU_STATUS_DET_4G_PORT,APU_STATUS_DET_4G_PIN,APU_STATUS_DET_4G_PIN_MODE);
	_gpio_init(GPRS_DTR_RCC,GPRS_DTR_PORT,GPRS_DTR_PIN,GPRS_DTR_PIN_MODE);
	_gpio_init(GPRS_RI_RCC,GPRS_RI_PORT,GPRS_RI_PIN,GPRS_RI_PIN_MODE);


	_gpio_init(IO1_IN_RCC,IO1_IN_PORT,IO1_IN_PIN,IO1_IN_PIN_MODE);
	_gpio_init(IO2_IN_RCC,IO2_IN_PORT,IO2_IN_PIN,IO2_IN_PIN_MODE);
	_gpio_init(IO3_IN_RCC,IO3_IN_PORT,IO3_IN_PIN,IO3_IN_PIN_MODE);
	_gpio_init(IO4_IN_RCC,IO4_IN_PORT,IO4_IN_PIN,IO4_IN_PIN_MODE);	



	//CAN
	_gpio_init(CAN0_EN_RCC,CAN0_EN_PORT,CAN0_EN_PIN,CAN0_EN_PIN_MODE);
	_gpio_init(CAN1_EN_RCC,CAN1_EN_PORT,CAN1_EN_PIN,CAN1_EN_PIN_MODE);
	_gpio_init(CAN0_STB_RCC,CAN0_STB_PORT,CAN0_STB_PIN,CAN0_STB_PIN_MODE);
	_gpio_init(CAN1_STB_RCC,CAN1_STB_PORT,CAN1_STB_PIN,CAN1_STB_PIN_MODE);
	_gpio_init(CAN0_WAKE_RCC,CAN0_WAKE_PORT,CAN0_WAKE_PIN,CAN0_WAKE_PIN_MODE);
	_gpio_init(CAN1_WAKE_RCC,CAN1_WAKE_PORT,CAN1_WAKE_PIN,CAN1_WAKE_PIN_MODE);


	_gpio_init(TLY_INT_RCC,TLY_INT_PORT,TLY_INT_PIN,TLY_INT_PIN_MODE);
	_gpio_init(TLY_INT1_RCC,TLY_INT1_PORT,TLY_INT1_PIN,TLY_INT1_PIN_MODE);

	_gpio_init(MCU_CS_RCC,MCU_CS_PORT,MCU_CS_PIN,MCU_CS_PIN_MODE);
	_gpio_init(SPI_CLK_RCC,SPI_CLK_PORT,SPI_CLK_PIN,SPI_CLK_PIN_MODE);
	_gpio_init(SPI_MISO_RCC,SPI_MISO_PORT,SPI_MISO_PIN,SPI_MISO_PIN_MODE);
	_gpio_init(SPI_MOSI_RCC,SPI_MOSI_PORT,SPI_MOSI_PIN,SPI_MOSI_PIN_MODE);


	//模拟IIC SCL SDA	
	_gpio_init(MN_IIC_SCL_RCC,MN_IIC_SCL_PORT,MN_IIC_SCL_PIN,MN_IIC_SCL_PIN_MODE);
	_gpio_init(MN_IIC_SDA_RCC,MN_IIC_SDA_PORT,MN_IIC_SDA_PIN,MN_IIC_SDA_PIN_MODE);



	set_sys_led(0);

	GPIO_PinRemapConfig(GPIO_Remap_SWJ_NoJTRST,ENABLE);
	//normal work mode
	hw_work_mode_ctrl(0);
}





void set_sda(unsigned int val)
{
	if (val)
	{
		pin_high(MN_IIC_SDA_RCC,MN_IIC_SDA_PORT,MN_IIC_SDA_PIN);
	}
	else
	{
		pin_low(MN_IIC_SDA_RCC,MN_IIC_SDA_PORT,MN_IIC_SDA_PIN);
	}
}

void set_scl(unsigned int val)
{
	if (val)
	{
		pin_high(MN_IIC_SCL_RCC,MN_IIC_SCL_PORT,MN_IIC_SCL_PIN);
	}
	else
	{
		pin_low(MN_IIC_SCL_RCC,MN_IIC_SCL_PORT,MN_IIC_SCL_PIN);
	}
}


unsigned char read_sda(void)
{
	return pin_read_in(MN_IIC_SDA_RCC,MN_IIC_SDA_PORT,MN_IIC_SDA_PIN);
}


void set_sda_output(void)
{
	_gpio_init(MN_IIC_SDA_RCC,MN_IIC_SDA_PORT,MN_IIC_SDA_PIN,GPIO_Mode_Out_PP);
}


void set_sda_input(void)
{
	_gpio_init(MN_IIC_SDA_RCC,MN_IIC_SDA_PORT,MN_IIC_SDA_PIN,GPIO_Mode_IN_FLOATING);
}

void set_scl_output(void)
{
	_gpio_init(MN_IIC_SCL_RCC,MN_IIC_SCL_PORT,MN_IIC_SCL_PIN,GPIO_Mode_Out_PP);
}

void delayus(unsigned int t)
{
	volatile unsigned int i = 0;
	volatile unsigned int j = 0;

	for (j = 0; j < 5; j++)
	{
		for (i = 0; i < t; i++);
	}
}

uint16_t GetCpuID(void *pOutBuf,uint16_t buflen)
{
	INT8U len = 0;
	u32 temp0,temp1,temp2;
	uint16_t ret = 0;
	uint8_t *cpuid = (uint8_t *)pOutBuf;

	temp0 = *(__IO u32*)(0x1FFFF7E8);
	temp1 = *(__IO u32*)(0x1FFFF7EC);
	temp2 = *(__IO u32*)(0x1FFFF7F0);

	if (cpuid && (buflen >= 12))
	{
		memset(pOutBuf,0,buflen);
		cpuid[len++] = temp0 >> 24;
		cpuid[len++] = temp0 >> 16;
		cpuid[len++] = temp0 >> 8;
		cpuid[len++] = temp0;
		
		cpuid[len++] = temp1 >> 24;
		cpuid[len++] = temp1 >> 16;
		cpuid[len++] = temp1 >> 8;
		cpuid[len++] = temp1;
		
		cpuid[len++] = temp2 >> 24;
		cpuid[len++] = temp2 >> 16;
		cpuid[len++] = temp2 >> 8;
		cpuid[len++] = temp2;
		ret = len;
	}
	else
	{
		ret = 0;
	}
	return ret;
}

unsigned int GetCpuFlashSize(void)
{
    unsigned int Stm32_Flash_Size = 0;

    Stm32_Flash_Size = *(u16*)(0x1FFFF7E0);//闪存容量寄存器
    return Stm32_Flash_Size;
}

