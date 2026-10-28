#include "init.h"
#include "includes.h"



unsigned int dbgsend(void *buf,unsigned int len)
{
	SEGGER_RTT_Write(0,buf,len);
	//_usart_send_data(1,buf,len);
	return len;
}

OS_SEM dbg_tx;

void dbg_create_sem(void)
{
	os_create_sem(&dbg_tx,"dbgtx",1);
}

void dbg_wait_sem(void)
{
	os_sem_pend(&dbg_tx,0);
}

void dbg_post_sem(void)
{
	os_sem_post(&dbg_tx);
}

unsigned int dbgread(void *buf,unsigned int ulBufSize,unsigned int ulTimeoutMs)
{
	unsigned int rlen = 0;

	rlen = SEGGER_RTT_Read(0,buf,ulBufSize);
	return rlen;
}

void bsp_init(void)
{
	gpio_init();

	update_clock_to_72mhz();//100mHz

	//测量函数运行时间功能 初始化
	cpu_ts_init();

	//调试串口
	SEGGER_RTT_Init();
	//usart0_init();
	DBG_Init(0,0,115200,0,dbg_create_sem,dbg_wait_sem,dbg_post_sem,dbgsend,dbgread);
	//预留备用串口
	//DBG_Init(1,usart2_init,115200,0,0,0,0,usart2_send_data,usart2_read);

	Set_DBG_Level(LEVEL2);
	//mpu UART
	set_mpu_uart_bps(1000000);
	//set_mpu_uart_bps(921600);
	usart_init(0,get_mpu_uart_bps(),0);

	//GPS uart
	usart_init(2,9600,0);

	//bt/wifi uart
	usart_init(3,115200,0);

	//dbg uart
	//usart_init(1,115200,0);

	DBG_Print(LEVEL0,"Driver Version:%s Compile @ %s %s.\r\n",DRIVER_VERSION,__TIME__,__DATE__);

	ADC1_Init(ADC_MAIN_POWER_CHANNEL);
	ADC1_Init(ADC_BAT_CHANNEL);
	ADC1_Init(ADC_BAT_TEMPERATURE_CHANNEL);
	ADC1_Init(ADC_GPS_ANT_CHANNEL);

	//SPI3_Init();

	IIC_Init(0,delayus,set_sda,set_scl,read_sda,set_sda_output,
				set_sda_input,set_scl_output);

	//定时1ms
	SysTick_Config(100000 - 1);
}


//主电 备用电池 相互转换检测处理
/* 50ms判断一次主电是否掉电（通过主电AD检测），
//是 打开备用电池（IO口EN_3V3_MCU，PE12）
//同时打开EC20供电（IO口EN_EC20_BAT，PE9） 关闭锂电池充电（IO口为EN_BAT，PE7）
*/
void dc_bat_switch_proc(void)
{
	static INT8U s_main_off_cnt = 0;	//连续检测到主电掉电次数
	static INT8U s_main_on_cnt = 0;		//连续检测到主电通电次数
	static INT8U s_dc_bat_status = 0;	//0表示主电供电 1表示电池供电
	unsigned int dc_power = 0;
	static unsigned int last_dc_power = 0;
	static unsigned char first_flag = 0;

	//dc_power = read_main_power_vol();
	set_main_power_vol(dc_power);
	if (s_dc_bat_status == 0)
	{
		//当前主电供电 就监测掉电情况
		if (dc_power < 8500)
		{
			s_main_off_cnt++;
		}
		else
		{
			s_main_off_cnt = 0;
		}
		if (s_main_off_cnt >= 1)
		{
			//掉电切换
			s_main_off_cnt = 0;
			s_dc_bat_status = 1;

			//switch_to_bat();
			set_power_supply_mode(1);
		}

		if (first_flag)	//第一次进来的时候 first_flag为0
		{	
			unsigned int temp = 0;

			if (dc_power < last_dc_power)
			{
				temp = last_dc_power - dc_power;	
			}

			if (temp > 800)
			{
				//掉电切换
				s_main_off_cnt = 0;
				s_dc_bat_status = 1;
				//switch_to_bat();
				set_power_supply_mode(1);
			}
		}
	}
	else
	{
		//当前电池供电 就监测上电情况
		if (dc_power < 8500)
		{
			s_main_on_cnt = 0;
		}
		else
		{
			s_main_on_cnt++;
		}

		if (s_main_on_cnt >= 200)
		{
			//上电切换
			s_main_on_cnt = 0;
			s_dc_bat_status = 0;
			//switch_to_dc();
			set_power_supply_mode(0);
		}

	}

	last_dc_power = dc_power;
	first_flag = 1;
}


void SysTick_Handler(void)
{
	static unsigned int s_second_cnt = 0;
	static unsigned int s_ms_cnt = 0;
	static unsigned int s_msmscnt = 0;
	timer_one_ms_func pfunc = 0;

	s_msmscnt++;
	if (s_msmscnt >= 100)
	{
		s_msmscnt = 0;
		//led_proc();
	}

	s_ms_cnt++;
	if (s_ms_cnt >= 5)
	{
		s_ms_cnt = 0;
		//dc_bat_switch_proc();
	}
	s_second_cnt++;
	if (s_second_cnt >= 1000)
	{
		RunTimeAdd();
		s_second_cnt = 0;
	}

	pfunc = get_timer_one_ms_func_ptr();
	if (pfunc)
	{
		pfunc();
	}

	usart_rx_timing(0);		//mpu uart
	usart_rx_timing(1);		//dbg uart
	usart_rx_timing(2);		//gps uart
	usart_rx_timing(3); 	//bt/wifi uart

	os_tick();
}





