#ifndef __HARDWARECFG_H__
#define __HARDWARECFG_H__
#ifdef __cplusplus
extern "C" {
#endif

//版本名称必须以BYSD_DRIVER开头作为标识 涉及到远程升级功能 BOOT是以BYSD_DRIVER作为判定驱动文件的依据
#define DRIVER_VERSION 				"BYSD_DRIVER_GD32_V2.0.92"
#define HARDWARE_VERSION						3

//boot层
#define BOOT_START_ADDR 						0x08000000
#define BOOT_SIZE								(16 * 1024)
#define BOOT_END_ADDR 							(BOOT_START_ADDR + BOOT_SIZE)

//驱动层
#define DRIVER_START_ADDR 						BOOT_END_ADDR
#define DRIVER_SIZE								(48 * 1024)
#define DRIVER_END_ADDR 						(DRIVER_START_ADDR + DRIVER_SIZE)

/* Internal flash (readme: GD32F305, 512KB), 2KB pages.
 * 0x08000000 boot    16KB
 * 0x08004000 driver  48KB
 * 0x08010000 app     until the OTA slot
 * 0x08030000 OTA image 188KB
 * then one page each: update info, param store, MPU-timeout log.
 * Update info must stay outside the boot window. Param and the
 * timeout log must stay outside the app region that sits between
 * APP_START and the OTA slot.
 */
#define MCU_FLASH_SIZE							(512 * 1024)
#define MCU_FLASH_PAGE_SIZE						(2 * 1024)
#define MCU_FLASH_END_ADDR						(BOOT_START_ADDR + MCU_FLASH_SIZE)

//app层. Ends where the OTA slot begins (not the old 0x00040000 alias).
#define APP_START_ADDR 							DRIVER_END_ADDR
#define APP_END_ADDR 							(BOOT_START_ADDR + (192 * 1024))

#define UPDATE_FILE_START_ADDR					APP_END_ADDR
#define UPDATE_FILE_MAX_SIZE					(188 * 1024)
#define UPDATE_FILE_END_ADDR					(UPDATE_FILE_START_ADDR + UPDATE_FILE_MAX_SIZE)

#define UPDATE_INFO_START_ADDR					UPDATE_FILE_END_ADDR
#define PARAM_STORE_ADDR						(UPDATE_INFO_START_ADDR + MCU_FLASH_PAGE_SIZE)
#define MPU_TIMEOUT_LOG_ADDR					(PARAM_STORE_ADDR + MCU_FLASH_PAGE_SIZE)
/* Parameters lived on this page before the metadata move (0x0802F800). */
#define PARAM_STORE_LEGACY_ADDR					(UPDATE_FILE_START_ADDR - MCU_FLASH_PAGE_SIZE)

#define SOFTWARE_INFO_OFFSET					0x1000
#define SOFTWARE_INFO_ADDR 						(DRIVER_START_ADDR + SOFTWARE_INFO_OFFSET)

#define APP_SOFTWARE_INFO_ADDR 					(APP_START_ADDR + SOFTWARE_INFO_OFFSET)

#define MANUFACTURER_FLAG       				"BYSD"			//厂商标识


#define ADC_MAIN_POWER_ADC_TYPE					ADC1	//ADC主电源电压监测通道
#define ADC_MAIN_POWER_CHANNEL					11

/* Main-power scale used by read_main_power_vol(), in reported millivolts:
 * reported = (adc * 3300 * 11) / 4096 + 550.
 * Divider is 11:1. 550 mV is the series-diode offset baked into the
 * reported value. The old "100K/560K = 10/66" note is not this circuit.
 * Thresholds below are in the same reported millivolts.
 * Boot stays blocked below 9.00V reported. Undervoltage (charger off,
 * backup on) trips at 7.60V reported and restores only after the
 * reported voltage recovers to the boot threshold.
 */
#define MAIN_POWER_ADC_SCALE					11
#define MAIN_POWER_ADC_VREF_MV					3300
#define MAIN_POWER_ADC_SHIFT					12
#define MAIN_POWER_DIODE_MV						550
#define MAIN_POWER_BOOT_MIN_MV					9000
#define MAIN_POWER_UV_ENTER_MV					7600
#define MAIN_POWER_UV_RECOVER_MV				MAIN_POWER_BOOT_MIN_MV

#define ADC_BAT_ADC_TYPE						ADC1	//ADC电池电压监测通道
#define ADC_BAT_CHANNEL							10

#define ADC_BAT_TEMPERATURE_ADC_TYPE			ADC1	//电池温度监测通道
#define ADC_BAT_TEMPERATURE_CHANNEL            	12

//测量GPS天线电压ADC引脚 GPS天线电压判断，980MV以下开路，980MV以上正常 0V短路
#define ADC_GPS_ANT_ADC_TYPE					ADC1
#define ADC_GPS_ANT_CHANNEL						9




//MCO输出引脚
#define MCO_RCC										RCC_APB2Periph_GPIOA
#define MCO_PORT									GPIOA
#define MCO_PIN										GPIO_Pin_8
#define MCO_PIN_MODE								GPIO_Mode_AF_PP

//OUT1_EN
#define OUT1_EN_RCC									RCC_APB2Periph_GPIOE
#define OUT1_EN_PORT								GPIOE
#define OUT1_EN_PIN									GPIO_Pin_8
#define OUT1_EN_PIN_MODE							GPIO_Mode_Out_PP

//OUT2_EN
#define OUT2_EN_RCC									RCC_APB2Periph_GPIOE
#define OUT2_EN_PORT								GPIOE
#define OUT2_EN_PIN									GPIO_Pin_9
#define OUT2_EN_PIN_MODE							GPIO_Mode_Out_PP


//IO1_IN
#define IO1_IN_RCC									RCC_APB2Periph_GPIOE
#define IO1_IN_PORT									GPIOE
#define IO1_IN_PIN									GPIO_Pin_10
#define IO1_IN_PIN_MODE								GPIO_Mode_IN_FLOATING

//IO2_IN
#define IO2_IN_RCC									RCC_APB2Periph_GPIOE
#define IO2_IN_PORT									GPIOE
#define IO2_IN_PIN									GPIO_Pin_11
#define IO2_IN_PIN_MODE								GPIO_Mode_IN_FLOATING

#define IO3_IN_RCC									RCC_APB2Periph_GPIOE
#define IO3_IN_PORT									GPIOE
#define IO3_IN_PIN									GPIO_Pin_12
#define IO3_IN_PIN_MODE								GPIO_Mode_IN_FLOATING

#define IO4_IN_RCC									RCC_APB2Periph_GPIOE
#define IO4_IN_PORT									GPIOE
#define IO4_IN_PIN									GPIO_Pin_13
#define IO4_IN_PIN_MODE								GPIO_Mode_IN_FLOATING


//BT_POWER_EN
#define BT_POWER_EN_RCC								0
#define BT_POWER_EN_PORT							0
#define BT_POWER_EN_PIN								0
#define BT_POWER_EN_PIN_MODE						GPIO_Mode_Out_PP


//BAT_BACKUP_EN
#define BAT_BACKUP_EN_RCC							RCC_APB2Periph_GPIOE
#define BAT_BACKUP_EN_PORT							GPIOE
#define BAT_BACKUP_EN_PIN							GPIO_Pin_3
#define BAT_BACKUP_EN_PIN_MODE						GPIO_Mode_Out_PP

//PWR_GPS_EN
#define PWR_GPS_EN_RCC								RCC_APB2Periph_GPIOE
#define PWR_GPS_EN_PORT								GPIOE
#define PWR_GPS_EN_PIN								GPIO_Pin_4
#define PWR_GPS_EN_PIN_MODE							GPIO_Mode_Out_PP

//CHARGE_STATUS 低电平表示充电 高电平表示未充电
#define CHARGE_STATUS_RCC							RCC_APB2Periph_GPIOE
#define CHARGE_STATUS_PORT							GPIOE
#define CHARGE_STATUS_PIN							GPIO_Pin_5
#define CHARGE_STATUS_PIN_MODE						GPIO_Mode_IN_FLOATING

//CHARGE_EN
#define CHARGE_EN_RCC								RCC_APB2Periph_GPIOA
#define CHARGE_EN_PORT								GPIOA
#define CHARGE_EN_PIN								GPIO_Pin_1
#define CHARGE_EN_PIN_MODE							GPIO_Mode_Out_PP


//ACC引脚
#define ACC_RCC										RCC_APB2Periph_GPIOA
#define ACC_PORT									GPIOA
#define ACC_PIN										GPIO_Pin_0
#define ACC_PIN_MODE								GPIO_Mode_IN_FLOATING

//CAN灯引脚
#define CAN_LED_RCC									RCC_APB2Periph_GPIOD
#define CAN_LED_PORT								GPIOD
#define CAN_LED_PIN									GPIO_Pin_4
#define CAN_LED_PIN_MODE							GPIO_Mode_Out_PP

//网络灯引脚
#define NET_LED_RCC									RCC_APB2Periph_GPIOD
#define NET_LED_PORT								GPIOD
#define NET_LED_PIN									GPIO_Pin_6
#define NET_LED_PIN_MODE							GPIO_Mode_Out_PP

//系统灯引脚
#define SYS_LED_RCC									RCC_APB2Periph_GPIOD
#define SYS_LED_PORT								GPIOD
#define SYS_LED_PIN									GPIO_Pin_5
#define SYS_LED_PIN_MODE							GPIO_Mode_Out_PP

//GPS灯引脚
#define GPS_LED_RCC									RCC_APB2Periph_GPIOD
#define GPS_LED_PORT								GPIOD
#define GPS_LED_PIN									GPIO_Pin_3
#define GPS_LED_PIN_MODE							GPIO_Mode_Out_PP

//SHIFT_EN
#define SHIFT_EN_RCC								RCC_APB2Periph_GPIOE
#define SHIFT_EN_PORT								GPIOE
#define SHIFT_EN_PIN								GPIO_Pin_14
#define SHIFT_EN_PIN_MODE							GPIO_Mode_Out_PP

//APU_STATUS_DET_4G
#define APU_STATUS_DET_4G_RCC						RCC_APB2Periph_GPIOD
#define APU_STATUS_DET_4G_PORT						GPIOD
#define APU_STATUS_DET_4G_PIN						GPIO_Pin_14
#define APU_STATUS_DET_4G_PIN_MODE					GPIO_Mode_IN_FLOATING

//GPRS_DTR
#define GPRS_DTR_RCC								RCC_APB2Periph_GPIOD
#define GPRS_DTR_PORT								GPIOD
#define GPRS_DTR_PIN								GPIO_Pin_13
#define GPRS_DTR_PIN_MODE							GPIO_Mode_Out_PP

//GPRS_RI
#define GPRS_RI_RCC									RCC_APB2Periph_GPIOD
#define GPRS_RI_PORT								GPIOD
#define GPRS_RI_PIN									GPIO_Pin_15
#define GPRS_RI_PIN_MODE							GPIO_Mode_IN_FLOATING

//GPRS_PWR   4G模块供电控制引脚  1打开 0关闭
#define GPRS_PWR_RCC								RCC_APB2Periph_GPIOE
#define GPRS_PWR_PORT								GPIOE
#define GPRS_PWR_PIN								GPIO_Pin_15
#define GPRS_PWR_PIN_MODE							GPIO_Mode_Out_PP

//GPRS_RST   4G RST引脚  1NOT RST 0 RST
#define GPRS_RST_RCC								RCC_APB2Periph_GPIOD
#define GPRS_RST_PORT								GPIOD
#define GPRS_RST_PIN								GPIO_Pin_12
#define GPRS_RST_PIN_MODE							GPIO_Mode_Out_PP


//GPRS_ON_OFF  GPRS_ON_OFF引脚  1NOT RST 0 RST
#define GPRS_ON_OFF_RCC								RCC_APB2Periph_GPIOD
#define GPRS_ON_OFF_PORT							GPIOD
#define GPRS_ON_OFF_PIN								GPIO_Pin_11
#define GPRS_ON_OFF_PIN_MODE						GPIO_Mode_Out_PP


//MCU_WAKE_UP_4G  MCU_WAKE_UP_4G引脚  1WAKE UP 0NOT WAKE UP
#define MCU_WAKE_UP_4G_RCC							RCC_APB2Periph_GPIOB
#define MCU_WAKE_UP_4G_PORT							GPIOB
#define MCU_WAKE_UP_4G_PIN							GPIO_Pin_15
#define MCU_WAKE_UP_4G_PIN_MODE						GPIO_Mode_Out_PP


//CAN0_EN
#define CAN0_EN_RCC									RCC_APB2Periph_GPIOA
#define CAN0_EN_PORT								GPIOA
#define CAN0_EN_PIN									GPIO_Pin_8
#define CAN0_EN_PIN_MODE							GPIO_Mode_Out_PP


//CAN1_EN
#define CAN1_EN_RCC									RCC_APB2Periph_GPIOB
#define CAN1_EN_PORT								GPIOB
#define CAN1_EN_PIN									GPIO_Pin_14
#define CAN1_EN_PIN_MODE							GPIO_Mode_Out_PP

//CAN0_STB
#define CAN0_STB_RCC								RCC_APB2Periph_GPIOC
#define CAN0_STB_PORT								GPIOC
#define CAN0_STB_PIN								GPIO_Pin_9
#define CAN0_STB_PIN_MODE							GPIO_Mode_Out_PP

//CAN1_STB
#define CAN1_STB_RCC								RCC_APB2Periph_GPIOB
#define CAN1_STB_PORT								0
#define CAN1_STB_PIN								0
#define CAN1_STB_PIN_MODE							GPIO_Mode_Out_PP

//CAN0_WAKE
#define CAN0_WAKE_RCC								RCC_APB2Periph_GPIOC
#define CAN0_WAKE_PORT								GPIOC
#define CAN0_WAKE_PIN								GPIO_Pin_6
#define CAN0_WAKE_PIN_MODE							GPIO_Mode_Out_PP

//CAN1_WAKE
#define CAN1_WAKE_RCC								RCC_APB2Periph_GPIOC
#define CAN1_WAKE_PORT								0
#define CAN1_WAKE_PIN								0
#define CAN1_WAKE_PIN_MODE							GPIO_Mode_Out_PP

//CAN0_RX
#define CAN0_RX_RCC									RCC_APB2Periph_GPIOA
#define CAN0_RX_PORT								GPIOA
#define CAN0_RX_PIN									GPIO_Pin_11
#define CAN0_RX_PIN_MODE							GPIO_Mode_IN_FLOATING

//CAN1_RX
#define CAN1_RX_RCC									RCC_APB2Periph_GPIOB
#define CAN1_RX_PORT								GPIOB
#define CAN1_RX_PIN									GPIO_Pin_12
#define CAN1_RX_PIN_MODE							GPIO_Mode_IN_FLOATING



//陀螺仪中断引脚 TLY_INT
#define TLY_INT_RCC									RCC_APB2Periph_GPIOC
#define TLY_INT_PORT								GPIOC
#define TLY_INT_PIN									GPIO_Pin_5
#define TLY_INT_PIN_MODE							GPIO_Mode_IN_FLOATING


//陀螺仪中断引脚 TLY_INT1
#define TLY_INT1_RCC								RCC_APB2Periph_GPIOB
#define TLY_INT1_PORT								GPIOB
#define TLY_INT1_PIN								GPIO_Pin_0
#define TLY_INT1_PIN_MODE							GPIO_Mode_IN_FLOATING


//MN_IIC_SCL
#define MN_IIC_SCL_RCC								RCC_APB2Periph_GPIOB
#define MN_IIC_SCL_PORT								GPIOB
#define MN_IIC_SCL_PIN								GPIO_Pin_6
#define MN_IIC_SCL_PIN_MODE							GPIO_Mode_Out_PP

//MN_IIC_SDA
#define MN_IIC_SDA_RCC								RCC_APB2Periph_GPIOB
#define MN_IIC_SDA_PORT								GPIOB
#define MN_IIC_SDA_PIN								GPIO_Pin_7
#define MN_IIC_SDA_PIN_MODE							GPIO_Mode_Out_PP


//MCU被选中引脚 MCU_CS
#define MCU_CS_RCC									RCC_APB2Periph_GPIOA
#define MCU_CS_PORT									GPIOA
#define MCU_CS_PIN									GPIO_Pin_15
#define MCU_CS_PIN_MODE								GPIO_Mode_IN_FLOATING


//SPI_CLK
#define SPI_CLK_RCC									RCC_APB2Periph_GPIOB
#define SPI_CLK_PORT								GPIOB
#define SPI_CLK_PIN									GPIO_Pin_3
#define SPI_CLK_PIN_MODE							GPIO_Mode_IN_FLOATING

//SPI_MISO
#define SPI_MISO_RCC								RCC_APB2Periph_GPIOB
#define SPI_MISO_PORT								GPIOB
#define SPI_MISO_PIN								GPIO_Pin_4
#define SPI_MISO_PIN_MODE							GPIO_Mode_IN_FLOATING

//SPI_MOSI
#define SPI_MOSI_RCC								RCC_APB2Periph_GPIOB
#define SPI_MOSI_PORT								GPIOB
#define SPI_MOSI_PIN								GPIO_Pin_5
#define SPI_MOSI_PIN_MODE							GPIO_Mode_IN_FLOATING



extern void gpio_init(void);

extern char read_acc_status(void);


//测量主电源电压 电池电压ADC
extern unsigned int read_main_power_vol(void);
extern unsigned int read_bat_vol(void);
extern unsigned int read_bat_temperature_vol(void);
extern unsigned int read_gps_ant_vol(void);



//LED相关接口
extern void set_gps_led(char is_on);
extern void set_sys_led(char is_on);
extern void set_can_led(char is_on);
extern void set_net_led(char is_on);

extern void set_out1_led(char is_on);
extern void set_out2_led(char is_on);


//模拟IIC相关接口
extern void set_sda(unsigned int val);
extern void set_scl(unsigned int val);
extern unsigned char read_sda(void);
extern void set_sda_output(void);
extern void set_sda_input(void);
extern void set_scl_output(void);
extern void delayus(unsigned int t);



extern void update_clock_to_72mhz(void);


extern uint16_t GetCpuID(void *pOutBuf,uint16_t buflen);
extern unsigned int GetCpuFlashSize(void);


#ifdef __cplusplus
}
#endif


#endif

