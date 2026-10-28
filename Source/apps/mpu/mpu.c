#include "mpu.h"

char mcu_update_mode_flag = 0;
char mpu_usual_ack_flag = 0;		//MPU的通用应答
unsigned int s_last_recv_update_bag_time = 0;

void send_shutdown_signal_to_mpu(void)
{
#if 1
	static OS_SEM s_shutdown_sem = {0};

	if (s_shutdown_sem.pName == 0)
	{
		os_create_sem(&s_shutdown_sem,"shutdown_sem",1);
	}

	DBG_Print(LEVEL0,"wait the shutdown sem\r\n");
	os_sem_pend(&s_shutdown_sem,0);
	DBG_Print(LEVEL0,"already get the shutdown sem(%u)\r\n",GetRunTime());
	//4G模块关机
	pin_low(GPRS_ON_OFF_RCC,GPRS_ON_OFF_PORT,GPRS_ON_OFF_PIN);
	os_sleep(400);
	pin_high(GPRS_ON_OFF_RCC,GPRS_ON_OFF_PORT,GPRS_ON_OFF_PIN);
	os_sleep(4200);
	pin_low(GPRS_ON_OFF_RCC,GPRS_ON_OFF_PORT,GPRS_ON_OFF_PIN);
	os_sleep(36000);
	os_sem_post(&s_shutdown_sem);
#else
	mcu_send_msg_to_mpu(TCCP_MCU_TO_MPU_EXE_LINUX_CMD_MSG_ID,"shutdown -h now",strlen("shutdown -h now"));
	os_sleep(18000);
#endif
}

void mpu_time_monitor(void)
{
	static unsigned char s_last_mpu_t[6] = {60,60,60,60,60,60};
	unsigned char *pt = get_rtc_time();
	unsigned char temp = 0;

	if (s_last_mpu_t[5] != pt[5])
	{
		if (s_last_mpu_t[5] != 60)
		{
			temp = s_last_mpu_t[5] + 1;
			if (temp >= 60)
			{
				temp = 0;
			}

			//前后两次时间跨度不是1秒 认为时间有跳变 BUG存在
			if (temp != pt[5])
			{
				unsigned char rlen = 0;
				char tip[48] = {0};

				rlen = snprintf(tip,sizeof(tip),"last:%02d-%02d-%02d %02d:%02d:%02d cur:%02d-%02d-%02d %02d:%02d:%02d\r\n",
									s_last_mpu_t[0],s_last_mpu_t[1],s_last_mpu_t[2],s_last_mpu_t[3],s_last_mpu_t[4],s_last_mpu_t[5],
									pt[0],pt[1],pt[2],pt[3],pt[4],pt[5]);

				send_msg(S_MSG_SAVE_MCU_LOG,0,tip,(void *)rlen);
			}
		}

		memcpy(s_last_mpu_t,pt,6);
	}
}

char is_update_mode(void)
{
	return mcu_update_mode_flag;
}

void mcu_send_msg_to_mpu(unsigned int msgid,void *pcontent,unsigned int contentlen)
{
	unsigned char *psend = 0;
	unsigned int rlen = 0;

	psend = os_malloc(1536);
	if (psend)
	{
		rlen = tccp_pack(msgid,pcontent,(unsigned int)contentlen,psend,1536);

		if (rlen) send_to_mpu(psend,rlen);				
		os_free(psend);
	}
}

void mcu_modify_jiami_chip_id(void *chip_id,unsigned int chip_id_len)
{
	unsigned char *psend = 0;
	unsigned char *ptr = 0;
	unsigned int xlen = 0;
	unsigned int slen = 0;
	unsigned int templen = 0;
	unsigned short param_id = 0;

	if ((chip_id == 0) || (chip_id_len > 16))
	{
		return ;
	}

	psend = os_malloc(1536);
	if (psend)
	{
		ptr = psend + 6;

		param_id = PARAM_ID_FROM_MCU_CHIP_ID;
		//id
		ptr[xlen++] = param_id >> 8;
		ptr[xlen++] = param_id;
		//content len
		templen = chip_id_len;
		ptr[xlen++] = templen >> 8;
		ptr[xlen++] = templen;

		//content
		memcpy(ptr + xlen,chip_id,templen);
		xlen += templen;

		slen = tccp_pack(TCCP_MCU_TO_MPU_PARAM_EXT_MSG_ID,ptr,xlen,psend,1536);
		send_to_mpu(psend,slen);

		os_free(psend);
	}
}

void mcu_tell_mpu_position(INT32U lon,INT32U lat)
{
	unsigned char *psend = 0;
	unsigned char *ptr = 0;
	unsigned int xlen = 0;
	unsigned int slen = 0;
	unsigned int templen = 0;
	unsigned short param_id = 0;

	psend = os_malloc(128);
	if (psend)
	{
		ptr = psend + 6;

		param_id = PARAM_ID_FROM_MCU_POSITION;
		//id
		ptr[xlen++] = param_id >> 8;
		ptr[xlen++] = param_id;
		//content len
		templen = 8;
		ptr[xlen++] = templen >> 8;
		ptr[xlen++] = templen;

		//content
		ptr[xlen++] = lon >> 24;
		ptr[xlen++] = lon >> 16;
		ptr[xlen++] = lon >> 8;
		ptr[xlen++] = lon;

		ptr[xlen++] = lat >> 24;
		ptr[xlen++] = lat >> 16;
		ptr[xlen++] = lat >> 8;
		ptr[xlen++] = lat;

		slen = tccp_pack(TCCP_MCU_TO_MPU_PARAM_EXT_MSG_ID,ptr,xlen,psend,128);
		send_to_mpu(psend,slen);

		os_free(psend);
	}
}

void mcu_modify_server(unsigned char channel,void *ip,unsigned int port)
{
	unsigned char *psend = 0;
	unsigned char *ptr = 0;
	unsigned int xlen = 0;
	unsigned int slen = 0;
	unsigned int templen = 0;
	unsigned short param_id = 0;
	unsigned char iplen = 0;

	if (ip == 0)
	{
		return ;
	}

	psend = os_malloc(1536);
	if (psend)
	{
		ptr = psend + 6;

		param_id = PARAM_ID_FROM_MCU_SERVER;
		//id
		ptr[xlen++] = param_id >> 8;
		ptr[xlen++] = param_id;
		//content len
		iplen = strlen((char *)ip);
		if (iplen >= 48)
		{
			iplen = 48;
		}
		templen = 1 + 2 + iplen;

		ptr[xlen++] = templen >> 8;
		ptr[xlen++] = templen;

		//content
		ptr[xlen++] = channel;
		ptr[xlen++] = port >> 8;
		ptr[xlen++] = port;

		if (iplen) memcpy(ptr + xlen,ip,iplen);
		xlen += iplen;

		slen = tccp_pack(TCCP_MCU_TO_MPU_PARAM_EXT_MSG_ID,ptr,xlen,psend,1536);
		send_to_mpu(psend,slen);
	
		os_free(psend);
	}
}


void report_mcu_param(void)
{
	static unsigned char s_rp_mcu_param_flag = 0;
	unsigned char *psend = 0;
	unsigned char *ptr = 0;
	unsigned int xlen = 0;
	unsigned int slen = 0;
	unsigned int templen = 0;
	unsigned short param_id = 0;

	if (GetReportStatus())
	{
		s_rp_mcu_param_flag = 0;
	}

	if (s_rp_mcu_param_flag == 0)
	{
		psend = os_malloc(1536);
		if (psend)
		{
			ptr = psend + 6;

			param_id = PARAM_ID_FROM_MCU_SOFTWARE_VERSION;
			//id
			ptr[xlen++] = param_id >> 8;
			ptr[xlen++] = param_id;
			//content len
			templen = strlen(get_app_ver_ptr());
			if (templen >= 36)
			{
				templen = 36;
			}
			ptr[xlen++] = templen >> 8;
			ptr[xlen++] = templen;

			//content
			if (templen)
			{
				memcpy(ptr + xlen,get_app_ver_ptr(),templen);
				xlen += templen;
			}

			param_id = PARAM_ID_FROM_MCU_MAIN_POWER_VOL;
			//id
			ptr[xlen++] = param_id >> 8;
			ptr[xlen++] = param_id;
			//content len
			templen = 2;
			ptr[xlen++] = templen >> 8;
			ptr[xlen++] = templen;

			//content
			templen = get_main_power_vol();
			ptr[xlen++] = templen >> 8;
			ptr[xlen++] = templen;

			param_id = PARAM_ID_FROM_MCU_BAT_VOL;
			//id
			ptr[xlen++] = param_id >> 8;
			ptr[xlen++] = param_id;
			//content len
			templen = 2;
			ptr[xlen++] = templen >> 8;
			ptr[xlen++] = templen;

			//content
			templen = get_bat_power_vol();
			ptr[xlen++] = templen >> 8;
			ptr[xlen++] = templen;

			slen = tccp_pack(TCCP_MCU_TO_MPU_PARAM_EXT_MSG_ID,ptr,xlen,psend,1536);
			send_to_mpu(psend,slen);
		
			os_free(psend);
			s_rp_mcu_param_flag = 1;
		}
	}
}

void report_mcu_status(void)
{
	unsigned int cur_status1 = 0;
	unsigned int rlen = 0;
	unsigned char content[16] = {0};
	unsigned char psend[48] = {0};

	cur_status1 = get_mcu_status1();

	content[0] = cur_status1 >> 24;
	content[1] = cur_status1 >> 16;
	content[2] = cur_status1 >> 8;
	content[3] = cur_status1;
	rlen = tccp_pack(TCCP_MCU_TO_MPU_STATUS_MSG_ID,content,16,psend,48);
	send_to_mpu(psend,rlen);
}

void monitor_mcu_status(void)
{
	static unsigned int s_mcu_status1 = 0xFFFF;
	unsigned int cur_status1 = 0;

	cur_status1 = get_mcu_status1();
	if ((s_mcu_status1 != cur_status1) || get_report_mcu_status_flag())
	{
		report_mcu_status();
		s_mcu_status1 = cur_status1;
		set_report_mcu_status_flag(0);
	}
}


void get_sm2_sign_by_call_mpu(void *pdat,unsigned int datlen)
{
	unsigned int slen = 0;
	unsigned char *psend = 0;

	psend = os_malloc(1536);
	if (psend)
	{
		slen = tccp_pack(TCCP_MCU_TO_MPU_GET_SM2_SIGN_MSG_ID,pdat,datlen,psend,1536);
		send_to_mpu(psend,slen);

		os_free(psend);
	}
}

unsigned char is_string(void *ptr,unsigned int len)
{
	unsigned int i = 0;
	unsigned char dat = 0;

	if ((ptr == 0) || (len == 0))
	{
		return 0;
	}

	for (i = 0; i < len; i++)
	{
		dat = *((unsigned char *)ptr + i);
		if (((dat >= 'a') && (dat <= 'z')) || ((dat >= 'A') && (dat <= 'Z')) || ((dat >= '0') && (dat <= '9')))
		{

		}
		else
		{
			return 0;
		}
	}

	return 1;
}

void analyze_mpu_data(unsigned int msgid,void * content,unsigned int contentlen)
{
	unsigned char sbuf[128 + 16] = {0};
	unsigned int rlen = 0;
	unsigned char *ptr = (unsigned char *)content;
	unsigned int templen = 0;
/*	
	static unsigned char flag_mpu_online = 0;
	if(!flag_mpu_online)
	{
		exit_init(GPRS_RI_RCC,GPRS_RI_PORT,GPRS_RI_PIN,GPRS_RI_PIN_MODE, NVIC_SystemReset);
		flag_mpu_online = 1;
	}
*/
	DBG_Print(LEVEL0,"msgid = %d,contentlen = %d\r\n",msgid,contentlen);
	switch (msgid)
	{
	case TCCP_MPU_TO_MCU_USUAL_ACK_MSG_ID:
		mpu_usual_ack_flag = 1;
	break;
	case TCCP_FILE_SEND_START_MSG_ID:
		s_last_recv_update_bag_time = GetRunTime();
		mcu_update_mode_flag = 1;

		ota_start(0);

		DBG_Print(LEVEL2,"mcu start recv file\r\n");

		//next bag
		rlen = tccp_pack(TCCP_FILE_SEND_NEXT_MSG_ID,0,0,sbuf,sizeof(sbuf));
		send_to_mpu(sbuf,rlen);
	break;

	case TCCP_SEND_FILE_MSG_ID:
		set_no_mpu_msg_time(0);
		s_last_recv_update_bag_time = GetRunTime();

		if (ota_write(ptr,contentlen) != 0)
		{
			DBG_Print(LEVEL2,"ota chunk not stored (%uBytes)\r\n",contentlen);
			break;
		}

		//next bag only after the chunk is in flash
		rlen = tccp_pack(TCCP_FILE_SEND_NEXT_MSG_ID,0,0,sbuf,sizeof(sbuf));
		send_to_mpu(sbuf,rlen);

		DBG_Print(LEVEL4,"recv file(%uBytes)\r\n",get_ota_file_size());
	break;

	case TCCP_FILE_SEND_FINISH_MSG_ID:
		DBG_Print(LEVEL2,"file send finish(%uBytes)\r\n",get_ota_file_size());
		if (ota_image_is_valid() == 0)
		{
			ota_download_finish();
			break;
		}
		send_shutdown_signal_to_mpu();
		ota_download_finish();
	break;

	case TCCP_NET_DATA_ARRIVE_MSG_ID:
	if (contentlen > 1)
	{
		unsigned char *pt = get_rtc_time();
		
		server_data_arrive_callback pf = get_server_data_arrive_callback_ptr();

		templen = contentlen - 1;
		DBG_Print(LEVEL2,"(%02d-%02d-%02d %02d:%02d:%02d)[%u]net data arrive(%uBytes):\r\n",
							pt[0],pt[1],pt[2],pt[3],pt[4],pt[5],ptr[0],templen);
		DBG_PrintBuf(LEVEL2,0,ptr + 1,templen);
		
		if (pf)
		{
			pf(ptr[0],ptr+1,templen);
		}
		
	}
	break;
	case TCCP_MPU_SEND_ONLINE_MSG_ID:
	{
		if (contentlen > 0)
		{
			callback_func pf = get_connect_server_ok_func_ptr();
			DBG_Print(LEVEL2,"[link%u]connect ok(sys run:%u)\r\n",ptr[0],GetRunTime());
			set_net_link_status(ptr[0],1);
			
			if (pf)
			{
				pf((void *)ptr[0]);
			}
		}
	}
	break;
	case TCCP_MPU_SEND_OFFLINE_MSG_ID:
	{
		if (contentlen > 0)
		{
			callback_func pf = get_disconnect_server_func_ptr();
			DBG_Print(LEVEL2,"[link%u]disconnect\r\n",ptr[0]);
			set_net_link_status(ptr[0],0);
			
			if (pf)
			{
				pf((void *)ptr[0]);
			}
		}
	}
	break;
	case TCCP_MPU_HEAT_MSG_ID:
	{
		unsigned int xlen = contentlen;
		unsigned short paramid = 0;
		unsigned char D0 = 0;
		unsigned char D1 = 0;
		unsigned int clen = 0;

		set_mpu_heart_flag(1);
		set_no_mpu_msg_time(0);
		DBG_Print(LEVEL0,"TCCP_MPU_HEAT_MSG_ID\r\n");
		if (contentlen < 14) break;
		if (GetGPSExistFlag() && IsPosition())
		{
			if (is_time_format_ok(ptr))
			{
				set_rtc_time(ptr);
			}
			else
			{
				gps_get_time(sbuf);
				set_rtc_time(sbuf);
			}
		}
		else
		{
			if (is_time_format_ok(ptr))
			{
				set_rtc_time(ptr);
			}

			templen = byte_to_u32(ptr[6],ptr[7],ptr[8],ptr[9]);
			if (templen) SetLong(templen);
			templen = byte_to_u32(ptr[10],ptr[11],ptr[12],ptr[13]);
			if (templen) SetLat(templen);
		}

		//mpu_time_monitor();

		if (xlen >= 14)
		{
			xlen -= (6 + 4 + 4);
		}
		else
		{
			xlen = 0;
		}
		rlen = 14;
		while (xlen > 4)
		{
			unsigned int value_temp = 0;
			unsigned int i_count = 0;

			if ((rlen + 4) > contentlen)
			{
				break;
			}
			D0 = ptr[rlen++];
			D1 = ptr[rlen++];
			paramid = (D0 << 8) + D1;

			D0 = ptr[rlen++];
			D1 = ptr[rlen++];
			clen = (D0 << 8) + D1;

			/* Value must sit entirely inside the bytes still in this frame. */
			if ((clen > (xlen - 4)) || ((rlen + clen) > contentlen))
			{
				break;
			}

			switch (paramid)
			{
			case PARAM_ID_FROM_MPU_SOFTWARE_VERSION:
				set_mpu_ver(ptr + rlen,clen);
			break;
			case PARAM_ID_FROM_MPU_GPS_SPEED:
				if (clen >= 2) SetGpsSpeed((ptr[rlen + 0] << 8) + ptr[rlen + 1]);
			break;
			case PARAM_ID_FROM_MPU_SIM_SIGNAL_STRENGTH:
				if (clen >= 2) set_sim_signal_strength((ptr[rlen + 0] << 8) + ptr[rlen + 1]);
			break;
			case PARAM_ID_FROM_MPU_GAODU:
				if (clen >= 2) SetGaoDu((ptr[rlen + 0] << 8) + ptr[rlen + 1]);
			break;
			case PARAM_ID_FROM_MPU_ANGLE:
				//SetAngle((ptr[rlen + 0] << 8) + ptr[rlen + 1]);
			break;
			case PARAM_ID_FROM_MPU_SERVER0_ADDR:
				memset(sbuf,0,sizeof(sbuf));
				memcpy(sbuf,ptr + rlen,(clen > 127) ? 127 : clen);
				SPSetServerAddr(0,sbuf);
			break;
			case PARAM_ID_FROM_MPU_SERVER0_PORT:
				if (clen >= 2) SPSetServerPort(0,(ptr[rlen + 0] << 8) + ptr[rlen + 1]);
			break;
			case PARAM_ID_FROM_MPU_SERVER1_ADDR:
				memset(sbuf,0,sizeof(sbuf));
				memcpy(sbuf,ptr + rlen,(clen > 127) ? 127 : clen);
				SPSetServerAddr(1,sbuf);
			break;
			case PARAM_ID_FROM_MPU_SERVER1_PORT:
				if (clen >= 2) SPSetServerPort(1,(ptr[rlen + 0] << 8) + ptr[rlen + 1]);
			break;
			case PARAM_ID_FROM_MPU_SERVER2_ADDR:
				memset(sbuf,0,sizeof(sbuf));
				memcpy(sbuf,ptr + rlen,(clen > 127) ? 127 : clen);
				SPSetServerAddr(2,sbuf);
			break;
			case PARAM_ID_FROM_MPU_SERVER2_PORT:
				if (clen >= 2) SPSetServerPort(2,(ptr[rlen + 0] << 8) + ptr[rlen + 1]);
			break;
			case PARAM_ID_FROM_MPU_SERVER3_ADDR:
				memset(sbuf,0,sizeof(sbuf));
				memcpy(sbuf,ptr + rlen,(clen > 127) ? 127 : clen);
				SPSetServerAddr(3,sbuf);
			break;
			case PARAM_ID_FROM_MPU_SERVER3_PORT:
				if (clen >= 2) SPSetServerPort(3,(ptr[rlen + 0] << 8) + ptr[rlen + 1]);
			break;

			case PARAM_ID_FROM_MPU_SERVER4_PORT:
				if (clen >= 2) SPSetServerPort(4,(ptr[rlen + 0] << 8) + ptr[rlen + 1]);
			break;
			case PARAM_ID_FROM_MPU_SERVER5_PORT:
				if (clen >= 2) SPSetServerPort(5,(ptr[rlen + 0] << 8) + ptr[rlen + 1]);
			break;
			case PARAM_ID_FROM_MPU_SERVER6_PORT:
				if (clen >= 2) SPSetServerPort(6,(ptr[rlen + 0] << 8) + ptr[rlen + 1]);
			break;
			case PARAM_ID_FROM_MPU_SERVER7_PORT:
				if (clen >= 2) SPSetServerPort(7,(ptr[rlen + 0] << 8) + ptr[rlen + 1]);
			break;
			case PARAM_ID_FROM_MPU_GET_MCU_PARAM_SW:
				if (clen >= 1) SetReportStatus(ptr[rlen]);
			break;
			case PARAM_ID_FROM_MPU_PUBLIC_KEY:
				if (clen >= 64) memcpy(get_public_key_ptr(),ptr + rlen,64);
			break;
			case PARAM_ID_FROM_MPU_CHIP_ID:
				if (clen >= 16) memcpy(get_jiami_chip_id_ptr(),ptr + rlen,16);
			break;
			case PARAM_ID_FROM_MPU_STASTUS1:			//status1
				if (clen < 4) break;
				value_temp += ptr[rlen + 0] << 24;
				value_temp += ptr[rlen + 1] << 16;
				value_temp += ptr[rlen + 2] << 8;
				value_temp += ptr[rlen + 3];
				//DBG_Print(LEVEL0,"status1:%08X\r\n",value_temp);
				value_temp = value_temp>>3 &(0xFF);
				for(i_count = 0;i_count<9;i_count++)
				{
					set_net_link_status(i_count,((value_temp >> i_count) &0x01));
				}
			break;
			default:break;
			}

			rlen += clen;

			if (xlen >= (2 + 2 + clen))
			{
				xlen -= (2 + 2 + clen);
			}
			else
			{
				xlen = 0;
			}
		}

		if (is_update_mode() == 0)
		{
			DBG_Print(LEVEL0,"%d,%d,%d,%d,%d\r\n",get_net_link_status(0),get_net_link_status(1),get_net_link_status(2),get_net_link_status(3),get_net_link_status(4));
			set_net_link_status(0,get_net_link_status(0));
			set_net_link_status(1,get_net_link_status(1));
			set_net_link_status(2,get_net_link_status(2));
			set_net_link_status(3,get_net_link_status(3));
		}

		monitor_mcu_status();

		report_mcu_param();

		//在外挂GPS模块定位的情况下 定时向MPU报告位置
		if (IsPosition())
		{
			static INT32U s_last_lon_lat_time = 0;

			if ((GetRunTime() - s_last_lon_lat_time) >= 10)
			{
				mcu_tell_mpu_position(GetLong(),GetLat());

				s_last_lon_lat_time = GetRunTime();
			}
		}
	}
	break;
	case TCCP_MPU_SEND_PARAM_MSG_ID:
		if (contentlen < 38) break;
		DBG_Print(LEVEL2,"[drv]mpu param:%s\r\n",ptr);
		rlen = 0;

		SetVIN(ptr);
		rlen += 17;

		if(is_string(ptr + rlen,20))
		{
			memcpy(get_iccid_ptr(),ptr + rlen,20);
		}
		rlen += 20;

		if (rlen >= contentlen)
		{
			break;
		}
		templen = ptr[rlen++];
		if (templen > 20)
		{
			templen = 20;
		}
		if ((rlen + templen) > contentlen)
		{
			break;
		}
		if (templen)
		{
			memcpy(get_imei_ptr(),ptr + rlen,templen);
		}
		rlen += templen;
	break;
	case TCCP_MPU_ACK_MCU_MSG_ID:
		if (contentlen >= 2)
		{
			linux_cmd_ack_data_arrive_callback pf = get_linux_cmd_ack_data_arrive_callback_ptr();

			DBG_Print(LEVEL3,"mpu ack[%04X]:%s\r\n",(ptr[0] << 8) + ptr[1],ptr + 2);
			if (pf)
			{
				if (contentlen > 2) pf(ptr + 2,contentlen - 2);
			}
		}
	break;

	//mpu param msg
	case TCCP_MPU_TO_MCU_PARAM_EXT_MSG_ID:

	break;
	case TCCP_MPU_TO_MCU_STATUS_MSG_ID:
	if (contentlen >= 4) set_mpu_status1((ptr[0] << 24) + (ptr[1] << 16) + (ptr[2] << 8) + ptr[3]);
	DBG_Print(LEVEL2,"[drv]mpu sta:%08X\r\n",get_mpu_status1());
	break;

	case TCCP_MPU_TO_MCU_CACHE_DATA_ARRIVE_MSG_ID:
	{
		cache_data_arrive_callback pf = get_cache_data_arrive_callback_ptr();
		
		if (pf && (contentlen > 1))
		{
			DBG_PrintBuf(LEVEL1,"cache data arrive\r\n",ptr,(contentlen > 32) ? 32 : (contentlen - 1));
			pf(ptr[0],ptr + 1,contentlen - 1);
		}
	}
	break;
	case TCCP_MPU_TO_MCU_SM2_SIGN_DATA_ARRIVE_MSG_ID:
	{
		//unsigned int slen = 0;
		unsigned char *psend = 0;

		psend = os_malloc(1536);
		if (psend)
		{
			memcpy(sbuf,get_public_key_ptr(),64);
			memcpy(sbuf + 64,"1234567812345678",16);
			if (contentlen >= 64) memcpy(sbuf + 64 + 16,ptr,64);

			//slen = dbg_pack(psend,1536,0xa5,sbuf,64 + 16 + 64);
			//usart0_send_data(psend,slen);

			os_free(psend);
		}
	}
	break;
	case TCCP_MPU_TO_MCU_BEIAN_MSGBODY_ARRIVE_MSG_ID:
		if (contentlen >= 169)
		{
			memcpy(get_beian_msg_body_with_sign_ptr(),ptr,6 + 16 + 64 + 17 + 66);

			DBG_PrintBuf(LEVEL2,"[drv]beian sign:\r\n",get_beian_msg_body_with_sign_ptr(),169);
		}
	break;
	case TCCP_MPU_TO_MCU_E_PARAM_ARRIVE_MSG_ID:
	{
		easy_change_param_arrive_callback pf = get_easy_change_param_arrive_callback_ptr();
		if (pf)
		{
			pf(ptr,contentlen);
		}
	}
	break;
	case TCCP_MPU_TO_MCU_FILE_DATA_ARRIVE_MSG_ID:
	{
		file_data_arrive_callback pf = get_file_data_arrive_callback_ptr();

		if (pf && (contentlen > 5))
		{
			templen = (ptr[1] << 24) + (ptr[2] << 16) + (ptr[3] << 8) + ptr[4];

			DBG_Print(LEVEL2,"file data arrive:%uBytes offset:%u file_type:%u\r\n",contentlen - 5,templen,ptr[0]);
			pf (ptr[0],templen,ptr + 5,contentlen - 5);
		}
	}
	break;
	case TCCP_MPU_TO_MCU_USER_MSG_ARRIVE_MSG_ID:
	{
		user_msg_arrive_callback pf = get_user_msg_arrive_callback_ptr();

		if (pf && (contentlen >= 2))
		{
			pf ((ptr[0] << 8) + ptr[1],ptr + 2,contentlen - 2);
		}
	}
	break;

	case TCCP_MPU_TO_MCU_SMS_ARRIVE_MSG_ID:
	{
		//时间(6B) + 源短信号码(24B) + 短信内容
		sms_msg_arrive_callback pf = get_sms_msg_arrive_callback_ptr();

		if (pf && (contentlen >= 30)) pf(ptr,ptr + 6,ptr + 30,contentlen - 30);
	}
	break;

	default:break;
	}

}


void update_status_indicator_proc(void)
{
	static unsigned char s_update_status_indicator_flag = 0;

	if (is_update_mode())
	{
		s_update_status_indicator_flag = !s_update_status_indicator_flag;
		set_sys_led(s_update_status_indicator_flag);
		set_can_led(s_update_status_indicator_flag);
		set_gps_led(s_update_status_indicator_flag);
		if ((GetRunTime() - s_last_recv_update_bag_time) >= 5)
		{
			mcu_update_mode_flag = 0;
			mcu_send_msg_to_mpu(TCCP_MCU_TO_MPU_EXE_LINUX_CMD_MSG_ID,"reboot",strlen("reboot"));
		}
	}
}


