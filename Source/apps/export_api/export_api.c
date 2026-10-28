#include "export_api.h"

void gps_enter_sleep(void)
{

	DBG_Print(LEVEL1,"gps sleep\r\n");
}

void rsv(void)
{
	DBG_Print(0,"%s","功能建设中\r\n");
}


void pin_cfg(void)
{
	//模拟IIC SCL SDA	
	_gpio_init(MN_IIC_SCL_RCC,MN_IIC_SCL_PORT,MN_IIC_SCL_PIN,GPIO_Mode_IN_FLOATING);
	_gpio_init(MN_IIC_SDA_RCC,MN_IIC_SDA_PORT,MN_IIC_SDA_PIN,GPIO_Mode_IN_FLOATING);

	//4G引脚	
	//_gpio_init(GPRS_RST_RCC,GPRS_RST_PORT,GPRS_RST_PIN,GPIO_Mode_IN_FLOATING);
	//_gpio_init(GPRS_ON_OFF_RCC,GPRS_ON_OFF_PORT,GPRS_ON_OFF_PIN,GPIO_Mode_IN_FLOATING);
	//_gpio_init(MCU_WAKE_UP_4G_RCC,MCU_WAKE_UP_4G_PORT,MCU_WAKE_UP_4G_PIN,GPIO_Mode_IN_FLOATING);
	//_gpio_init(APU_STATUS_DET_4G_RCC,APU_STATUS_DET_4G_PORT,APU_STATUS_DET_4G_PIN,GPIO_Mode_IN_FLOATING);
	_gpio_init(GPRS_DTR_RCC,GPRS_DTR_PORT,GPRS_DTR_PIN,GPIO_Mode_IN_FLOATING);
	//_gpio_init(GPRS_PWR_RCC,GPRS_PWR_PORT,GPRS_PWR_PIN,GPIO_Mode_IN_FLOATING);
	_gpio_init(GPRS_RI_RCC,GPRS_RI_PORT,GPRS_RI_PIN,GPRS_RI_PIN_MODE);

	_gpio_init(BAT_BACKUP_EN_RCC,BAT_BACKUP_EN_PORT,BAT_BACKUP_EN_PIN,GPIO_Mode_IN_FLOATING);
	_gpio_init(CHARGE_STATUS_RCC,CHARGE_STATUS_PORT,CHARGE_STATUS_PIN,GPIO_Mode_IN_FLOATING);
	_gpio_init(CHARGE_EN_RCC,CHARGE_EN_PORT,CHARGE_EN_PIN,GPIO_Mode_IN_FLOATING);

	_gpio_init(BT_POWER_EN_RCC,BT_POWER_EN_PORT,BT_POWER_EN_PIN,GPIO_Mode_IN_FLOATING);
	_gpio_init(PWR_GPS_EN_RCC,PWR_GPS_EN_PORT,PWR_GPS_EN_PIN,GPIO_Mode_IN_FLOATING);

	_gpio_init(TLY_INT_RCC,TLY_INT_PORT,TLY_INT_PIN,GPIO_Mode_IN_FLOATING);
	_gpio_init(TLY_INT1_RCC,TLY_INT1_PORT,TLY_INT1_PIN,GPIO_Mode_IN_FLOATING);

	_gpio_init(MCU_CS_RCC,MCU_CS_PORT,MCU_CS_PIN,GPIO_Mode_IN_FLOATING);
	_gpio_init(SPI_CLK_RCC,SPI_CLK_PORT,SPI_CLK_PIN,GPIO_Mode_IN_FLOATING);
	_gpio_init(SPI_MISO_RCC,SPI_MISO_PORT,SPI_MISO_PIN,GPIO_Mode_IN_FLOATING);
	_gpio_init(SPI_MOSI_RCC,SPI_MOSI_PORT,SPI_MOSI_PIN,GPIO_Mode_IN_FLOATING);
	_gpio_init(OUT1_EN_RCC,OUT1_EN_PORT,OUT1_EN_PIN,GPIO_Mode_IN_FLOATING);
	_gpio_init(OUT2_EN_RCC,OUT2_EN_PORT,OUT2_EN_PIN,GPIO_Mode_IN_FLOATING);
	_gpio_init(CAN_LED_RCC,CAN_LED_PORT,CAN_LED_PIN,GPIO_Mode_IN_FLOATING);
	_gpio_init(NET_LED_RCC,NET_LED_PORT,NET_LED_PIN,GPIO_Mode_IN_FLOATING);
	_gpio_init(GPS_LED_RCC,GPS_LED_PORT,GPS_LED_PIN,GPIO_Mode_IN_FLOATING);
	_gpio_init(SYS_LED_RCC,SYS_LED_PORT,SYS_LED_PIN,GPIO_Mode_IN_FLOATING);
	_gpio_init(ACC_RCC, ACC_PORT, ACC_PIN, ACC_PIN_MODE);

	//CAN
	_gpio_init(CAN0_EN_RCC,CAN0_EN_PORT,CAN0_EN_PIN,GPIO_Mode_IN_FLOATING);
	_gpio_init(CAN0_STB_RCC,CAN0_STB_PORT,CAN0_STB_PIN,GPIO_Mode_IN_FLOATING);

	_gpio_init(CAN1_EN_RCC,CAN1_EN_PORT,CAN1_EN_PIN,GPIO_Mode_IN_FLOATING);
	_gpio_init(CAN1_STB_RCC,CAN1_STB_PORT,CAN1_STB_PIN,GPIO_Mode_IN_FLOATING);
	_gpio_init(CAN1_WAKE_RCC,CAN1_WAKE_PORT,CAN1_WAKE_PIN,GPIO_Mode_IN_FLOATING);

}


void enter_sleep_mode(unsigned int mode)
{
	DBG_Print(LEVEL0,"sleep mode enter_sleep_mode(level:%u)\r\n",mode);
	os_sleep(1000);
	SysTick->VAL = 0;
	SysTick->CTRL = 0;

	//4G引脚	
	//pin_low(GPRS_PWR_RCC,GPRS_PWR_PORT,GPRS_PWR_PIN);
	pin_high(GPRS_DTR_RCC,GPRS_DTR_PORT,GPRS_DTR_PIN);
	//pin_low(GPRS_RST_RCC,GPRS_RST_PORT,GPRS_RST_PIN);
	//pin_low(GPRS_ON_OFF_RCC,GPRS_ON_OFF_PORT,GPRS_ON_OFF_PIN);
	//pin_low(MCU_WAKE_UP_4G_RCC,MCU_WAKE_UP_4G_PORT,MCU_WAKE_UP_4G_PIN);
	//pin_low(APU_STATUS_DET_4G_RCC,APU_STATUS_DET_4G_PORT,APU_STATUS_DET_4G_PIN);

	pin_low(MN_IIC_SCL_RCC,MN_IIC_SCL_PORT,MN_IIC_SCL_PIN);
	pin_low(MN_IIC_SDA_RCC,MN_IIC_SDA_PORT,MN_IIC_SDA_PIN);

	pin_low(BAT_BACKUP_EN_RCC,BAT_BACKUP_EN_PORT,BAT_BACKUP_EN_PIN);
	pin_low(CHARGE_EN_RCC,CHARGE_EN_PORT,CHARGE_EN_PIN);

	//pin_high(SHIFT_EN_RCC,SHIFT_EN_PORT,SHIFT_EN_PIN);
	pin_low(PWR_GPS_EN_RCC,PWR_GPS_EN_PORT,PWR_GPS_EN_PIN);
	pin_low(BT_POWER_EN_RCC,BT_POWER_EN_PORT,BT_POWER_EN_PIN);

	//关闭CAN收发器
	pin_low(CAN0_EN_RCC,CAN0_EN_PORT,CAN0_EN_PIN);
	pin_low(CAN0_STB_RCC,CAN0_STB_PORT,CAN0_STB_PIN);

	pin_high(CAN1_EN_RCC,CAN1_EN_PORT,CAN1_EN_PIN);
	pin_low(CAN1_STB_RCC,CAN1_STB_PORT,CAN1_STB_PIN);
	pin_low(CAN1_WAKE_RCC,CAN1_WAKE_PORT,CAN1_WAKE_PIN);

	set_sys_led(0);
	set_can_led(0);
	set_gps_led(0);
	set_net_led(0);

	pin_low(OUT1_EN_RCC,OUT1_EN_PORT,OUT1_EN_PIN);
	//pin_low(OUT2_EN_RCC,OUT2_EN_PORT,OUT2_EN_PIN);	

	pin_cfg();
	
	if (mode == 0)				//can
	{
		exit_init(CAN0_RX_RCC, CAN0_RX_PORT, CAN0_RX_PIN, CAN0_RX_PIN_MODE, 0);
	}
	else if (mode == 1)			//acc
	{
		pin_low(CAN0_EN_RCC,CAN0_EN_PORT,CAN0_EN_PIN);
		exit_init(ACC_RCC, ACC_PORT, ACC_PIN, ACC_PIN_MODE, NVIC_SystemReset);		
	}
	else if (mode == 2)			//acc can
	{
		exit_init(ACC_RCC, ACC_PORT, ACC_PIN, ACC_PIN_MODE, NVIC_SystemReset);		
		exit_init(CAN0_RX_RCC, CAN0_RX_PORT, CAN0_RX_PIN, CAN0_RX_PIN_MODE, NVIC_SystemReset);
	}
	exit_init(GPRS_RI_RCC,GPRS_RI_PORT,GPRS_RI_PIN,GPRS_RI_PIN_MODE, NVIC_SystemReset);
	
	USART_DeInit(USART1);
	USART_DeInit(USART2);
	USART_DeInit(USART3);
	USART_DeInit(UART4);

	ADC_DeInit(ADC1);
	ADC_DeInit(ADC2);
	ADC_DeInit(ADC3);

	RCC_APB1PeriphClockCmd(RCC_APB1Periph_PWR,ENABLE);

	PWR_EnterSTOPMode(PWR_Regulator_LowPower,PWR_STOPEntry_WFI);
	NVIC_SystemReset();
}

void *send_msg(S_MSG_TYPE msgtype,void *param,void *lparam,void *wparam)
{
	unsigned int rlen = 0;

	switch (msgtype)
	{
	case S_MSG_SEND_SMS:
		if (param && lparam && wparam && strlen((char *)param) && strlen((char *)lparam) && ((unsigned int)wparam <= 1024))
		{
			unsigned char *psend = 0;

			psend = os_malloc(1536);
			if (psend)
			{
				memset(psend,0,64);
				strncpy((char *)psend,(char *)param,24);				//phone num
				memcpy(psend + 24,lparam,(unsigned int)wparam);

				mcu_send_msg_to_mpu(TCCP_MCU_TO_MPU_SEND_SMS_MSG_ID,psend,(unsigned int)wparam + 24);

				os_free(psend);
			}
		}
	break;
	case S_MSG_CPU_CLOCK:
		return (void *)cpu_clock();
	case S_MSG_EXTERNAL_STORAGE_TOTAL_CAP:

	break;
	case S_MSG_EXTERNAL_STORAGE_USED:

	break;
	case S_MSG_EXTERNAL_STORAGE_FREE:

	break;
	case S_MSG_EXTERNAL_STORAGE_WRITE_FILE:

	break;
	case S_MSG_EXTERNAL_STORAGE_READ_FILE:
	{
		//DRVFILE *p = (DRVFILE *)lparam;

	}
	break;
	case S_MSG_EXTERNAL_STORAGE_DEL_FILE:

	break;
	case S_MSG_GET_CPU_TYPE:
	return "GD32F305";
	case S_MSG_SYS_LED_CTRL:
	//set_sys_led(param ? 1 : 0);
	break;
	case S_MSG_GPS_LED_CTRL:
		set_out2_led(param ? 1 : 0);
	break;
	case S_MSG_CAN_LED_CTRL:
	if (is_update_mode() == 0) set_can_led((unsigned int)param);
	break;
	case S_MSG_SEND_TO_SERVER:
	if (lparam && ((unsigned int)wparam <= 1500) && (is_update_mode() == 0))
	{
		unsigned char *psend = 0;
		unsigned char *pdat = 0;

		psend = os_malloc(1536);
		if (psend)
		{
			pdat = psend + 6;
			//channel[1Byte] + data
			pdat[0] = ((unsigned int)param) & 0xFF;
			memcpy(pdat + 1,lparam,(unsigned int)wparam);

			rlen = tccp_pack(TCCP_MCU_SEND_NET_DATA_MSG_ID,pdat,(unsigned int)wparam + 1,psend,1536);

			if (get_mpu_heart_flag() || ((unsigned int)param == 8)) send_to_mpu(psend,rlen);				
			os_free(psend);
			DBG_Print(LEVEL2,"[link%u]send(%uBytes)\r\n",(unsigned int)param,(unsigned int)wparam);
			DBG_PrintBuf(LEVEL2,0,lparam,((unsigned int)wparam > 32) ? 32 : (unsigned int)wparam);
		}
	}
	break;

	case S_MSG_GET_RTC_TIME:
	if (param) memcpy(param,get_rtc_time(),6);
	return get_rtc_time();

	case S_MSG_GET_LON:
		//114094880 30456371
		if (GetLong())
		{
			return (void *)(GetLong());
		}
		else
		{
			return (void *)114094880;
		}
	case S_MSG_GET_LAT:
		if (GetLat())
		{
			return (void *)(GetLat());
		}
		else
		{
			return (void *)30456371;
		}
	case S_MSG_GET_VIN:
		if (param)
		{
			memcpy(param,GetVIN(),17);
		}
		return GetVIN();
	case S_MSG_GET_ICCID:
		if (param)
		{
			memcpy(param,get_iccid_ptr(),20);
		}
		return get_iccid_ptr();
	case S_MSG_GET_IMEI:
		if (param)
		{
			strncpy(param,get_imei_ptr(),21);
		}
		return get_imei_ptr();
	case S_MSG_SEND_PARAM_TO_MPU:
	{
		if (param && lparam)
		{
			mcu_send_msg_to_mpu(TCCP_MCU_TO_MPU_PARAM_MSG_ID,param,(unsigned int)lparam);
		}
	}
	break;
	case S_MSG_GET_GPS_ANT_STATUS:
		return (void *)(gps_get_ant_status());
	case S_MSG_GET_GPS_STAR_NUM:
		if (GetGPSExistFlag() && IsPosition())
		{
			return (void *)(GetStartNum());
		}
		return (void *)3;
	case S_MSG_GET_SIM_CSQ:
		if ((get_sim_signal_strength() >= 113) || (get_sim_signal_strength() == 0))
		{
			return 0;
		}
		else
		{
			return (void *)((113 - get_sim_signal_strength()) / 2);
		}
	case S_MSG_EXECUTE_DRV_CMD:
		if (param)
		{
			return (void *)analyze_usercmd(param,strlen((char *)param),lparam,(unsigned int)wparam);
		}
		return 0;
	case S_MSG_STORE_CAN_DATA:
	if (param && lparam && (is_update_mode() == 0))
	{
		mcu_send_msg_to_mpu(TCCP_MCU_TO_MPU_STORE_CAN_DATA_MSG_ID,param,(unsigned int)(lparam));
	}
	break;
	case S_MSG_GET_MAIN_VOL:
		return (void *)(get_main_power_vol());
	case S_MSG_GET_BAT_VOL:
		return (void *)(get_bat_power_vol());
	case S_MSG_GET_ACC_STATUS:
		return (void *)(get_acc_status());

	case S_MSG_GET_MPU_SOFTWARE_VERSION:
		if (param && lparam)
		{
			get_mpu_ver(param,(unsigned int)lparam);
		}
		return get_mpu_ver_ptr();

	case S_MSG_GET_GPS_SPEED:
		return (void *)(GetGpsSpeed());
	case S_MSG_GET_GAODU:
		return (void *)(GetGaoDu());
	case S_MSG_GET_ANGLE:
		return (void *)(GetAngle());

	case S_MSG_GET_SERVER_ADDR:
		return SPGetServerAddr((unsigned int)param);
	case S_MSG_GET_SERVER_PORT:
		return (void *)SPGetServerPort((unsigned int)param);
	case S_MSG_READ_PARAM:
		migrate_param_store_once();
		if (param && lparam)
		{
			memcpy(param,(unsigned char *)PARAM_STORE_ADDR,
					((INT32U)lparam > FLASH_PAGE_SIZE) ? FLASH_PAGE_SIZE : (INT32U)lparam);
			//DBG_PrintBuf(LEVEL2,"[drv]read param:\r\n",param,(INT32U)lparam);
		}
	break;
	case S_MSG_WRITE_PARAM:
		migrate_param_store_once();
		if (param && lparam)
		{
		#if 1
		{
			unsigned int n = (INT32U)lparam;

			/* One metadata page. Do not program into the following page. */
			if (n > FLASH_PAGE_SIZE)
			{
				n = FLASH_PAGE_SIZE;
			}
			stm32_flash_erase_sector(PARAM_STORE_ADDR / FLASH_PAGE_SIZE);
			stm32_flash_write(PARAM_STORE_ADDR,param,n);
		}
		#endif
		}
	break;

	case S_MSG_GET_GSENSOR_CHIP_STATUS:
		return (void *)(get_gsenser_chip_status());
	case S_MSG_GET_FLASH_CHIP_STATUS:
		return (void *)(get_at24c08_chip_status());
	case S_MSG_GET_EMMC_CHIP_STATUS:
		return (void *)(get_emmc_chip_status());
	case S_MSG_GET_JIAMI_CHIP_STATUS:
		return (void *)(get_jiami_chip_status());
	case S_MSG_GET_GPS_MODULE_STATUS:
		return (void *)(get_gps_module_status());
	case S_MSG_GET_PUBLIC_KEY:
		if (param)
		{
			memcpy(param,get_public_key_ptr(),64);
		}
		return get_public_key_ptr();
	case S_MSG_STORE_CACHE_DATA:
	{
		unsigned char *pbuf = 0;
		unsigned char *pcontent = 0;
		unsigned int xlen = 0;
		unsigned int templen = 0;

		if (is_update_mode() == 0)
		{
			pbuf = os_malloc(1536);
			if (pbuf)
			{
				pcontent = pbuf + 32;
			
				pcontent[0] = (unsigned int)param;			//cache id
				templen = (unsigned int)wparam;
				if (templen >= 1400)
				{
					templen = 1400;
				}
				memcpy(pcontent + 1,lparam,templen);
				xlen = templen + 1;
			
				rlen = tccp_pack(TCCP_MCU_TO_MPU_STORE_CACHE_MSG_ID,pcontent,xlen,pbuf,1536);		
				send_to_mpu(pbuf,rlen);
			
				os_free(pbuf);
			}
		}
	}
	break;
	case S_MSG_GET_CACHE_DATA:
	{
		unsigned char pbuf[64] = {0};

		//cache id
		pbuf[32] = (unsigned int)param;

		//idx
		pbuf[33] = ((unsigned int)lparam) >> 24;
		pbuf[34] = ((unsigned int)lparam) >> 16;
		pbuf[35] = ((unsigned int)lparam) >> 8;
		pbuf[36] = ((unsigned int)lparam);

		rlen = tccp_pack(TCCP_MCU_TO_MPU_GET_CACHE_MSG_ID,pbuf + 32,5,pbuf,64);			
		send_to_mpu(pbuf,rlen);
	}
	break;
	case S_MSG_ENTER_SLEEP_MODE:
	if ((unsigned int)param & 8)				//休眠需要监测主电源掉电
	{
		static unsigned int s_mp_cnt = 0;
		unsigned int cnt = 0;
		send_shutdown_signal_to_mpu();

		//关闭CAN收发器
		pin_low(CAN0_EN_RCC,CAN0_EN_PORT,CAN0_EN_PIN);
		pin_low(CAN0_STB_RCC,CAN0_STB_PORT,CAN0_STB_PIN);

		pin_high(CAN1_EN_RCC,CAN1_EN_PORT,CAN1_EN_PIN);
		pin_low(CAN1_STB_RCC,CAN1_STB_PORT,CAN1_STB_PIN);
		pin_low(CAN1_WAKE_RCC,CAN1_WAKE_PORT,CAN1_WAKE_PIN);

		set_sys_led(0);
		set_can_led(0);
		set_gps_led(0);
		set_net_led(0);

		pin_low(OUT1_EN_RCC,OUT1_EN_PORT,OUT1_EN_PIN);
		//pin_low(OUT2_EN_RCC,OUT2_EN_PORT,OUT2_EN_PIN);	
		exit_init(CAN0_RX_RCC, CAN0_RX_PORT, CAN0_RX_PIN, CAN0_RX_PIN_MODE, NVIC_SystemReset);

		while (1)
		{
			volatile unsigned int i = 0;
			unsigned int val = 0;
			unsigned int a = 0;
			unsigned int b = 0;
		
			val = read_main_power_vol();
			DBG_Print(0,"111sleep check main power(%umv) %uus\r\n",val,(b-a)/100);
			os_sleep(2000);
			if (val < 7000)
			{
				s_mp_cnt++;
				if (s_mp_cnt >= 3)
				{
					NVIC_SystemReset();				
				}
			}
			else
			{
				s_mp_cnt = 0;
			}
		
			a = cpu_clock();
			for (i = 0; i < 0x1FFFFFF; i++)
			{
		
			}
			b = cpu_clock();
			DBG_Print(0,"sleep check main power(%umv) %uus\r\n",val,(b-a)/100);
		
			cnt++;
			if (wparam && ((cnt * 2.1585) >= (unsigned int)wparam))
			{
				NVIC_SystemReset();
			}
		}

	}

	if ((unsigned int)param & 4)				//欠压休眠
	{
		send_shutdown_signal_to_mpu();

		//关闭CAN收发器
		pin_low(CAN0_EN_RCC,CAN0_EN_PORT,CAN0_EN_PIN);
		pin_low(CAN0_STB_RCC,CAN0_STB_PORT,CAN0_STB_PIN);

		pin_high(CAN1_EN_RCC,CAN1_EN_PORT,CAN1_EN_PIN);
		pin_low(CAN1_STB_RCC,CAN1_STB_PORT,CAN1_STB_PIN);
		pin_low(CAN1_WAKE_RCC,CAN1_WAKE_PORT,CAN1_WAKE_PIN);

		set_sys_led(0);
		set_can_led(0);
		set_gps_led(0);
		set_net_led(0);

		pin_low(OUT1_EN_RCC,OUT1_EN_PORT,OUT1_EN_PIN);
		//pin_low(OUT2_EN_RCC,OUT2_EN_PORT,OUT2_EN_PIN);	
		if (wparam) stm32_rtc_set_alarm_wakeup((unsigned int)wparam);

		while (1)
		{
			static unsigned int s_mp_cnt = 0;
			volatile unsigned int i = 0;
			unsigned int val = 0;
		
			val = read_main_power_vol();
			if ((val >= 12000) || (val < 7000))
			{
				s_mp_cnt++;
				if (s_mp_cnt >= 4)
				{
					NVIC_SystemReset();				
				}
			}
			else
			{
				s_mp_cnt = 0;
			}
		
			DBG_Print(0,"sleep check main power(%umv)\r\n",val);
			for (i = 0; i < 0x1FFFFFF; i++)
			{
		
			}
		}
	}
	else
	{
		if ((is_update_mode() == 0) && (get_acc_status() == 0))
		{
			//send_shutdown_signal_to_mpu();
			if (wparam) stm32_rtc_set_alarm_wakeup((unsigned int)wparam);
			enter_sleep_mode((unsigned int)param);
		}
	}
	break;
	case S_MSG_OUT_IO_CTRL:
		if (lparam)
		{
			pin_high(OUT1_EN_RCC,OUT1_EN_PORT,OUT1_EN_PIN);
			//pin_high(OUT2_EN_RCC,OUT2_EN_PORT,OUT2_EN_PIN);
		}
		else
		{
			pin_low(OUT1_EN_RCC,OUT1_EN_PORT,OUT1_EN_PIN);
			//pin_low(OUT2_EN_RCC,OUT2_EN_PORT,OUT2_EN_PIN);
		}
	break;
	case S_MSG_GET_JIAMI_CHIP_ID:
		if (param)
		{
			memcpy(param,get_jiami_chip_id_ptr(),16);
		}
		return get_jiami_chip_id_ptr();
	case S_MSG_SET_JIAMI_CHIP_ID:
		if (param && lparam) mcu_modify_jiami_chip_id(param,(unsigned int)lparam);
	break;

	case S_MSG_SET_SERVER_ADDR:
		if (((unsigned int)param < 8) && lparam) mcu_modify_server((unsigned int)param,lparam,SPGetServerPort((unsigned int)param));
	break;
	case S_MSG_SET_SERVER_PORT:
		if ((unsigned int)param < 8) mcu_modify_server((unsigned int)param,SPGetServerAddr((unsigned int)param),(unsigned int)lparam);
	break;
	case S_MSG_SET_SERVER_IP_PORT:
		if (((unsigned int)param < 8) && lparam) mcu_modify_server((unsigned int)param,lparam,(unsigned int)wparam);
	break;
	case S_MSG_GET_BEIAN_MSG_BODY_WITH_SIGN:
		return get_beian_msg_body_with_sign_ptr();
	case S_MSG_GET_POWER_SUPPLY_MODE:
		return (void *)(get_power_supply_mode());
	case S_MSG_DBG_DISP:
	if (GetReportStatus() && param && ((unsigned int)lparam <= 1500) && (is_update_mode() == 0))
	{
		mcu_send_msg_to_mpu(TCCP_MCU_TO_MPU_DBG_DISP_MSG_ID,param,(unsigned int)lparam);
		DBG_PrintBuf(LEVEL4,"dbg tip:",param,((unsigned int)lparam > 32) ? 32 : (unsigned int)lparam);
	}
	break;
	case S_MSG_GET_GPS_LOCAL_STATUS:
		if ((GetGPSExistFlag() && IsPosition()) || get_mpu_gps_local_status())
		{
			return (void *)1;
		}
		else
		{
			return 0;
		}

	case S_MSG_WRITE_EASY_CHANGE_PARAM:
		mcu_send_msg_to_mpu(TCCP_MCU_TO_MPU_STORE_E_CHANGE_PARAM_MSG_ID,param,(unsigned int)lparam);
	break;
	case S_MSG_SAVE_MCU_LOG:
		if (param)
		{
			mcu_send_msg_to_mpu(TCCP_MCU_TO_MPU_SAVE_LOG_HEX_MSG_ID,lparam,(unsigned int)wparam);
		}
		else
		{
			mcu_send_msg_to_mpu(TCCP_MCU_TO_MPU_SAVE_LOG_MSG_ID,lparam,(unsigned int)wparam);
		}
	break;

	case S_MSG_GET_FILE_DATA:
	{
		unsigned char sbuf[10] = {0};

		sbuf[0] = (unsigned int)param;

		rlen = (unsigned int)lparam;		
		sbuf[1] = rlen >> 24;
		sbuf[2] = rlen >> 16;
		sbuf[3] = rlen >> 8;
		sbuf[4] = rlen;

		rlen = (unsigned int)wparam;
		sbuf[5] = rlen >> 24;
		sbuf[6] = rlen >> 16;
		sbuf[7] = rlen >> 8;
		sbuf[8] = rlen;

		mcu_send_msg_to_mpu(TCCP_MCU_TO_MPU_GET_FILE_DATA_MSG_ID,sbuf,9);
	}
	break;
	case S_MSG_SET_STORE_CACHE_DATA_FLAG:
		set_collect_cache_data_flag(param ? 1 : 0);
	break;
	case S_MSG_GET_HARDWARE_VERSION:
	return (void *)HARDWARE_VERSION;

	case S_MSG_GET_WIFI_MODULE_STATUS:		//WIFI模块状态
		return (void *)(get_wifi_status());
	case S_MSG_GET_CAN0_STATUS:				//can0 是否有数据	
		return (void *)(get_can_status(0));
	case S_MSG_GET_CAN1_STATUS:				//can1 是否有数据
		return (void *)(get_can_status(1));
	case S_MSG_GET_CAN2_STATUS:				//can2 是否有数据
		return (void *)(get_can_status(2));
	case S_MSG_GET_GPS:
		if (param)
		{
			memcpy(param,&s_stGPS,sizeof(GPS));
		}
		return (&s_stGPS);
	case S_MSG_GET_MPU_STATUS:
		return (void *)(get_no_mpu_msg_time());
	case S_MSG_REBOOT_TO_MPU:
	{
		mcu_send_msg_to_mpu(TCCP_MCU_TO_MPU_EXE_LINUX_CMD_MSG_ID,"reboot",strlen("reboot"));
	}
	case S_MSG_GET_TBOX_STATUS:
		if (param)
		{
			memcpy(param,&(s_stQJBL.s_DFGFTboxStatus),sizeof(DFGFTboxStatus));
		}
		return (&(s_stQJBL.s_DFGFTboxStatus));	
	default:break;
	}
	return 0;
}

//安装消息钩子函数
void install_hook_msg(HOOK_MSG_TYPE msgtype,void *pf)
{
	switch (msgtype)
	{
	case HOOK_MSG_ONE_MS:
		reg_timer_one_ms_func_callback((timer_one_ms_func)(pf));
	break;

	case HOOK_MSG_CAN0_DATA_ARRIVE:
		DBG_Print(LEVEL2,"install can0 msg hook\r\n");
		install_can_msg_arrive_hook(0,(void (*)(CanRxMsg *))pf);
	break;

	case HOOK_MSG_CAN1_DATA_ARRIVE:
		DBG_Print(LEVEL2,"install can1 msg hook\r\n");
		install_can_msg_arrive_hook(1,(void (*)(CanRxMsg *))pf);
	break;

	case HOOK_MSG_CAN2_DATA_ARRIVE:
		DBG_Print(LEVEL2,"install can2 msg hook\r\n");
		install_can_msg_arrive_hook(2,(void (*)(CanRxMsg *))pf);
	break;

	default:break;
	}

}


callback_func p_connect_f = 0;
callback_func p_disconnect_f = 0;

callback_func get_connect_server_ok_func_ptr(void)
{
	return p_connect_f;
}

callback_func get_disconnect_server_func_ptr(void)
{
	return p_disconnect_f;
}


//注册回调消息
void reg_callback_msg(CALLBACK_MSG_TYPE msgtype,void *pf)
{
	switch (msgtype)
	{
	case CB_MSG_REBOOT_OK:

	break;
	case CB_MSG_CONNECT_SERVER_OK:
		p_connect_f = (callback_func)pf;
	break;
	case CB_MSG_SERVER_DISCONNECT:
		p_disconnect_f = (callback_func)pf;
	break;
	case CB_MSG_DBG_UART_DATA_ARRIVE:
		reg_dbg_usart_data_arrive_callback((void (*)(void *,unsigned int))pf);
	break;
	case CB_MSG_SERVER_DATA_ARRIVE:
		reg_server_data_arrive_callback((void (*)(unsigned char,void *,unsigned int))pf);
	break;
	case CB_MSG_LINUX_CMD_ACK_ARRIVE:
		reg_linux_cmd_ack_data_arrive_callback((linux_cmd_ack_data_arrive_callback)pf);
	break;

	case CB_MSG_CACHE_DATA_ARRIVE:
		reg_cache_data_arrive_callback((cache_data_arrive_callback)pf);
	break;

	case CB_MSG_MAIN_POWER_OFF:
		reg_main_power_off_callback((main_power_off_callback)pf);
	break;

	case CB_MSG_EASY_CHANGE_PARAM_ARRIVE:
		reg_easy_change_param_arrive_callback((easy_change_param_arrive_callback)pf);
	break;

	case CB_MSG_FILE_DATA_ARRIVE:
		reg_file_data_arrive_callback((file_data_arrive_callback)pf);
	break;

	case CB_MSG_USER_MPU_MSG_ARRIVE:
		reg_user_msg_arrive_callback((user_msg_arrive_callback)pf);
	break;

	case CB_MSG_SMS_ARRIVE:
		reg_sms_msg_arrive_callback((sms_msg_arrive_callback)pf);
	break;

	default:break;
	}

}




