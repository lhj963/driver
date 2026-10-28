#include "task.h"


#define TASK0_ID 0
#define TASK1_ID 1
#define TASK2_ID 2
#define TASK3_ID 3

#define TASK0_STK_SIZE 480
#define TASK1_STK_SIZE 256
#define TASK2_STK_SIZE 100
#define TASK3_STK_SIZE 320


OS_STK stk_task0[TASK0_STK_SIZE] = {0};
//OS_STK stk_task1[TASK1_STK_SIZE] = {0};
//OS_STK stk_task2[TASK2_STK_SIZE] = {0};
OS_STK stk_task3[TASK3_STK_SIZE] = {0};


void mpu_error_data(void *pdat,unsigned int len)
{
	unsigned int rlen = 0;

	DBG_Print(LEVEL2,"mpu error data(%uBytes):\r\n",len);

	rlen = (len > 32) ? 32 : len;
	DBG_PrintBuf(LEVEL2,0,pdat,rlen);
}

void wait_main_power(void)
{
	unsigned int vol = 0;

	while (1)
	{
		vol = read_main_power_vol();
		if (vol >= 9000)
		{
			break ;
		}

		set_sys_led(1);
		set_gps_led(0);
		set_can_led(0);
		os_sleep(1000);
		DBG_Print(LEVEL0,"[wait_main_power]main power:%u\r\n",vol);
	}
}

void DBGTask(void)
{
	unsigned int rlen = 0;
	unsigned char *ptr = 0;
	INT32U s_ulLastBeatTime = 0;
	unsigned char poweron_init_flag = 0;
	static unsigned char s_mpu_buf[2048 + 384] = {0};

	bsp_init();
	set_out1_led(0);
	set_out2_led(0);
	wait_main_power();

	//4G模块开机
	pin_low(GPRS_ON_OFF_RCC,GPRS_ON_OFF_PORT,GPRS_ON_OFF_PIN);
	os_sleep(400);
	pin_high(GPRS_ON_OFF_RCC,GPRS_ON_OFF_PORT,GPRS_ON_OFF_PIN);
	os_sleep(2200);
	pin_low(GPRS_ON_OFF_RCC,GPRS_ON_OFF_PORT,GPRS_ON_OFF_PIN);

	//充电使能
	pin_high(CHARGE_EN_RCC,CHARGE_EN_PORT,CHARGE_EN_PIN);
	memset(&(s_stQJBL.s_DFGFTboxStatus),0xFF,sizeof(DFGFTboxStatus));
	while (1)
	{
		update_tbox_status();
		#if 1
		rlen = read_main_power_vol();
		if (rlen <= 7600)			//主电源断电 切换到备用电池供电
		{
			main_power_off_callback pf = 0;

			pin_low(CHARGE_EN_RCC,CHARGE_EN_PORT,CHARGE_EN_PIN);
			pin_high(BAT_BACKUP_EN_RCC,BAT_BACKUP_EN_PORT,BAT_BACKUP_EN_PIN);
			if (get_power_supply_mode() == 0)
			{
				set_power_supply_mode(1);
				set_acc_status(read_acc_status());
				set_main_power_vol(read_main_power_vol());

				report_mcu_status();
				DBG_Print(LEVEL2,"main power off.change to battary\r\n");
			}

			if (get_bat_power_vol() > 1200)
			{
				//主电源断电 保持3个灯常量 CAN灯受APP控制 所以CAN灯状态不确定
				set_sys_led(1);
				set_gps_led(1);
				set_net_led(1);

				set_can_led(1);
				DBG_Print(LEVEL2,"bat_en:%u\r\n",pin_read_in(BAT_BACKUP_EN_RCC,BAT_BACKUP_EN_PORT,BAT_BACKUP_EN_PIN));
				pf = get_main_power_off_callback_ptr();
				if (pf && get_mpu_heart_flag())
				{
					pf (0);
				}
				//send_msg(S_MSG_ENTER_SLEEP_MODE,0,0,0);
			}
		}
		else
		{
			set_power_supply_mode(0);
		}
		#endif

		ptr = os_malloc(1536);
		if (ptr)
		{
			memset(ptr,0,1536);
			//dbg
			rlen = ReadDBGUsart(0,ptr,1536,(INT32U)-1);
			if (rlen)
			{
				dbg_usart_data_arrive_callback pcallback = get_dbg_usart_data_arrive_callback_ptr();

				//send_to_mpu(ptr,rlen);
				analyze_usercmd(ptr,rlen,0,0);
				if (pcallback)
				{
					pcallback(ptr,rlen);
				}
			}

			//mpu
			memset(ptr,0,1536);
			memset(s_mpu_buf,0,sizeof(s_mpu_buf));
			rlen = usart_read(0,s_mpu_buf,sizeof(s_mpu_buf),(unsigned int)-1);
			if (rlen)
			{
				//DBG_Print(LEVEL2,"recv mpu:%uBytes\r\n",rlen);
				//DBG_PrintBuf(LEVEL3,0,ptr,(rlen > 64) ? 64 : rlen);
				tccp_unpack(s_mpu_buf,rlen,analyze_mpu_data,mpu_error_data);
			}

#if 1
			//analyze gps
			memset(ptr,0,1536);
			rlen = usart_read(2,ptr,1536,(unsigned int)-1);
			if (rlen)
			{
				gps_usart_data_arrive_callback pf = get_gps_usart_data_arrive_callback_ptr();

				if (rlen > 8)
				{
					set_gps_module_status(1);
					SetGPSExistFlag(1);
				}
				GPS_Analyze(ptr);

				if (pf)
				{
					pf(ptr,rlen);
				}				
			}

			//cfg gps module
			if (GetGPSExistFlag())
			{
			}
#endif
			os_free(ptr);
		}

		if ((GetRunTime() - s_ulLastBeatTime) >= 1)
		{
			unsigned int gps_ant_vol = 0;
			unsigned int bat_wendu_vol = 0;
			unsigned int avg_val = 0;
			unsigned char buf[64] = {0};
			static unsigned long s_can0_last_rx_cnt = 0;
			static unsigned long s_can1_last_rx_cnt = 0;

			if (0)
			{
				char *ptip = 0;

				ptip = (char *)os_malloc(1536);
				if (ptip)
				{
					GetCpuID(buf,64);

					//gps_ant_vol = sprintf(ptip,"cpu sn:%u111111111111111111111111111111112222222222222222222222222222222233333333333333333333333333333333444444444444444444444444444444441111111111111111111111111111111122222222222222222222222222222222333333333333333333333333333333334444444444444444444444444444444411111111111111111111111111111111222222222222222222222222222222223333333333333333333333333333333344444444444444444444444444444444111111111111111111111111111111112222222222222222222222222222222233333333333333333333333333333333444444444444444444444444444444441111111111111111111111111111111122222222222222222222222222222222333333333333333333333333333333334444444444444444444444444444444411111111111111111111111111111111222222222222222222222222222222223333333333333333333333333333333344444444444444444444444444444444111111111111111111111111111111112222222222222222222222222222222233333333333333333333333333333333444444444444444444444444444444441111111111111111111111111111111122222222222222222222222222222222333333333333333333333333333333334444444444444444444444444444444411111111111111111111111111111111222222222222222222222222222222223333333333333333333333333333333344444444444444444444444444444444\r\n",GetRunTime());
					gps_ant_vol = sprintf(ptip,"[%u]cpu sn:%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X size:%uKB",
					GetRunTime(),buf[0],buf[1],buf[2],buf[3],buf[4],buf[5],buf[6],buf[7],buf[8],buf[9],buf[10],buf[11],GetCpuFlashSize());

					send_msg(S_MSG_DBG_DISP,ptip,(void *)gps_ant_vol,0);
					os_free(ptip);
				}
			}

			if (can1_recv_total_msg_cnt() > s_can0_last_rx_cnt)
			{
				set_can_status(0,1);
				s_can0_last_rx_cnt = can1_recv_total_msg_cnt();
			}
			else
			{
				set_can_status(0,0);
			}

			if (can2_recv_total_msg_cnt() > s_can1_last_rx_cnt)
			{
				set_can_status(1,1);
				s_can1_last_rx_cnt = can2_recv_total_msg_cnt();
			}
			else
			{
				set_can_status(1,0);
			}

			set_can_status(2,1);


			if (poweron_init_flag == 0)
			{
				//s35390a_init();

				rlen = IIC_Read(0,0xA0,0,64,buf,64);
				if (rlen)
				{
					set_at24c08_chip_status(1);
				}
				else
				{
					set_at24c08_chip_status(0);
				}

				if (lsm6d_init() == 0)
				{
					set_gsenser_chip_status(1);
				}
				else
				{
					set_gsenser_chip_status(0);
				}

				poweron_init_flag = 1;
			}

			if (0)
			{
				static unsigned char s_test = 0;
				static unsigned char s_init_test = 0;
				CanTxMsg tx = {0x7DF,0,CAN_ID_STD,CAN_RTR_DATA,8,{0x11,0x11,0x11,0x11,0x11,0x11,0x11,0x11}};
				CanTxMsg tx1 = {0x7E0,0,CAN_ID_STD,CAN_RTR_DATA,8,{0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22}};

				DBG_Print(LEVEL3,"spi send test\r\n");

				//pin_low(MCU_CS_RCC,MCU_CS_PORT,MCU_CS_PIN);
				for (rlen = 0; rlen < 32; rlen++)
				{
					//SPI3_ReadWriteByte(0x55);
				}
				//pin_high(MCU_CS_RCC,MCU_CS_PORT,MCU_CS_PIN);

				ptr = os_malloc(1536);
				if (ptr)
				{
					memset(ptr,'0',1536);
					memset(ptr+256,'1',1024);
					//usart_send_data(0,ptr,1536);
					usart_send_data(3,ptr,1536);
					os_free(ptr);
				}

				if (s_init_test == 0)
				{
					s_init_test = 1;
					can_init(0,500);
					can_init(1,500);					
				}

				can_send_data(0,&tx);
				can_send_data(1,&tx1);

				s_test = !s_test;
				if (s_test)
				{
					pin_low(CAN_LED_RCC,CAN_LED_PORT,CAN_LED_PIN);
					//pin_low(NET_LED_RCC,NET_LED_PORT,NET_LED_PIN);
					//pin_low(GPS_LED_RCC,GPS_LED_PORT,GPS_LED_PIN);
					//pin_low(SYS_LED_RCC,SYS_LED_PORT,SYS_LED_PIN);

					pin_low(OUT1_EN_RCC,OUT1_EN_PORT,OUT1_EN_PIN);
					//pin_low(OUT2_EN_RCC,OUT2_EN_PORT,OUT2_EN_PIN);
				}
				else
				{
					pin_high(CAN_LED_RCC,CAN_LED_PORT,CAN_LED_PIN);
					//pin_high(NET_LED_RCC,NET_LED_PORT,NET_LED_PIN);
					//pin_high(GPS_LED_RCC,GPS_LED_PORT,GPS_LED_PIN);
					//pin_high(SYS_LED_RCC,SYS_LED_PORT,SYS_LED_PIN);

					pin_high(OUT1_EN_RCC,OUT1_EN_PORT,OUT1_EN_PIN);
					//pin_high(OUT2_EN_RCC,OUT2_EN_PORT,OUT2_EN_PIN);
				}

				if (GetRunTime() >= 60)
				{
					//send_msg(S_MSG_ENTER_SLEEP_MODE,(void *)2,0,0);
				}
			}

			//rlen = IIC_Read(0,0xA8,0,64,buf,64);
			//DBG_PrintBuf(LEVEL2,"at24c08:\r\n",buf,rlen);

			//rlen = IIC_Read(0,0xD6,0,0x75,buf,64);
			//DBG_PrintBuf(LEVEL2,"lsm6d:\r\n",buf,rlen);

			if (get_gsenser_chip_status())
			{
				//lsm6d_read_xyz(0,0,0,0,0,0);
			}

			//rlen = IIC_Read(0,0x64,0,0x10,buf,64);
			//DBG_PrintBuf(LEVEL2,"s35390a:\r\n",buf,rlen);

			//view_usart_reg();
			//get_can_take_time();

			set_acc_status(read_acc_status());
			set_bat_power_vol(read_bat_vol());
			set_main_power_vol(read_main_power_vol());
			gps_ant_vol = read_gps_ant_vol();
			bat_wendu_vol = read_bat_temperature_vol();
			//mic_vol = read_rtc_vol();

			avg_val = get_avg_by_throw_away_big_val(get_main_power_ad_val_ptr(),10,5);
			set_main_power_vol(((avg_val * 3300 * 11) >> 12) + 550);

			if (GetRunTime() >= (10 * 3600))
			{
				pin_low(CHARGE_EN_RCC,CHARGE_EN_PORT,CHARGE_EN_PIN);
			}

			DBG_Print(LEVEL4,"[%u]bat_en:%u charge_status:%u charge_en:%u gps_ant:%umv bat_temp:%umv main_power:%umv bat:%umv\r\n"
							"ACC:%u IN1:%u IN2:%u IN3:%u IN4:%u 4g_ap:%u<mcu_cs:%u miso:%u mosi:%u clk:%u>total_can:%u %u %u\r\n",GetRunTime(),
							pin_read_in(BAT_BACKUP_EN_RCC,BAT_BACKUP_EN_PORT,BAT_BACKUP_EN_PIN),
							!pin_read_in(CHARGE_STATUS_RCC,CHARGE_STATUS_PORT,CHARGE_STATUS_PIN),
							pin_read_in(CHARGE_EN_RCC,CHARGE_EN_PORT,CHARGE_EN_PIN),
							gps_ant_vol,bat_wendu_vol,get_main_power_vol(),get_bat_power_vol(),

							get_acc_status(),
							pin_read_in(IO1_IN_RCC,IO1_IN_PORT,IO1_IN_PIN),
							pin_read_in(IO2_IN_RCC,IO2_IN_PORT,IO2_IN_PIN),
							pin_read_in(IO3_IN_RCC,IO3_IN_PORT,IO3_IN_PIN),
							pin_read_in(IO4_IN_RCC,IO4_IN_PORT,IO4_IN_PIN),
							pin_read_in(APU_STATUS_DET_4G_RCC,APU_STATUS_DET_4G_PORT,APU_STATUS_DET_4G_PIN),

							pin_read_in(MCU_CS_RCC,MCU_CS_PORT,MCU_CS_PIN),
							pin_read_in(SPI_CLK_RCC,SPI_CLK_PORT,SPI_CLK_PIN),
							pin_read_in(SPI_MISO_RCC,SPI_MISO_PORT,SPI_MISO_PIN),
							pin_read_in(SPI_MOSI_RCC,SPI_MOSI_PORT,SPI_MOSI_PIN),

							can_recv_total_msg_cnt(0),
							can_recv_total_msg_cnt(1),
							can_recv_total_msg_cnt(2)
					);
			DBG_Print(LEVEL4,"[main_ad]:%u %u %u %u %u %u %u %u %u %u(avg:%u)\r\n",
				get_main_power_ad_val(0),get_main_power_ad_val(1),get_main_power_ad_val(2),
				get_main_power_ad_val(3),get_main_power_ad_val(4),get_main_power_ad_val(5),
				get_main_power_ad_val(6),get_main_power_ad_val(7),get_main_power_ad_val(8),
				get_main_power_ad_val(9),avg_val
			);
			DBG_Print(LEVEL4,"[ant_ad]:%u %u %u %u %u %u %u %u %u %u\r\n",
				get_gps_ant_ad_val(0),get_gps_ant_ad_val(1),get_gps_ant_ad_val(2),
				get_gps_ant_ad_val(3),get_gps_ant_ad_val(4),get_gps_ant_ad_val(5),
				get_gps_ant_ad_val(6),get_gps_ant_ad_val(7),get_gps_ant_ad_val(8),
				get_gps_ant_ad_val(9)
			);

			if (gps_get_ant_status() == E_GPS_ANT_NORMAL)
			{
				set_gps_ant_status(1);
			}
			else
			{
				set_gps_ant_status(0);
			}

			set_no_mpu_msg_time(get_no_mpu_msg_time() + 1);
			if (get_no_mpu_msg_time() > 50)
			{
				unsigned char i = 0;
				callback_func pf = get_disconnect_server_func_ptr();

				//mpu掉线了 汇报标志置起来 等下次mpu起来了要把mcu状态重新汇报到mpu
				set_report_mcu_status_flag(1);
				set_sys_led(0);
				set_net_led(0);
				DBG_Print(LEVEL2,"mpu lost time: %d \r\n",get_no_mpu_msg_time());
				set_mpu_status1(0);
				for (i = 0; i < 8; i++)
				{
					set_net_link_status(i,0);
					if (pf)
					{
						pf((void *)i);
					}
				}
			}

			if (get_no_mpu_msg_time() >= 210)
			{
				INT8U tempbuf[10] = {0};
				INT32U temp = GetRunTime();

				DBG_Print(LEVEL2,"mpu app wrong.reboot mpu time: %d \r\n",GetRunTime());

				memcpy(tempbuf,get_rtc_time(),6);
				tempbuf[6] = temp >> 24;
				tempbuf[7] = temp >> 16;
				tempbuf[8] = temp >> 8;
				tempbuf[9] = temp;

				#if 1
				//记录mpu app崩溃时间
				stm32_flash_erase_sector((UPDATE_FILE_START_ADDR / FLASH_PAGE_SIZE) - 2);
				stm32_flash_write(UPDATE_FILE_START_ADDR - (2 * FLASH_PAGE_SIZE),tempbuf,10);
				#endif

				//4G模块重启
				pin_low(GPRS_RST_RCC,GPRS_RST_PORT,GPRS_RST_PIN);
				os_sleep(400);
				pin_high(GPRS_RST_RCC,GPRS_RST_PORT,GPRS_RST_PIN);
				os_sleep(1000);
				pin_low(GPRS_RST_RCC,GPRS_RST_PORT,GPRS_RST_PIN);

				//pin_low(GPRS_ON_OFF_RCC,GPRS_ON_OFF_PORT,GPRS_ON_OFF_PIN);
				//os_sleep(400);
				//pin_high(GPRS_ON_OFF_RCC,GPRS_ON_OFF_PORT,GPRS_ON_OFF_PIN);
				//os_sleep(2200);
				//pin_low(GPRS_ON_OFF_RCC,GPRS_ON_OFF_PORT,GPRS_ON_OFF_PIN);

				set_no_mpu_msg_time(0);
				pin_high(SHIFT_EN_RCC,SHIFT_EN_PORT,SHIFT_EN_PIN);
				os_sleep(500);
				usart_init(0,get_mpu_uart_bps(),0);
			}

			//s35390a_get_time(t);
			//DBG_Print(0,"s35390a:%u %u %u %u %u %u\r\n",t[0],t[1],t[2],t[3],t[4],t[5]);
			s_ulLastBeatTime = GetRunTime();
		}

		update_status_indicator_proc();

		if (is_update_mode() == 0)
		{
			static unsigned char s_gps_led = 0;
			static unsigned char s_500ms_cnt = 0;

			s_500ms_cnt++;
			if (s_500ms_cnt >= 10)
			{
				if (gps_get_ant_status() != E_GPS_ANT_NORMAL)
				{
					set_gps_led(0);
				}
				else if (GetLong() && GetLat() && IsPosition())
				{
					s_gps_led = !s_gps_led;
					set_gps_led(s_gps_led);
				}
				else
				{
					set_gps_led(1);
				}

				s_500ms_cnt = 0;
			}
		}

		if (GetSystemRestart())
		{
			os_sleep(6000);
			send_shutdown_signal_to_mpu();
			os_sleep(2000);
			NVIC_SystemReset();
		}

		os_sleep(50);
	}
}


void GpsTask(void)
{
	DBG_Print(LEVEL1,"GpsTask start...\r\n");
	while (1)
	{
		os_sleep(100);
	}
}

void NetworkTask(void)
{
}


void task3(void)
{
	char *ptr = 0;
	char flag = 0;

	DBG_Print(LEVEL2,"start application...\r\n");
	wait_main_power();

	ptr = os_malloc(1536);
	if (ptr)
	{
		memcpy(ptr,(void *)APP_SOFTWARE_INFO_ADDR,100);

		if (memcmp(ptr+1,MANUFACTURER_FLAG,strlen(MANUFACTURER_FLAG)) == 0)
		{
			if (GetSubString(ptr+1,"<",">",get_app_ver_ptr(),36))
			{
				char *p = 0;

				flag = 1;
				p = strstr(get_app_ver_ptr(),"_V");
				if (p)
				{
					*(p + 2) = HARDWARE_VERSION + '0';
				}
			}
		}

		os_free(ptr);
	}

	if (flag)
	{
		set_main_power_vol(read_main_power_vol());
		set_acc_status(read_acc_status());
		os_sleep(1000);
		set_main_power_vol(read_main_power_vol());
		set_acc_status(read_acc_status());

		((void (*)())(APP_START_ADDR | 0x01))();
	}
	else
	{
			while (1)
			{
				DBG_Print(LEVEL2,"%s","APP ERROR\r\n");
				os_sleep(2000);
			}

	}


}


#define BIG_MEM_BLOCK_SIZE		1536
#define BIG_MEM_BLOCK_CNT		7

unsigned char aucBigMem[BIG_MEM_BLOCK_CNT][BIG_MEM_BLOCK_SIZE] = {0};


void start_os(void)
{
	os_init();

	os_create_mem(0,aucBigMem,BIG_MEM_BLOCK_SIZE,BIG_MEM_BLOCK_CNT);
	os_create_thread(TASK0_ID,DBGTask,&stk_task0[TASK0_STK_SIZE - 1],&stk_task0[0]);
	//os_create_thread(TASK1_ID,GpsTask,&stk_task1[TASK1_STK_SIZE - 1],&stk_task1[0]);
	//os_create_thread(TASK2_ID,NetworkTask,&stk_task2[TASK2_STK_SIZE - 1],&stk_task2[0]);
	os_create_thread(TASK3_ID,task3,&stk_task3[TASK3_STK_SIZE - 1],&stk_task3[0]);

	os_start();

}









