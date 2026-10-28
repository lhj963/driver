#include "SysParam.h"


SysParam s_stUserParam = {0};
SysParam s_stYZUserParam = {0};

/* 存储升级文件的信息 */
UpdateInfo stUpdateInfo;				//BOOT会根据该位置信息 去进行远程升级

typedef struct tagDFGFTboxStatus
{
	INT8U is_position;//定位状态
	INT8U stars_count;//GPS卫星数量
	INT32U gps_lon;//经度
	INT32U gps_lat;//维度
	INT16U gps_speed;//GPS速度
	INT8U gps_angle;//方向
	INT16U gps_haiab;//海拔
	INT8U gps_signal;//GPS信号强度
	INT16U jizhan_lac;//基站LAC
	INT16U jizhan_cid;//基站CID
	INT32U main_dianya;//B+电压
	INT8U signal_4g;//4G信号强度
	INT8U dev_num_len;//设备号长度
	INT8U dev_num[32];//设备号
	INT8U imei_num_len;//设备IMEI号长度
	INT8U imei_num[32];//设备IMEI
	INT8U budian_status;					//补电状态
}DFGFTboxStatus;

typedef struct tagQJBL
{
	INT8U aucServerChangeFlag[MAX_SVR_LINK_CNT];	//服务器地址端口发生改变标志

	INT8U ucEmptyStoreBlockFlag;		//清空存储块标志
	INT16U usStoreBlockNo;				//存储块NO

	INT8U ucDefaultFlag : 1;					//恢复默认参数标志
	INT8U ucReportStatusSw : 1;
	INT8U ucSystemRestartFlag : 1;					//重启标志
	/* 通信模块是否存在 */
	INT8U ucIsExistModem : 1;
	/* GPS模块是否存在 */
	INT8U ucIsExistGPS : 1;
	unsigned char mdm_dbg_flag : 1;
	unsigned char ucCanToUsbFlag : 1;
	INT8U ucHeartBeatSw : 1;
	INT8U ucIsJiaMiChipOK : 1;

	INT8U open_ec20_flag : 1;		//标识是否是open EC20模块

	unsigned char mpu_heart_flag : 1;
	unsigned char report_mcu_status_flag : 1;

	INT8U ucStartTest;		//开始测试

	unsigned long runtime;

	unsigned int main_power_vol;		//主电电压
	unsigned int bat_power_vol; 		//备电电压
	INT16U main_power_ad_val[10];
	INT8U main_power_ad_idx;

	INT16U gps_ant_ad_val[10];
	INT8U gps_ant_ad_idx;

	dbg_usart_data_arrive_callback pDBGUsartArrive;
	gps_usart_data_arrive_callback pGPSUsartArrive;
	server_data_arrive_callback pserver_data_arrive;
	linux_cmd_ack_data_arrive_callback plinux_cmd_ack_data_arrive;
	cache_data_arrive_callback pcache_data_arrive;
	main_power_off_callback pmain_power_off;
	easy_change_param_arrive_callback pEasyChangeParamArrive;
	file_data_arrive_callback pfile_data_arrive_callback;
	user_msg_arrive_callback puser_msg_arrive_callback;
	sms_msg_arrive_callback psms_msg_arrive_callback;

	timer_one_ms_func ptimer_one_ms_func;

	char appver[36];				//APP软件版本
	char mpu_ver[36];				//mpu软件版本


	unsigned char rtc_time[6];

	char iccid[20 + 1];
	char imei[20 + 1];

	unsigned int no_mpu_msg_time;
	unsigned int mpu_uart_bps;

	unsigned char sim_signal_strength;
	unsigned short net_link_status;		//ervery bit means one link

	//mcu_status1
	//0bit gps ant
	//1bit gprs ant
	//2bit can0
	//3bit can1
	//4bit can2
	//5bit acc status
	//6bit g-senser
	//7bit at24c08
	//8bit gps moudle
	//9bit collect cache data
	//10bit power mode 0:main 1:bat
	unsigned int mcu_status1;
	unsigned int mcu_status2;
	unsigned int mcu_status3;
	unsigned int mcu_status4;

	//0bit jiami_chip
	//1bit emmc
	//2bit gps定位状态
	//13bit wifi
	unsigned int mpu_status1;
	unsigned int mpu_status2;
	unsigned int mpu_status3;
	unsigned int mpu_status4;

	unsigned char public_key[64];
	unsigned char jiami_chip_id[17];
	unsigned char beian_msg_body[192];
	
	DFGFTboxStatus s_DFGFTboxStatus;
}QJBL;

static QJBL s_stQJBL = {0};

void update_tbox_status(void)
{
	s_stQJBL.s_DFGFTboxStatus.is_position = IsPosition();
	s_stQJBL.s_DFGFTboxStatus.stars_count = GetStartNum();
	s_stQJBL.s_DFGFTboxStatus.gps_lon = GetLong();
	s_stQJBL.s_DFGFTboxStatus.gps_lat = GetLat();
	s_stQJBL.s_DFGFTboxStatus.gps_speed = GetGpsSpeed();
	s_stQJBL.s_DFGFTboxStatus.gps_angle= GetAngle()/128;
	s_stQJBL.s_DFGFTboxStatus.gps_haiab = GetGaoDu();
	//s_stQJBL.s_DFGFTboxStatus.gps_signal= GetStartNum();
	
	s_stQJBL.s_DFGFTboxStatus.jizhan_lac= 0x01;
	s_stQJBL.s_DFGFTboxStatus.jizhan_cid= 0x01;
	s_stQJBL.s_DFGFTboxStatus.main_dianya= read_main_power_vol();
	s_stQJBL.s_DFGFTboxStatus.signal_4g= 56;
	s_stQJBL.s_DFGFTboxStatus.dev_num_len = 20;
	memcpy(s_stQJBL.s_DFGFTboxStatus.dev_num,get_iccid_ptr(),20);
	s_stQJBL.s_DFGFTboxStatus.imei_num_len= 21;
	memcpy(s_stQJBL.s_DFGFTboxStatus.imei_num,get_imei_ptr(),21);
	s_stQJBL.s_DFGFTboxStatus.budian_status = 0x0;
}

unsigned char *get_beian_msg_body_with_sign_ptr(void)
{
	return s_stQJBL.beian_msg_body;
}

unsigned char *get_jiami_chip_id_ptr(void)
{
	return s_stQJBL.jiami_chip_id;
}

unsigned char *get_public_key_ptr(void)
{
	return s_stQJBL.public_key;
}

unsigned short get_gps_ant_ad_val(unsigned char idx)
{
	return s_stQJBL.gps_ant_ad_val[idx];
}

void add_gps_ant_ad_val_to_list(unsigned short val)
{
	if (s_stQJBL.gps_ant_ad_idx >= 10)
	{
		s_stQJBL.gps_ant_ad_idx = 0;
	}

	s_stQJBL.gps_ant_ad_val[s_stQJBL.gps_ant_ad_idx] = val;
	s_stQJBL.gps_ant_ad_idx++;
	if (s_stQJBL.gps_ant_ad_idx >= 10)
	{
		s_stQJBL.gps_ant_ad_idx = 0;
	}
}

INT16U *get_main_power_ad_val_ptr(void)
{
	return s_stQJBL.main_power_ad_val;
}

unsigned short get_main_power_ad_val(unsigned char idx)
{
	return s_stQJBL.main_power_ad_val[idx];
}

void add_main_power_ad_val_to_list(unsigned short val)
{
	if (s_stQJBL.main_power_ad_idx >= 10)
	{
		s_stQJBL.main_power_ad_idx = 0;
	}

	s_stQJBL.main_power_ad_val[s_stQJBL.main_power_ad_idx] = val;
	s_stQJBL.main_power_ad_idx++;
	if (s_stQJBL.main_power_ad_idx >= 10)
	{
		s_stQJBL.main_power_ad_idx = 0;
	}
}

void set_net_link_status(unsigned char channel,unsigned char val)
{
	if (val)
	{
		s_stQJBL.net_link_status |= (1 << channel);
	}
	else
	{
		s_stQJBL.net_link_status &= (~(1 << channel));
	}
}

unsigned char get_net_link_status(unsigned char channel)
{
	if (s_stQJBL.net_link_status & (1 << channel))
	{
		return 1;
	}
	return 0;
}

unsigned char get_sim_signal_strength(void)
{
	return s_stQJBL.sim_signal_strength;
}

void set_sim_signal_strength(unsigned char val)
{
	s_stQJBL.sim_signal_strength = val;
}


void set_gps_ant_status(unsigned char val)
{
	if (val)
	{
		s_stQJBL.mcu_status1 |= (1 << 0);
	}
	else
	{
		s_stQJBL.mcu_status1 &= (~(1 << 0));
	}
}

void set_gprs_ant_status(unsigned char val)
{
	if (val)
	{
		s_stQJBL.mcu_status1 |= (1 << 1);
	}
	else
	{
		s_stQJBL.mcu_status1 &= (~(1 << 1));
	}
}

unsigned char get_can_status(unsigned char channel)
{
	if (channel >= 3)
	{
		return 0;
	}

	return (s_stQJBL.mcu_status1 & (1 << (2+channel))) ? 1 : 0;
}

void set_can_status(unsigned char channel,unsigned char val)
{
	if (channel >= 3)
	{
		return ;
	}
	if (val)
	{
		s_stQJBL.mcu_status1 |= (1 << (2+channel));
	}
	else
	{
		s_stQJBL.mcu_status1 &= (~(1 << (2+channel)));
	}
}

unsigned char get_acc_status(void)
{
	return (s_stQJBL.mcu_status1 & (1 << 5)) ? 1 : 0;
}

void set_acc_status(unsigned char val)
{
	if (val)
	{
		s_stQJBL.mcu_status1 |= (1 << 5);
	}
	else
	{
		s_stQJBL.mcu_status1 &= (~(1 << 5));
	}
}

unsigned char get_gsenser_chip_status(void)
{
	return (s_stQJBL.mcu_status1 & (1 << 6)) ? 1 : 0;
}

void set_gsenser_chip_status(unsigned char val)
{
	if (val)
	{
		s_stQJBL.mcu_status1 |= (1 << 6);
	}
	else
	{
		s_stQJBL.mcu_status1 &= (~(1 << 6));
	}
}

unsigned char get_at24c08_chip_status(void)
{
	return (s_stQJBL.mcu_status1 & (1 << 7)) ? 1 : 0;
}

void set_at24c08_chip_status(unsigned char val)
{
	if (val)
	{
		s_stQJBL.mcu_status1 |= (1 << 7);
	}
	else
	{
		s_stQJBL.mcu_status1 &= (~(1 << 7));
	}
}

unsigned char get_gps_module_status(void)
{
	return (s_stQJBL.mcu_status1 & (1 << 8)) ? 1 : 0;
}

void set_gps_module_status(unsigned char val)
{
	if (val)
	{
		s_stQJBL.mcu_status1 |= (1 << 8);
	}
	else
	{
		s_stQJBL.mcu_status1 &= (~(1 << 8));
	}
}

unsigned char get_collect_cache_data_flag(void)
{
	return (s_stQJBL.mcu_status1 & (1 << 9)) ? 1 : 0;
}

void set_collect_cache_data_flag(unsigned char val)
{
	if (val)
	{
		s_stQJBL.mcu_status1 |= (1 << 9);
	}
	else
	{
		s_stQJBL.mcu_status1 &= (~(1 << 9));
	}
}

INT8U get_power_supply_mode(void)
{
	return (s_stQJBL.mcu_status1 & (1 << 10)) ? 1 : 0;
}

void set_power_supply_mode(INT8U val)
{
	if (val)
	{
		s_stQJBL.mcu_status1 |= (1 << 10);
	}
	else
	{
		s_stQJBL.mcu_status1 &= (~(1 << 10));
	}
}

unsigned int get_mcu_status1(void)
{
	return s_stQJBL.mcu_status1;
}

void set_mcu_status1(unsigned int val)
{
	s_stQJBL.mcu_status1 = val;
}

unsigned char get_jiami_chip_status(void)
{
	return (s_stQJBL.mpu_status1 & (1 << 0)) ? 1 : 0;
}

unsigned char get_emmc_chip_status(void)
{
	return (s_stQJBL.mpu_status1 & (1 << 1)) ? 1 : 0;
}

unsigned char get_mpu_gps_local_status(void)
{
	return (s_stQJBL.mpu_status1 & (1 << 2)) ? 1 : 0;
}

unsigned char get_wifi_status(void)
{
	return (s_stQJBL.mpu_status1 & (1 << 13)) ? 1 : 0;
}

unsigned int get_mpu_status1(void)
{
	return s_stQJBL.mpu_status1;
}

void set_mpu_status1(unsigned int val)
{
	s_stQJBL.mpu_status1 = val;
}


unsigned int get_mpu_uart_bps(void)
{
	return s_stQJBL.mpu_uart_bps;
}

void set_mpu_uart_bps(unsigned int val)
{
	s_stQJBL.mpu_uart_bps = val;
}

unsigned char get_mpu_heart_flag(void)
{
	return s_stQJBL.mpu_heart_flag;
}

void set_mpu_heart_flag(unsigned char val)
{
	s_stQJBL.mpu_heart_flag = val;
}

unsigned char get_report_mcu_status_flag(void)
{
	return s_stQJBL.report_mcu_status_flag;
}

void set_report_mcu_status_flag(unsigned char val)
{
	s_stQJBL.report_mcu_status_flag = val;
}

unsigned int get_no_mpu_msg_time(void)
{
	return s_stQJBL.no_mpu_msg_time;
}

void set_no_mpu_msg_time(unsigned int val)
{
	s_stQJBL.no_mpu_msg_time = val;
}



char *get_imei_ptr(void)
{
	return s_stQJBL.imei;
}

char *get_iccid_ptr(void)
{
	return s_stQJBL.iccid;
}

unsigned char *get_rtc_time(void)
{
	return s_stQJBL.rtc_time;
}

void set_rtc_time(unsigned char t[6])
{
	memcpy(s_stQJBL.rtc_time,t,6);
}

void set_open_ec20_flag(INT8U val)
{
	if (s_stQJBL.open_ec20_flag == val) return ;

	s_stQJBL.open_ec20_flag = val;
}

INT8U get_open_ec20_flag(void)
{
	return s_stQJBL.open_ec20_flag;
}

char *get_app_ver_ptr(void)
{
	return s_stQJBL.appver;
}

char *get_mpu_ver_ptr(void)
{
	return s_stQJBL.mpu_ver;
}

void set_mpu_ver(void *ptr,unsigned int len)
{
	memset(s_stQJBL.mpu_ver,0,sizeof(s_stQJBL.mpu_ver));
	if (ptr && len)
	{
		memcpy(s_stQJBL.mpu_ver,ptr,(len > sizeof(s_stQJBL.mpu_ver)) ? sizeof(s_stQJBL.mpu_ver) : len);
	}
}

unsigned int get_mpu_ver(void *pOut,unsigned int outbuflen)
{
	unsigned int templen = 0;
	if (pOut && outbuflen)
	{
		templen = (outbuflen > sizeof(s_stQJBL.mpu_ver)) ? sizeof(s_stQJBL.mpu_ver) : outbuflen;
		memcpy(pOut,s_stQJBL.mpu_ver,templen);
	}
	return templen;
}


void set_heart_beat_sw(INT8U val)
{
	s_stQJBL.ucHeartBeatSw = val;
}

INT8U get_heart_beat_sw(void)
{
	return s_stQJBL.ucHeartBeatSw;
}


timer_one_ms_func get_timer_one_ms_func_ptr(void)
{
	return s_stQJBL.ptimer_one_ms_func;
}

void reg_timer_one_ms_func_callback(timer_one_ms_func func)
{
	s_stQJBL.ptimer_one_ms_func = func;
}

dbg_usart_data_arrive_callback get_dbg_usart_data_arrive_callback_ptr(void)
{
	return s_stQJBL.pDBGUsartArrive;
}

void reg_dbg_usart_data_arrive_callback(void (*dat_arrive_callback)(void *,unsigned int))
{
	s_stQJBL.pDBGUsartArrive = dat_arrive_callback;
}

gps_usart_data_arrive_callback get_gps_usart_data_arrive_callback_ptr(void)
{
	return s_stQJBL.pGPSUsartArrive;
}

void reg_gps_usart_data_arrive_callback(void (*dat_arrive_callback)(void *,unsigned int))
{
	s_stQJBL.pGPSUsartArrive = dat_arrive_callback;
}


void reg_server_data_arrive_callback(void (*dat_arrive_callback)(unsigned char,void *,unsigned int))
{
	s_stQJBL.pserver_data_arrive = dat_arrive_callback;
}

server_data_arrive_callback get_server_data_arrive_callback_ptr(void)
{
	return s_stQJBL.pserver_data_arrive;
}

linux_cmd_ack_data_arrive_callback get_linux_cmd_ack_data_arrive_callback_ptr(void)
{
	return s_stQJBL.plinux_cmd_ack_data_arrive;
}

void reg_linux_cmd_ack_data_arrive_callback(linux_cmd_ack_data_arrive_callback pf)
{
	s_stQJBL.plinux_cmd_ack_data_arrive = pf;
}

cache_data_arrive_callback get_cache_data_arrive_callback_ptr(void)
{
	return s_stQJBL.pcache_data_arrive;
}

void reg_cache_data_arrive_callback(cache_data_arrive_callback pf)
{
	s_stQJBL.pcache_data_arrive = pf;
}

main_power_off_callback get_main_power_off_callback_ptr(void)
{
	return s_stQJBL.pmain_power_off;
}

void reg_main_power_off_callback(main_power_off_callback pf)
{
	s_stQJBL.pmain_power_off = pf;
}

easy_change_param_arrive_callback get_easy_change_param_arrive_callback_ptr(void)
{
	return s_stQJBL.pEasyChangeParamArrive;
}

void reg_easy_change_param_arrive_callback(void (*dat_arrive_callback)(void *,unsigned int))
{
	s_stQJBL.pEasyChangeParamArrive = dat_arrive_callback;
}

file_data_arrive_callback get_file_data_arrive_callback_ptr(void)
{
	return s_stQJBL.pfile_data_arrive_callback;
}

void reg_file_data_arrive_callback(file_data_arrive_callback cb)
{
	s_stQJBL.pfile_data_arrive_callback = cb;
}

user_msg_arrive_callback get_user_msg_arrive_callback_ptr(void)
{
	return s_stQJBL.puser_msg_arrive_callback;
}

void reg_user_msg_arrive_callback(user_msg_arrive_callback cb)
{
	s_stQJBL.puser_msg_arrive_callback = cb;
}

sms_msg_arrive_callback get_sms_msg_arrive_callback_ptr(void)
{
	return s_stQJBL.psms_msg_arrive_callback;
}

void reg_sms_msg_arrive_callback(sms_msg_arrive_callback cb)
{
	s_stQJBL.psms_msg_arrive_callback = cb;
}

void SetCanToUsbFlag(INT8U val)
{
	s_stQJBL.ucCanToUsbFlag = val;
}

INT8U GetCanToUsbFlag(void)
{
	return s_stQJBL.ucCanToUsbFlag;
}


unsigned int get_main_power_vol(void)
{
	return s_stQJBL.main_power_vol;
}

void set_main_power_vol(unsigned int val)
{
	s_stQJBL.main_power_vol = val;
}



unsigned int get_bat_power_vol(void)
{
	return s_stQJBL.bat_power_vol;
}

void set_bat_power_vol(unsigned int val)
{
	s_stQJBL.bat_power_vol = val;
}


unsigned long GetRunTime(void)
{
	return s_stQJBL.runtime;
}

static unsigned char s_sys_led = 0;
//每秒运行一次
void RunTimeAdd(void)
{
	unsigned char *ptr = 0;
	s_stQJBL.runtime++;
	if (is_update_mode() == 0)
	{
		if (get_net_link_status(0) || get_net_link_status(1) || get_net_link_status(2) || get_net_link_status(3) || get_net_link_status(4))
		{
			s_sys_led = !s_sys_led;
			set_sys_led(s_sys_led);
			set_net_led(s_sys_led);
		}
		else
		{
			set_sys_led(1);
			set_net_led(1);
		}
	}
	ptr = get_rtc_time();//MPU每十秒更新一次RTC时间，10S中间的数据由MCU的计时器中断填充
	if(ptr != 0)
	{
		ptr[5]++;
	}
}



unsigned char is_mdm_dbg_mode(void)
{
	return s_stQJBL.mdm_dbg_flag;
}

void set_mdm_dbg_mode(unsigned char val)
{
	s_stQJBL.mdm_dbg_flag = val;
}




void SetStartTest(INT8U val)
{
	s_stQJBL.ucStartTest = val;
}

INT8U GetStartTest(void)
{
	return s_stQJBL.ucStartTest;
}

void SetModemExistFlag(INT8U ucFlag)
{
	if (ucFlag != s_stQJBL.ucIsExistModem)
	{
		s_stQJBL.ucIsExistModem = ucFlag;
	}
}

INT8U GetModemExistFlag(void)
{
	return s_stQJBL.ucIsExistModem;
}

void SetGPSExistFlag(INT8U ucFlag)
{
	if (ucFlag != s_stQJBL.ucIsExistGPS)
	{
		s_stQJBL.ucIsExistGPS = ucFlag;
	}
}

INT8U GetGPSExistFlag(void)
{
	return s_stQJBL.ucIsExistGPS;
}


INT8U GetEmptyStoreBlockFlag(void)
{
	return s_stQJBL.ucEmptyStoreBlockFlag;
}

void SetEmptyStoreBlockFlag(INT8U ucFlag)
{
	s_stQJBL.ucEmptyStoreBlockFlag = ucFlag;
}

INT16U GetEmpyStoreBlockNo(void)
{
	return s_stQJBL.usStoreBlockNo;
}

void SetEmpyStoreBlockNo(INT16U ucFlag)
{
	s_stQJBL.usStoreBlockNo = ucFlag;
}


INT8U GetSystemRestart(void)
{
	return s_stQJBL.ucSystemRestartFlag;
}

void SetSystemRestart(INT8U ucFlag)
{
	s_stQJBL.ucSystemRestartFlag = ucFlag;
}



INT8U GetReportStatus(void)
{
	return s_stQJBL.ucReportStatusSw;
}

void SetReportStatus(INT8U ucStatus)
{
	s_stQJBL.ucReportStatusSw = ucStatus;
}

void UserParamDefault(void)
{
	unsigned int i = 0;

	//memset(&s_stUserParam,0,sizeof(s_stUserParam));

	s_stUserParam.usInitFlag = INIT_STORE_FLASH_FLAG;

	SetReportInv6(REPORT_INV_DEFAULT6);
	SetReportInv5(REPORT_INV_DEFAULT5);

	//CAN1 CAN2波特率默认值
	SetCan0Bps(250);
	SetCan1Bps(250);
	SetCan2Bps(250);

	//各个串口模块波特率默认值
	SetDbgBps(DBG_BPS_DEFAULT);
	SetModemBps(MODEM_BPS_DEFAULT);
	SetGpsBps(GPS_BPS_DEFAULT);

	//FTP自动升级开关 及 升级相关配置文件
	SetAutoUpdateSw(0);			//自动升级开关默认关闭
	SetFtpAutoUpdateCfgFile(FTP_AUTO_UPDATE_CFG_FILE_DEFAULT);	//自动升级配置文件

	//FTP服务器地址 端口 用户名 密码 升级文件名 默认值
	SetFtpServerAddr(FTP_ADDR_DEFAULT);
	SetFtpServerPort(FTP_PORT_DEFAULT);
	SetFtpUsername(FTP_USER_NAME_DEFAULT);
	SetFtpPassword(FTP_PASSWORD_DEFAULT);
	SetFtpDownloadFileName(FTP_DOWNLOAD_FILE_NAME_DEFAULT);

	//电子邮件用户 密码
	SetEmailSendUser(EMAIL_SEND_USER_DEFAULT);
	SetEmailSendPsw(EMAIL_SEND_PSW_DEFAULT);


	//默认TCP连接
	for (i = 0; i < MAX_SVR_LINK_CNT; i++)
	{
		SetSocketType(i,1);

		//APN 用户名 密码 默认值
		SPSetApn(i,APN_DEFAULT);
		SPSetApnUsername(i,APN_USERNAME_DEFAULT);
		SPSetApnPassword(i,APN_PASSWORD_DEFAULT);
	}

	//默认平台
	SetFirstPlatCN6(1);
	SPSetServerAddr(0,CN6_SERVER_ADDR_DEFAULT);
	SPSetServerAddr(1,CN5_SERVER_ADDR_DEFAULT);
	SPSetServerAddr(2,EMAIL_SERVER_ADDR_DEFAULT);
	SPSetServerPort(0,CN6_SERVER_PORT_DEFAULT);
	SPSetServerPort(1,CN5_SERVER_PORT_DEFAULT);
	SPSetServerPort(2,EMAIL_SERVER_PORT_DEFAULT);

	s_stUserParam.ulWifiUsartBps = WIFI_BPS_DEFAULT;
	s_stUserParam.ulBtUsartBps = BT_BPS_DEFAULT;
	s_stUserParam.ulSensorUsartBps = SENSOR_BPS_DEFAULT;
	s_stUserParam.ulPeriUsartBps = PERI_BPS_DEFAULT;


	s_stUserParam.ftp_file_type = 0;	//0 binary 1 assic
	s_stUserParam.ftp_trans_mode = 0;	//0 Active 1 passive
	//主电源低压报警阈值
	SetMainPowerThreshold(MAIN_POWER_THRESHOLD_DEFAULT);

	//StoreOneData(BLOCK_SYS_PARAM_ID,&s_stUserParam,sizeof(s_stUserParam));
	SaveSysParam();
	
}

char IsBPSOK(INT32U bps)
{
	if ((bps == 9600)|| (bps == 115200) || (bps == 4800) || (bps == 14400) || (bps == 19200) 
	|| (bps == 28800) || (bps == 38400) || (bps == 57600))
	{
		return 1;
	}
	return 0;
}

UpdateInfo *get_update_info_ptr(void)
{
	return &stUpdateInfo;
}

void set_update_way(INT8U val)
{
	stUpdateInfo.ucUpdateWay = val;
}

INT8U get_update_way(void)
{
	return stUpdateInfo.ucUpdateWay;
}


UpdateStatus get_update_status(void)
{
	return stUpdateInfo.eUpdateStatus;					//升级状态
}


void set_update_status(UpdateStatus eStatus)
{
	stUpdateInfo.eUpdateStatus = eStatus;					//升级状态
}

INT32U get_update_start_time(void)
{
	return stUpdateInfo.ulStartTime;
}

void set_update_start_time(INT32U val)
{
	stUpdateInfo.ulStartTime = val;
}

void set_update_start_date(Date *pstdate)
{
	if (pstdate) memcpy(&(stUpdateInfo.stStartTime),pstdate,sizeof(Date));
}

void set_update_end_date(Date *pstdate)
{
	if (pstdate) memcpy(&(stUpdateInfo.stEndTime),pstdate,sizeof(Date));
}

void get_update_start_date(Date *pstdate)
{
	if (pstdate) memcpy(pstdate,&(stUpdateInfo.stStartTime),sizeof(Date));
}

void get_update_end_date(Date *pstdate)
{
	if (pstdate) memcpy(pstdate,&(stUpdateInfo.stEndTime),sizeof(Date));
}


void set_update_end_time(INT32U val)
{
	stUpdateInfo.ulEndTime = val;
}

void set_update_take_times(INT32U val)
{
	stUpdateInfo.ulTakeTimes = val;
}

INT32U get_update_take_times(void)
{
	return stUpdateInfo.ulTakeTimes;
}




void set_update_start_addr(unsigned int val)
{
	stUpdateInfo.ulStartAddr = val; 	//在FLASH中存放的起始地址
}

void set_update_total_bytes(unsigned int val)
{
	stUpdateInfo.ulTotalBytes = val;			//总大小

}

void save_update_info(void)
{
	stm32_flash_erase_sector(UPDATE_INFO_START_ADDR / FLASH_PAGE_SIZE);
	stm32_flash_write(UPDATE_INFO_START_ADDR,&stUpdateInfo,sizeof(stUpdateInfo));	
}

char *get_update_reportphone(void)
{
	return stUpdateInfo.szReportPhone;
}

void set_update_reportphone(void *szPhone)
{
	memset(stUpdateInfo.szReportPhone,0,sizeof(stUpdateInfo.szReportPhone));
	if (szPhone)
	{
		strncpy(stUpdateInfo.szReportPhone, szPhone,sizeof(stUpdateInfo.szReportPhone) - 1);
	}
	save_update_info();
}

void set_update_server(void *szAddr,INT16U usPort)
{
	if (szAddr)
	{
		memset(stUpdateInfo.szServerAddr,0,sizeof(stUpdateInfo.szServerAddr));
		strncpy(stUpdateInfo.szServerAddr,(char *)szAddr,sizeof(stUpdateInfo.szServerAddr) - 1);
	}

	stUpdateInfo.usServerPort = usPort;
}

void set_update_download_file_name(void *ptr)
{
	if (ptr)
	{
		memset(stUpdateInfo.szUpdateFileName,0,sizeof(stUpdateInfo.szUpdateFileName));
		strncpy(stUpdateInfo.szUpdateFileName,ptr,sizeof(stUpdateInfo.szUpdateFileName) - 1);

	}
}

char *get_update_download_file_name(void)
{
	return stUpdateInfo.szUpdateFileName;
}

char *get_update_server_addr(void)
{
	return stUpdateInfo.szServerAddr;
}

INT16U get_update_server_port(void)
{
	return stUpdateInfo.usServerPort;
}


void disp_update_info(void)
{
	DBG_Print(LEVEL0,"---------------update Info---------------\r\n"
					 "FTP Server:%s:%d "
					 "DownloadFile:%s\r\n"
					 "Store Address In Flash:0x%08X ~ 0x%08X\r\n"
					 "status:%02X TotalSize:%u TotalPackCnt:%u\r\n"
					 "Time:%02d/%02d/%02d %02d:%02d:%02d ~ %02d/%02d/%02d %02d:%02d:%02d\r\n"
					 "Take Times:%us, phone:%s way:%02X\r\n"
					 "-----------------------------------------------\r\n",
					stUpdateInfo.szServerAddr,stUpdateInfo.usServerPort,
					stUpdateInfo.szUpdateFileName,
					stUpdateInfo.ulStartAddr,stUpdateInfo.ulEndAddr,
					stUpdateInfo.eUpdateStatus,
					stUpdateInfo.ulTotalBytes,stUpdateInfo.usTotalPackCnt,
					stUpdateInfo.stStartTime.year,stUpdateInfo.stStartTime.month,
					stUpdateInfo.stStartTime.day,stUpdateInfo.stStartTime.hour,
					stUpdateInfo.stStartTime.min,stUpdateInfo.stStartTime.sec,

					stUpdateInfo.stEndTime.year,stUpdateInfo.stEndTime.month,
					stUpdateInfo.stEndTime.day,stUpdateInfo.stEndTime.hour,
					stUpdateInfo.stEndTime.min,stUpdateInfo.stEndTime.sec,
					stUpdateInfo.ulTakeTimes, stUpdateInfo.szReportPhone,
					stUpdateInfo.ucUpdateWay
					 );

}



void update_info_default(void)
{
	stUpdateInfo.eUpdateStatus = UPDATE_STATUS_NO;					//升级状态
	stUpdateInfo.ucUpdateWay = 0;						//升级方式(xmodem FTP TCP等方式)
	stUpdateInfo.ulStartAddr = 0; 	//在FLASH中存放的起始地址
	stUpdateInfo.ulEndAddr = 0;		//结束地址
	stUpdateInfo.ulTotalBytes = 0;							//总大小
	stUpdateInfo.usTotalPackCnt = 0;						//总包数
	stUpdateInfo.stStartTime.year = 18;				//起始时间
	stUpdateInfo.stStartTime.month = 8;				//起始时间
	stUpdateInfo.stStartTime.day = 8;				//起始时间
	stUpdateInfo.stStartTime.hour = 8;				//起始时间
	stUpdateInfo.stStartTime.min = 8;				//起始时间
	stUpdateInfo.stStartTime.sec = 8;				//起始时间

	stUpdateInfo.ulStartTime = 0; 			//起始时间
	stUpdateInfo.stEndTime.year = 18; 				//结束时间
	stUpdateInfo.stEndTime.month = 8; 				//结束时间
	stUpdateInfo.stEndTime.day = 8; 				//结束时间
	stUpdateInfo.stEndTime.hour = 8; 				//结束时间
	stUpdateInfo.stEndTime.min = 8; 				//结束时间
	stUpdateInfo.stEndTime.sec = 8; 				//结束时间

	stUpdateInfo.ulEndTime = 0;				//结束时间
	stUpdateInfo.ulTakeTimes = 0; 			//FTP耗时多少

}


void check_update_status(void)
{
	memcpy(&stUpdateInfo,(unsigned char *)UPDATE_INFO_START_ADDR,sizeof(stUpdateInfo));

	if ((stUpdateInfo.eUpdateStatus != UPDATE_STATUS_NO)
		&& (stUpdateInfo.eUpdateStatus != UPDATE_STATUS_START)
		&& (stUpdateInfo.eUpdateStatus != UPDATE_STATUS_FILE_OK)
		&& (stUpdateInfo.eUpdateStatus != UPDATE_STATUS_UPDATE_OK)
		&& (stUpdateInfo.eUpdateStatus != UPDATE_STATUS_UPDATE_FAIL)
		)
	{
		/* 出来的参数有误 */
		//update_info_default();
	}
	else if (stUpdateInfo.eUpdateStatus == UPDATE_STATUS_UPDATE_OK)
	{
		/* 升级完成 */
		//stUpdateInfo.eUpdateStatus = UPDATE_STATUS_NO;
		DBG_Print(LEVEL0,"update successfully\r\n");
	}
	else if (stUpdateInfo.eUpdateStatus == UPDATE_STATUS_START)	//续传
	{
		/* 还没有升级完成，进行断点续传 */
		DBG_Print(LEVEL0,"FTP断点续传.\r\n");
	}
	else if (stUpdateInfo.eUpdateStatus == UPDATE_STATUS_UPDATE_FAIL)
	{
		DBG_Print(LEVEL0,"update false\r\n");
	}

	disp_update_info();
}



void LoadUserParam(void)
{
}

INT8U GetDefaultFlag(void)
{
	return s_stQJBL.ucDefaultFlag;
}

void SetDefaultFlag(INT8U val)
{
	s_stQJBL.ucDefaultFlag = val;
}

INT16U GetSysParamSize(void)
{
	return sizeof(SysParam);
}

//国六平台上传间隔
void SetReportInv6(INT32U ulValue)
{
	s_stUserParam.ulReportInv6 = ulValue;
}

INT32U GetReportInv6(void)
{
	return s_stUserParam.ulReportInv6;
}

//国五平台上传时间间隔
void SetReportInv5(INT32U ulValue)
{
	s_stUserParam.ulReportInv5 = ulValue;
}

INT32U GetReportInv5(void)
{
	return s_stUserParam.ulReportInv5;
}


INT8U IsFirstPlatCN6(void)
{
	return s_stUserParam.ucIsFirstPlatCN6;
}

void SetFirstPlatCN6(INT8U ucFlag)
{
	s_stUserParam.ucIsFirstPlatCN6 = ucFlag;
}



void SetSN(void *szSN)
{
	if (szSN)
	{
		memset(s_stUserParam.szSN,0,sizeof(s_stUserParam.szSN));
		strncpy(s_stUserParam.szSN,szSN,MAX_SN_LEN);
	}
}

INT8S *GetSN(void)
{
	return s_stUserParam.szSN;
}


void SetVIN(void *szVIN)
{
	if (szVIN)
	{
		memset(s_stUserParam.szVIN,0,sizeof(s_stUserParam.szVIN));
		strncpy(s_stUserParam.szVIN,szVIN,MAX_VIN_LEN);
	}
}

INT8S *GetVIN(void)
{
	return s_stUserParam.szVIN;
}

INT8U *GetEncryptionMethodPtr(void)
{
	return &(s_stUserParam.ucEncryptionMethod);
}

INT8U *CN6_GetVerPtr(void)
{
	return &(s_stUserParam.ucCN6_Ver);
}

void CN6_SetVer(INT8U ucVer)
{
	s_stUserParam.ucCN6_Ver = ucVer;
}

INT8U *CN6_GetWayPtr(void)
{
	return &(s_stUserParam.ucCN6_Way);
}

void CN6_SetWay(INT8U ucWay)
{
	s_stUserParam.ucCN6_Way = ucWay;
}

INT8U GetEncryptionMethod(void)
{
	return s_stUserParam.ucEncryptionMethod;
}

INT8U *GetBCDPhoneNo(void)
{
	return s_stUserParam.BCDPhoneNo;
}

void SetBCDPhoneNo(INT8U bcd[6])
{
	if (bcd)
	{
		memcpy(s_stUserParam.BCDPhoneNo,bcd,6);
	}
}



INT8U GetAutoUpdateSw(void)
{
	return s_stUserParam.ucAutoUpdateSw;
}


INT32U GetModemBps(void)
{
	return s_stUserParam.ulModemUsartBps;
}

INT32U GetGpsBps(void)
{
	return s_stUserParam.ulGpsUsartBps;
}

INT32U GetPeriBps(void)
{
	return s_stUserParam.ulPeriUsartBps;
}

INT32U GetDbgBps(void)
{
	return s_stUserParam.ulDbgUsartBps;
}

INT8U GetDbgParity(void)
{
	return s_stUserParam.ucDbgUsartParity;
}

INT8U GetModemParity(void)
{
	return s_stUserParam.ucModemUsartParity;
}

INT8U GetGpsParity(void)
{
	return s_stUserParam.ucGpsUsartParity;
}

INT8U GetPeriParity(void)
{
	return s_stUserParam.ucPeriUsartParity;
}


void SetAutoUpdateSw(INT8U sw)
{
	s_stUserParam.ucAutoUpdateSw = sw;
}


INT32U SetDbgBps(INT32U bps)
{
	if ((bps == 9600)|| (bps == 115200) || (bps == 4800) || (bps == 14400) || (bps == 19200) 
	|| (bps == 28800) || (bps == 38400) || (bps == 57600))
	{
		s_stUserParam.ulDbgUsartBps = bps;
	}
	else
	{
		DBG_Print(LEVEL0,"<SetDbgBps>BPS Err:%u\r\n",bps);
	}
	return s_stUserParam.ulDbgUsartBps;
}

INT32U SetModemBps(INT32U bps)
{
	if ((bps == 9600)|| (bps == 115200) || (bps == 4800) || (bps == 14400) || (bps == 19200) 
	|| (bps == 28800) || (bps == 38400) || (bps == 57600))
	{
		s_stUserParam.ulModemUsartBps = bps;
	}
	else
	{
		DBG_Print(LEVEL0,"<SetModemBps>Bps Err:%u\r\n",bps);
	}
	return s_stUserParam.ulModemUsartBps;
}

INT32U SetGpsBps(INT32U bps)
{
	if ((bps == 9600)|| (bps == 115200) || (bps == 4800) || (bps == 14400) || (bps == 19200) 
	|| (bps == 28800) || (bps == 38400) || (bps == 57600))
	{
		s_stUserParam.ulGpsUsartBps = bps;
	}
	else
	{
		DBG_Print(LEVEL0,"<SetGpsBps>BPS Err:%u\r\n",bps);
	}
	return s_stUserParam.ulGpsUsartBps;
}

INT32U SetPeriBps(INT32U bps)
{
	if ((bps == 9600)|| (bps == 115200) || (bps == 4800) || (bps == 14400) || (bps == 19200) 
	|| (bps == 28800) || (bps == 38400) || (bps == 57600))
	{
		s_stUserParam.ulPeriUsartBps = bps;
	}
	else
	{
		DBG_Print(LEVEL0,"<SetPeriBps>bps param err (%u)\r\n",bps);
	}
	return s_stUserParam.ulPeriUsartBps;
}

INT8U SetDbgParity(INT8U ucParity)
{
	s_stUserParam.ucDbgUsartParity = ucParity;
	return s_stUserParam.ucDbgUsartParity;
}

INT8U SetModemParity(INT8U ucParity)
{
	s_stUserParam.ucModemUsartParity = ucParity;
	return s_stUserParam.ucModemUsartParity;
}

INT8U SetGpsParity(INT8U ucParity)
{
	s_stUserParam.ucGpsUsartParity = ucParity;
	return s_stUserParam.ucGpsUsartParity;
}

INT8U SetPeriParity(INT8U ucParity)
{
	s_stUserParam.ucPeriUsartParity = ucParity;
	return s_stUserParam.ucPeriUsartParity;
}

unsigned int GetCan0Bps(void)
{
	return s_stUserParam.aeCanBaudRate[0];
}

void SetCan0Bps(unsigned int canbps)
{
		s_stUserParam.aeCanBaudRate[0] = canbps;
}


unsigned int GetCan1Bps(void)
{
	return s_stUserParam.aeCanBaudRate[1];
}

void SetCan1Bps(unsigned int canbps)
{
		s_stUserParam.aeCanBaudRate[1] = canbps;
}

unsigned int GetCan2Bps(void)
{
	return s_stUserParam.aeCanBaudRate[2];
}

void SetCan2Bps(unsigned int canbps)
{
	s_stUserParam.aeCanBaudRate[2] = canbps;
}

char *GetFtpServerAddr(void)
{
	return s_stUserParam.szFtpServerAddr;
}


void SetFtpServerAddr(char *szServerAddr)
{
	if (szServerAddr)
	{
		memset(s_stUserParam.szFtpServerAddr,0,sizeof(s_stUserParam.szFtpServerAddr));
		snprintf(s_stUserParam.szFtpServerAddr, sizeof(s_stUserParam.szFtpServerAddr), "%s", szServerAddr);
	}
}


char *GetFtpDownloadFileName(void)
{
	return s_stUserParam.szFtpDownloadFileName;
}

INT8S *GetFtpAutoUpdateCfgFile(void)
{
	return s_stUserParam.szFtpAutoUpdateCfgFile;
}


void SetFtpDownloadFileName(char *szFtpDownloadFileName)
{
	if (szFtpDownloadFileName)
	{
		memset(s_stUserParam.szFtpDownloadFileName,0,sizeof(s_stUserParam.szFtpDownloadFileName));
		snprintf(s_stUserParam.szFtpDownloadFileName, sizeof(s_stUserParam.szFtpDownloadFileName), "%s", szFtpDownloadFileName);
	}
}

void SetFtpTransMode(INT8U val)
{
	s_stUserParam.ftp_trans_mode = val;
}

void SetFtpFileType(INT8U val)
{
	s_stUserParam.ftp_file_type = val;
}

INT8U GetFtpFileType(void)
{
	return s_stUserParam.ftp_file_type;
}

INT8U GetFtpTransMode(void)
{
	return s_stUserParam.ftp_trans_mode;
}




void SetFtpAutoUpdateCfgFile(char *szFileName)
{
	if (szFileName)
	{
		memset(s_stUserParam.szFtpAutoUpdateCfgFile,0,sizeof(s_stUserParam.szFtpAutoUpdateCfgFile));
		snprintf(s_stUserParam.szFtpAutoUpdateCfgFile, sizeof(s_stUserParam.szFtpAutoUpdateCfgFile), "%s", szFileName);
	}
}



void SPSetApn(unsigned char idx,char *szApn)
{
	if (szApn)
	{
		memset(s_stUserParam.szApn,0,sizeof(s_stUserParam.szApn));
		strncpy(s_stUserParam.szApn,szApn,sizeof(s_stUserParam.szApn) - 1);
	}
}

void SPSetApnUsername(unsigned char idx,char *str)
{
	if (str)
	{
		memset(s_stUserParam.szApnUsername,0,sizeof(s_stUserParam.szApnUsername));
		strncpy(s_stUserParam.szApnUsername,str,sizeof(s_stUserParam.szApnUsername) - 1);
	}
}

void SPSetApnPassword(unsigned char idx,char *str)
{
	if (str)
	{
		memset(s_stUserParam.szApnPassword,0,sizeof(s_stUserParam.szApnPassword));
		strncpy(s_stUserParam.szApnPassword,str,sizeof(s_stUserParam.szApnPassword) - 1);
	}
}

char *SPGetApn(unsigned char idx)
{
	return s_stUserParam.szApn;
}

char *SPGetApnUsername(unsigned char idx)
{
	return s_stUserParam.szApnUsername;
}

char *SPGetApnPassword(unsigned char idx)
{
	return s_stUserParam.szApnPassword;
}


char *GetFtpUsername(void)
{
	return s_stUserParam.szFtpUsername;
}

void SetFtpUsername(char *username)
{
	if (username)
	{
		memset(s_stUserParam.szFtpUsername,0,sizeof(s_stUserParam.szFtpUsername));
		snprintf(s_stUserParam.szFtpUsername, sizeof(s_stUserParam.szFtpUsername), "%s", username);
	}
}

char *GetFtpPassword(void)
{
	return s_stUserParam.szFtpPassword;
}

void SetFtpPassword(char *psd)
{
	if (psd)
	{
		memset(s_stUserParam.szFtpPassword,0,sizeof(s_stUserParam.szFtpPassword));
		snprintf(s_stUserParam.szFtpPassword, sizeof(s_stUserParam.szFtpPassword), "%s", psd);
	}
}

INT16U GetFtpServerPort(void)
{
	return s_stUserParam.usFtpServerPort;
}

void SetFtpServerPort(INT16U usPort)
{
	if (s_stUserParam.usFtpServerPort == usPort)
	{
		return ;
	}
	s_stUserParam.usFtpServerPort = usPort;
}


void SPSetServerAddr(INT8U idx,void *szAddr)
{
	if (idx >= MAX_SVR_LINK_CNT)
	{
		return ;
	}
	if (szAddr == 0)
	{
		return ;
	}
	if (strcmp(s_stUserParam.szServerAddr[idx],(char *)szAddr) == 0)
	{
		return ;
	}
	memset(s_stUserParam.szServerAddr[idx],0,sizeof(s_stUserParam.szServerAddr[idx]));
	snprintf(s_stUserParam.szServerAddr[idx], sizeof(s_stUserParam.szServerAddr[idx]), "%s", (char *)szAddr);
	SetServerChangeFlag(idx,1);
}

char *SPGetServerAddr(INT8U idx)
{
	if (idx >= MAX_SVR_LINK_CNT)
	{
		return "null";
	}
	return s_stUserParam.szServerAddr[idx];
}

void SPSetServerPort(INT8U idx,INT16U usPort)
{
	if (idx >= MAX_SVR_LINK_CNT)
	{
		return ;
	}
	if (s_stUserParam.ausPort[idx] == usPort)
	{
		return ;
	}
	s_stUserParam.ausPort[idx] = usPort;
	SetServerChangeFlag(idx,1);
}

INT8U GetServerChangeFlag(INT8U idx)
{
	return s_stQJBL.aucServerChangeFlag[idx];
}



void SetServerChangeFlag(INT8U idx,INT8U ucFlag)
{
	if (idx >= MAX_SVR_LINK_CNT)
	{
		return ;
	}
	s_stQJBL.aucServerChangeFlag[idx] = ucFlag;
}

INT16U SPGetServerPort(INT8U idx)
{
	if (idx >= MAX_SVR_LINK_CNT)
	{
		return 0;
	}
	return s_stUserParam.ausPort[idx];
}

void SaveSysParam(void)
{
}

INT8U GetSocketType(unsigned char idx)
{
	if (idx >= MAX_SVR_LINK_CNT) return 1;

	return s_stUserParam.ucSocketType[idx];
}


INT8U ServerLinkIsTcp(unsigned char idx)
{
	if (idx >= MAX_SVR_LINK_CNT) return 1;

	return s_stUserParam.ucSocketType[idx];
}


void SetSocketType(unsigned char idx,char is_tcp)
{
	if (idx >= MAX_SVR_LINK_CNT) return ;

	s_stUserParam.ucSocketType[idx] = is_tcp;
}



INT8S *GetAuthenticationCode(void)
{
	return s_stUserParam.aucAuthenticationCode;
}

void SetAuthenticationCode(void *ptr)
{
	if (ptr)
	{
		memset(s_stUserParam.aucAuthenticationCode,0,sizeof(s_stUserParam.aucAuthenticationCode));
		strncpy((char *)(s_stUserParam.aucAuthenticationCode),ptr,sizeof(s_stUserParam.aucAuthenticationCode) - 1);
	}
}

INT16U GetMainPowerThreshold(void)
{
	return s_stUserParam.usMainPowerThreshold;
}

void SetMainPowerThreshold(INT16U val)
{
	s_stUserParam.usMainPowerThreshold = val;
}

INT8S *GetLicensePlate(void)
{
	return s_stUserParam.szLicensePlate;
}

void SetLicensePlate(void *ptr)
{
	if (ptr)
	{
		memset(s_stUserParam.szLicensePlate,0,sizeof(s_stUserParam.szLicensePlate));
		strncpy(s_stUserParam.szLicensePlate,ptr,sizeof(s_stUserParam.szLicensePlate) - 1);
	}
}

INT8U *GetTerminalModel(void)
{
	return s_stUserParam.aucTerminalModel;
}

void SetTerminalModel(void *ptr)
{
	if (ptr)
	{
		//memset(s_stUserParam.aucTerminalModel,0,sizeof(s_stUserParam.aucTerminalModel));
		memcpy(s_stUserParam.aucTerminalModel,ptr,8);
	}
}


INT8U *GetTerminalID(void)
{
	return s_stUserParam.aucTerminalID;
}

void SetTerminalID(void *ptr)
{
	if (ptr)
	{
		memcpy(s_stUserParam.aucTerminalID,ptr,7);
	}
}

void SetPlateColor(INT8U val)
{
	s_stUserParam.ucLicensePlateColor = val;
}

INT8U GetPlateColor(void)
{
	return s_stUserParam.ucLicensePlateColor;
}



INT8U *GetManufacturerID(void)
{
	return s_stUserParam.aucManufacturerID;
}

void SetManufacturerID(void *ptr)
{
	if (ptr)
	{
		//memset(s_stUserParam.aucManufacturerID,0,sizeof(s_stUserParam.aucManufacturerID));
		memcpy(s_stUserParam.aucManufacturerID,ptr,5);
	}
}


INT16U GetProviceID(void)
{
	return s_stUserParam.usProviceID;
}

void SetProviceID(INT16U usID)
{
	s_stUserParam.usProviceID = usID;
}


INT16U GetCityID(void)
{
	return s_stUserParam.usCityID;
}

void SetCityID(INT16U usID)
{
	s_stUserParam.usCityID = usID;
}


void SetEmailSendUser(void *ptr)
{
	char *pTemp = 0;
	char aucTemp[32] = {0};

	if (ptr)
	{
		//内容相同 不进行设置
		if (strcmp(s_stUserParam.szEmailSendUser,(char *)ptr) == 0)
		{
			return ;
		}
		memset(s_stUserParam.szEmailSendUser,0,sizeof(s_stUserParam.szEmailSendUser));
		strncpy(s_stUserParam.szEmailSendUser,(char *)ptr,sizeof(s_stUserParam.szEmailSendUser) - 1);

		//设置发件人 要进行发件服务器的同步修改
		if ((pTemp = strstr((char *)ptr,"@")) != 0)
		{
			memset(aucTemp,0,sizeof(aucTemp));
			snprintf(aucTemp,sizeof(aucTemp) - 1,"smtp.%s",pTemp + 1);
			//设置邮件服务器地址
			SPSetServerAddr(2,aucTemp);
		}
	}
}

INT8S *GetEmailSendUser(void)
{
	return s_stUserParam.szEmailSendUser;
}


void SetEmailSendPsw(void *ptr)
{
	if (ptr)
	{
		if (strcmp(s_stUserParam.szEmailSendPsw,(char *)ptr) == 0)
		{
			return ;
		}
		memset(s_stUserParam.szEmailSendPsw,0,sizeof(s_stUserParam.szEmailSendPsw));
		strncpy(s_stUserParam.szEmailSendPsw,(char *)ptr,sizeof(s_stUserParam.szEmailSendPsw) - 1);
	}
}

INT8S *GetEmailSendPsw(void)
{
	return s_stUserParam.szEmailSendPsw;
}

void SetLimitSpeed(INT8U val)
{
	if (val != s_stUserParam.ucLimitSpeed)
	{
		s_stUserParam.ucLimitSpeed = val;
	}
}

INT8U GetLimitSpeed(void)
{
	return s_stUserParam.ucLimitSpeed;
}

void SetCanChannel(INT8U val)
{
	//最多不超过3路CAN
	if (val >= 3) return ;
	
	if (val != s_stUserParam.ucCanChannel)
	{
		s_stUserParam.ucCanChannel = val;
	}
}

INT8U GetCanChannel(void)
{
	return s_stUserParam.ucCanChannel;
}


EngineType get_engine_type(void)
{
	return s_stUserParam.stEngineType;
}


void set_engine_type(EngineType st)
{
	if (s_stUserParam.stEngineType != st)
	{
		if (st < EngineType_MAX)
		{
			s_stUserParam.stEngineType = st;
		}
		else
		{
			s_stUserParam.stEngineType = EngineType_Compatible;
		}
	}
}


char *engine_type_str[] = 
{
"兼容",
"玉柴",
"华菱",
"江淮",
"斯堪尼亚",
"德国曼",
"奔驰重卡",
"沃尔沃",
"戴姆勒",
"徐州重工",
"unknow2",
"unknow3",
};
char *get_engine_type_str(EngineType st)
{
	if (st < EngineType_MAX)
	{
		return engine_type_str[st];
	}
	return "unkow";
}


unsigned int disp_ftp_param(void *pOut,unsigned int outbuflen)
{
	unsigned int rlen = 0;

	if (pOut && (outbuflen > 2))
	{
		rlen = snprintf((char *)pOut,outbuflen - 1,
						"FTP:\r\n"
						 "%s:%d\r\n"
					 	"User:%s PSW:%s\r\n"
					 	"Down File:%s\r\n"
					 	"FileType:%d TransMode:%d\r\n",
						 GetFtpServerAddr(),GetFtpServerPort(),
						 GetFtpUsername(),GetFtpPassword(),
						 GetFtpDownloadFileName(),
						 GetFtpFileType(),GetFtpTransMode()
						 );
	}

	DBG_Print(LEVEL0,"FTP Info:\r\n"
					 "Server:%s:%d\r\n"
				 	"User:%s PSW:%s\r\n"
				 	"Download File:%s\r\n"
				 	"FileType:%d TransMode:%d\r\n",
					 GetFtpServerAddr(),GetFtpServerPort(),
					 GetFtpUsername(),GetFtpPassword(),
					 GetFtpDownloadFileName(),
					 GetFtpFileType(),GetFtpTransMode()
					 );

	return rlen;
}

unsigned int disp_sysparam(void *pOut,unsigned int outbuflen)
{
	unsigned char i = 0;

	DBG_Print(LEVEL0,"Apn:%s User:%s Psw:%s\r\n",
	SPGetApn(0),SPGetApnUsername(0),SPGetApnPassword(0));

/********FTP相关**************/
	disp_ftp_param(pOut,outbuflen);

	for (i = 0; i < 6; i++)
	{
		DBG_Print(LEVEL0,"[DRV]%s:%d %d\r\n",
		SPGetServerAddr(i),
		SPGetServerPort(i),
		ServerLinkIsTcp(i));
	}
	return 0;
}




