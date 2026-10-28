#ifndef __SYSPARAM_H__
#define __SYSPARAM_H__

#ifdef __cplusplus
extern "C" {
#endif


#define INIT_STORE_FLASH_FLAG     0xAACC


#define DBG_BPS_DEFAULT  	115200
#define MODEM_BPS_DEFAULT  	115200
#define GPS_BPS_DEFAULT  	9600
#define WIFI_BPS_DEFAULT  	115200
#define BT_BPS_DEFAULT  	115200
#define SENSOR_BPS_DEFAULT  115200
#define PERI_BPS_DEFAULT  	115200

#define REPORT_INV_DEFAULT6  1
#define REPORT_INV_DEFAULT5  15


#define APN_DEFAULT         				"CMNET"
#define APN_USERNAME_DEFAULT				"ROOT"
#define APN_PASSWORD_DEFAULT				"ROOT"



#define FTP_ADDR_DEFAULT 					"59.110.50.55"
#define FTP_PORT_DEFAULT 					21
#define FTP_USER_NAME_DEFAULT 				"gjbbgl"
#define FTP_PASSWORD_DEFAULT 				"fengyun@2019"
#define FTP_DOWNLOAD_FILE_NAME_DEFAULT 		"BC_Upgrade.bin"


#define FTP_AUTO_UPDATE_CFG_FILE_DEFAULT    "CFG.LF"

#define	CN6_SERVER_ADDR_DEFAULT				"vet.beescloud.cn"
#define	CN6_SERVER_PORT_DEFAULT				7730

//#define	CN6_SERVER_ADDR_DEFAULT				"39.98.174.172"
//#define	CN6_SERVER_PORT_DEFAULT				7740



#define	CN5_SERVER_ADDR_DEFAULT				"server.natappfree.cc"
#define	CN5_SERVER_PORT_DEFAULT				0

//发送方的邮件服务器地址
#define	EMAIL_SERVER_ADDR_DEFAULT			"smtp.139.com"
#define	EMAIL_SERVER_PORT_DEFAULT			0

//发送方账号密码
#define EMAIL_SEND_USER_DEFAULT				"13902910201@139.com"
#define EMAIL_SEND_PSW_DEFAULT				"imxzq123"

//主电源低压报警阈值
#define MAIN_POWER_THRESHOLD_DEFAULT		9500


#define MAX_VIN_LEN  17
#define MAX_SN_LEN   32

typedef enum tagEngineType
{
	EngineType_Compatible = 0,	//兼容所有的发动机数据
	EngineType_YC,		//玉柴
	EngineType_HL,		//华菱
	EngineType_JH,		//江淮
	EngineType_SKNY,	//斯堪尼亚
	EngineType_DGM,		//德国曼
	EngineType_BCZK, 	//奔驰重卡
	EngineType_WOW,		//沃尔沃
	EngineType_DML, 	//戴姆勒

	EngineType_XZZG, 	//徐州重工

	EngineType_MAX,
}EngineType;

typedef struct tagDate
{
	INT8U year;
	INT8U month;
	INT8U day;
	INT8U hour;
	INT8U min;
	INT8U sec;
}Date;

typedef enum tagUpdateResult
{
	UPDATE_OK = 0,
	UPDATE_FALSE
}UpdateResult;

typedef enum tagUpdateStatus
{
	UPDATE_STATUS_NO = 0x12,			//未升级
	UPDATE_STATUS_START = 0x34,			//启动
	UPDATE_STATUS_FILE_OK = 0x56,		//升级文件校验通过
	UPDATE_STATUS_UPDATE_OK = 0x78,		//升级完成 BOOT检测到UPDATE_STATUS_FILE_OK 这个状态 
										//就会升级APP 然后将状态置为UPDATE_STATUS_UPDATE_OK
	UPDATE_STATUS_UPDATE_FAIL = 0x90,	//升级失败
}UpdateStatus;

#define UPDATE_WAY_USART	1
#define UPDATE_WAY_TCP		2
#define UPDATE_WAY_FTP		3

typedef struct tagUpdateInfo
{
	UpdateStatus eUpdateStatus;						//升级状态
	INT8U ucUpdateWay;						//升级方式(xmodem FTP TCP等方式)
	INT32U ulStartAddr;						//在FLASH中存放的起始地址
	INT32U ulEndAddr;						//结束地址
	INT32U ulTotalBytes;					//总大小
	INT16U usTotalPackCnt;						//总包数
	Date stStartTime;				//起始时间
	INT32U ulStartTime;				//起始时间
	Date stEndTime;					//结束时间
	INT32U ulEndTime;				//结束时间
	INT32U ulTakeTimes;				//FTP耗时多少
	INT8S szReportPhone[20];
	INT8S szServerAddr[32];
	INT16U usServerPort;
	INT8S szUpdateFileName[32];
}UpdateInfo;





//调试串口数据到达回调函数
typedef void (*dbg_usart_data_arrive_callback)(void *pdat,unsigned int rlen);

typedef void (*gps_usart_data_arrive_callback)(void *pdat,unsigned int rlen);

typedef void (*server_data_arrive_callback)(unsigned char channel,void *pdat,unsigned int rlen);
typedef void (*linux_cmd_ack_data_arrive_callback)(void *pdat,unsigned int rlen);
typedef void (*cache_data_arrive_callback)(unsigned char cache_data_type_id,void *pdat,unsigned int rlen);
typedef void (*main_power_off_callback)(void *parg);

typedef void (*easy_change_param_arrive_callback)(void *pdat,unsigned int rlen);

typedef void (*file_data_arrive_callback)(unsigned int file_type,unsigned int offset,void *pdat,unsigned int rlen);
typedef void (*user_msg_arrive_callback)(unsigned int msgid,void *pdat,unsigned int rlen);
typedef void (*sms_msg_arrive_callback)(unsigned char *ptime,void *phone_num,void *sms_content,unsigned int sms_content_len);

typedef void (*timer_one_ms_func)(void);

extern unsigned char *get_beian_msg_body_with_sign_ptr(void);

extern unsigned char *get_jiami_chip_id_ptr(void);
extern unsigned char *get_public_key_ptr(void);
extern unsigned short get_gps_ant_ad_val(unsigned char idx);
extern void add_gps_ant_ad_val_to_list(unsigned short val);

extern INT16U *get_main_power_ad_val_ptr(void);
extern unsigned short get_main_power_ad_val(unsigned char idx);
extern void add_main_power_ad_val_to_list(unsigned short val);


extern void set_net_link_status(unsigned char channel,unsigned char val);
extern unsigned char get_net_link_status(unsigned char channel);
extern unsigned char get_sim_signal_strength(void);
extern void set_sim_signal_strength(unsigned char val);

extern void set_gps_ant_status(unsigned char val);
extern void set_gprs_ant_status(unsigned char val);
extern void set_can_status(unsigned char channel,unsigned char val);
extern void set_acc_status(unsigned char val);
extern unsigned char get_can_status(unsigned char channel);
extern unsigned char get_acc_status(void);
extern unsigned char get_gsenser_chip_status(void);
extern void set_gsenser_chip_status(unsigned char val);
extern unsigned char get_at24c08_chip_status(void);
extern void set_at24c08_chip_status(unsigned char val);
extern unsigned char get_gps_module_status(void);
extern void set_gps_module_status(unsigned char val);
extern unsigned char get_collect_cache_data_flag(void);
extern void set_collect_cache_data_flag(unsigned char val);
extern INT8U get_power_supply_mode(void);
extern void set_power_supply_mode(INT8U val);


extern unsigned int get_mcu_status1(void);
extern void set_mcu_status1(unsigned int val);


extern unsigned char get_emmc_chip_status(void);
extern unsigned char get_jiami_chip_status(void);
extern unsigned char get_wifi_status(void);
extern unsigned int get_mpu_status1(void);
extern void set_mpu_status1(unsigned int val);

extern unsigned int get_mpu_uart_bps(void);
extern void set_mpu_uart_bps(unsigned int val);

extern unsigned char get_mpu_heart_flag(void);
extern void set_mpu_heart_flag(unsigned char val);
extern unsigned char get_report_mcu_status_flag(void);
extern void set_report_mcu_status_flag(unsigned char val);


extern unsigned int get_no_mpu_msg_time(void);
extern void set_no_mpu_msg_time(unsigned int val);

extern char *get_imei_ptr(void);
extern char *get_iccid_ptr(void);

extern unsigned char *get_rtc_time(void);
extern void set_rtc_time(unsigned char t[6]);


extern void set_open_ec20_flag(INT8U val);

extern INT8U get_open_ec20_flag(void);


extern void set_heart_beat_sw(INT8U val);
extern INT8U get_heart_beat_sw(void);

extern char *get_app_ver_ptr(void);

extern char *get_mpu_ver_ptr(void);
extern unsigned int get_mpu_ver(void *pOut,unsigned int outbuflen);
extern void set_mpu_ver(void *ptr,unsigned int len);



extern easy_change_param_arrive_callback get_easy_change_param_arrive_callback_ptr(void);
extern void reg_easy_change_param_arrive_callback(void (*dat_arrive_callback)(void *,unsigned int));

extern file_data_arrive_callback get_file_data_arrive_callback_ptr(void);
extern void reg_file_data_arrive_callback(file_data_arrive_callback cb);


extern user_msg_arrive_callback get_user_msg_arrive_callback_ptr(void);
extern void reg_user_msg_arrive_callback(user_msg_arrive_callback cb);

extern sms_msg_arrive_callback get_sms_msg_arrive_callback_ptr(void);
extern void reg_sms_msg_arrive_callback(sms_msg_arrive_callback cb);


extern main_power_off_callback get_main_power_off_callback_ptr(void);
extern void reg_main_power_off_callback(main_power_off_callback pf);

extern timer_one_ms_func get_timer_one_ms_func_ptr(void);

extern void reg_timer_one_ms_func_callback(timer_one_ms_func func);


extern dbg_usart_data_arrive_callback get_dbg_usart_data_arrive_callback_ptr(void);
extern void reg_dbg_usart_data_arrive_callback(void (*dat_arrive_callback)(void *,unsigned int));


extern gps_usart_data_arrive_callback get_gps_usart_data_arrive_callback_ptr(void);

extern void reg_gps_usart_data_arrive_callback(void (*dat_arrive_callback)(void *,unsigned int));


extern void reg_server_data_arrive_callback(void (*dat_arrive_callback)(unsigned char,void *,unsigned int));

extern server_data_arrive_callback get_server_data_arrive_callback_ptr(void);


extern linux_cmd_ack_data_arrive_callback get_linux_cmd_ack_data_arrive_callback_ptr(void);

extern void reg_linux_cmd_ack_data_arrive_callback(linux_cmd_ack_data_arrive_callback pf);



extern cache_data_arrive_callback get_cache_data_arrive_callback_ptr(void);
extern void reg_cache_data_arrive_callback(cache_data_arrive_callback pf);


extern void SetCanToUsbFlag(INT8U val);

extern INT8U GetCanToUsbFlag(void);


extern unsigned char is_mdm_dbg_mode(void);

extern void set_mdm_dbg_mode(unsigned char val);


extern unsigned long GetRunTime(void);

//每秒运行一次
extern void RunTimeAdd(void);



extern unsigned int get_main_power_vol(void);

extern void set_main_power_vol(unsigned int val);

extern unsigned int get_bat_power_vol(void);

extern void set_bat_power_vol(unsigned int val);


extern void SetStartTest(INT8U val);

extern INT8U GetStartTest(void);


extern void SetModemExistFlag(INT8U ucFlag);
extern INT8U GetModemExistFlag(void);
extern void SetGPSExistFlag(INT8U ucFlag);
extern INT8U GetGPSExistFlag(void);

extern INT8U GetReportStatus(void);

extern void SetReportStatus(INT8U ucStatus);


extern INT8U GetSystemRestart(void);

extern void SetSystemRestart(INT8U ucFlag);


extern INT8U GetServerChangeFlag(INT8U idx);
extern void SetServerChangeFlag(INT8U idx,INT8U ucFlag);


extern INT8U GetEmptyStoreBlockFlag(void);
extern void SetEmptyStoreBlockFlag(INT8U ucFlag);
extern INT16U GetEmpyStoreBlockNo(void);
extern void SetEmpyStoreBlockNo(INT16U ucFlag);

#define MAX_SVR_LINK_CNT 8

typedef struct tagSysParam
{
	INT16U usInitFlag;								//参数初始化标志
	INT8S szServerAddr[MAX_SVR_LINK_CNT][32];		//服务器地址
	INT16U ausPort[MAX_SVR_LINK_CNT];				//服务器端口
	INT8U ucSocketType[MAX_SVR_LINK_CNT];							//SOCKET类型 TCP UDP

	//FTP相关
	INT8S szFtpServerAddr[48];					//FTP服务器地址
	INT16U usFtpServerPort;						//FTP服务器端口
	INT8S szFtpUsername[32];
	INT8S szFtpPassword[32];
	INT8S szFtpDownloadFileName[48];			//FTP下载文件名
	INT8U ftp_file_type;
	INT8U ftp_trans_mode;
	INT8S szFtpAutoUpdateCfgFile[32];			//FTP自动升级配置文件 上电后会自动读取配置文件 对比版本号


	INT8U ucAutoUpdateSw;					//自动升级功能开关

	//电子邮件相关
	INT8S szEmailSendUser[32];			//邮件发送方账号
	INT8S szEmailSendPsw[32];			//邮件发送方密码

	INT8S szApn[32];
	INT8S szApnUsername[32];
	INT8S szApnPassword[32];

	INT8U ucIsFirstPlatCN6;						//第一平台上传国六协议
	INT32U ulReportInv6;						//国6平台协议上传时间间隔
	INT32U ulReportInv5;						//国5平台协议上传时间间隔

	INT32U ulDbgUsartBps;					//调试串口波特率
	INT8U ucDbgUsartParity;					//奇偶校验位

	INT32U ulModemUsartBps;					//Modem串口波特率
	INT8U ucModemUsartParity;

	INT32U ulGpsUsartBps;					//GPS串口波特率
	INT8U ucGpsUsartParity;

	INT32U ulWifiUsartBps;					//wifi串口波特率
	INT8U ucWifiUsartParity;

	INT32U ulBtUsartBps;					//蓝牙串口波特率
	INT8U ucBtUsartParity;

	INT32U ulSensorUsartBps;				//传感器串口波特率
	INT8U ucSensorUsartParity;

	INT32U ulPeriUsartBps;					//外设串口波特率
	INT8U ucPeriUsartParity;

	unsigned int aeCanBaudRate[3];			//CAN1和CAN2 CAN3的波特率

	//车辆相关信息
	INT8U ucCN6_Ver;
	INT8U ucCN6_Way;

	INT8S szVIN[MAX_VIN_LEN + 1];
	INT8S szSN[MAX_SN_LEN + 1];

	INT8U BCDPhoneNo[6];				//BCD[6]终端手机号
	INT8U ucEncryptionMethod;			//加密方式

	INT16U usProviceID;					//省域ID
	INT16U usCityID;					//市域ID
	INT8U aucManufacturerID[5];			//制造商ID
	INT8U aucTerminalModel[8];			//终端型号 位数不足八位补空格
	INT8U aucTerminalID[7];				//终端ID
	INT8U ucLicensePlateColor;			//车牌颜色
	INT8S szLicensePlate[32];			//车牌号

	INT8S aucAuthenticationCode[41];	//鉴权码

	/* 主电源低压报警阈值 */
	INT16U usMainPowerThreshold;

	/* 超速报警阈值 */
	INT8U ucLimitSpeed;

	EngineType stEngineType;		//发动机模式
	unsigned char ucCanChannel;
	
}SysParam;


//extern SysParam s_stUserParam;
//extern SysParam s_stUserParam;
//extern SysParam s_stYZUserParam;

extern INT16U GetSysParamSize(void);


extern void LoadUserParam(void);
extern void UserParamDefault(void);
extern void SaveSysParam(void);

extern INT8U GetDefaultFlag(void);

extern void SetDefaultFlag(INT8U val);

extern void SetReportInv6(INT32U ulValue);
extern INT32U GetReportInv6(void);
extern void SetReportInv5(INT32U ulValue);
extern INT32U GetReportInv5(void);

extern INT8U IsFirstPlatCN6(void);
extern void SetFirstPlatCN6(INT8U ucFlag);


extern INT32U GetModemBps(void);

extern INT8U GetAutoUpdateSw(void);

extern INT32U GetGpsBps(void);

extern INT32U GetPeriBps(void);

extern INT32U GetDbgBps(void);

extern INT8U GetDbgParity(void);

extern INT8U GetModemParity(void);

extern INT8U GetGpsParity(void);

extern INT8U GetPeriParity(void);

extern INT32U SetDbgBps(INT32U bps);

extern void SetAutoUpdateSw(INT8U sw);

extern INT32U SetModemBps(INT32U bps);
extern INT32U SetGpsBps(INT32U bps);
extern INT32U SetPeriBps(INT32U bps);

extern INT8U SetDbgParity(INT8U ucParity);

extern INT8U SetModemParity(INT8U ucParity);

extern INT8U SetGpsParity(INT8U ucParity);

extern INT8U SetPeriParity(INT8U ucParity);

extern unsigned int GetCan0Bps(void);

extern void SetCan0Bps(unsigned int canbps);

extern unsigned int GetCan1Bps(void);

extern void SetCan1Bps(unsigned int canbps);

extern unsigned int GetCan2Bps(void);

extern void SetCan2Bps(unsigned int canbps);


extern char *GetFtpServerAddr(void);

extern void SetFtpServerAddr(char *szServerAddr);

extern char *GetFtpUsername(void);

extern void SetFtpUsername(char *username);

extern char *GetFtpPassword(void);

extern void SetFtpPassword(char *psd);

extern INT16U GetFtpServerPort(void);

extern void SetFtpServerPort(INT16U usPort);

extern char *GetFtpDownloadFileName(void);

extern void SetFtpDownloadFileName(char *szFtpDownloadFileName);

extern void SetFtpTransMode(INT8U val);

extern void SetFtpFileType(INT8U val);

extern INT8U GetFtpFileType(void);
extern INT8U GetFtpTransMode(void);

extern INT8S *GetFtpAutoUpdateCfgFile(void);

void SetFtpAutoUpdateCfgFile(char *szFileName);


extern void SPSetApn(unsigned char idx,char *szApn);
extern void SPSetApnUsername(unsigned char idx,char *str);
extern void SPSetApnPassword(unsigned char idx,char *str);

extern char *SPGetApn(unsigned char idx);
extern char *SPGetApnUsername(unsigned char idx);
extern char *SPGetApnPassword(unsigned char idx);


extern void SPSetServerAddr(INT8U idx,void *szAddr);
extern char *SPGetServerAddr(INT8U idx);
extern void SPSetServerPort(INT8U idx,INT16U usPort);
extern INT16U SPGetServerPort(INT8U idx);


extern INT8U GetSocketType(unsigned char idx);
extern INT8U ServerLinkIsTcp(unsigned char idx);

extern void SetSocketType(unsigned char idx,char is_tcp);


extern void SetSN(void *szSN);
extern INT8S *GetSN(void);
extern void SetVIN(void *szVIN);
extern INT8S *GetVIN(void);
extern INT8U *GetEncryptionMethodPtr(void);
extern INT8U GetEncryptionMethod(void);

extern INT8U *GetBCDPhoneNo(void);
extern void SetBCDPhoneNo(INT8U bcd[6]);

extern INT8U *CN6_GetVerPtr(void);
extern INT8U *CN6_GetWayPtr(void);
extern void CN6_SetWay(INT8U ucWay);
extern void CN6_SetVer(INT8U ucVer);


extern INT8S *GetAuthenticationCode(void);
extern void SetAuthenticationCode(void *ptr);
extern INT8S *GetLicensePlate(void);
extern void SetLicensePlate(void *ptr);
extern INT8U *GetTerminalModel(void);
extern void SetTerminalModel(void *ptr);
extern INT8U *GetTerminalID(void);
extern void SetTerminalID(void *ptr);
extern void SetPlateColor(INT8U val);
extern INT8U GetPlateColor(void);
extern INT8U *GetManufacturerID(void);
extern void SetManufacturerID(void *ptr);
extern INT16U GetProviceID(void);
extern void SetProviceID(INT16U usID);
extern INT16U GetCityID(void);
extern void SetCityID(INT16U usID);

extern void SetEmailSendUser(void *ptr);
extern INT8S *GetEmailSendUser(void);
extern void SetEmailSendPsw(void *ptr);
extern INT8S *GetEmailSendPsw(void);

extern INT16U GetMainPowerThreshold(void);
extern void SetMainPowerThreshold(INT16U val);

extern void SetLimitSpeed(INT8U val);

extern INT8U GetLimitSpeed(void);

extern EngineType get_engine_type(void);
extern void set_engine_type(EngineType st);
extern char *get_engine_type_str(EngineType st);

extern void SetCanChannel(INT8U val);
extern INT8U GetCanChannel(void);



extern UpdateInfo *get_update_info_ptr(void);
extern void set_update_way(INT8U val);
extern INT8U get_update_way(void);
extern UpdateStatus get_update_status(void);
extern void set_update_status(UpdateStatus eStatus);
extern INT32U get_update_start_time(void);
extern void set_update_start_time(INT32U val);
extern void set_update_start_date(Date *pstdate);
extern void set_update_end_date(Date *pstdate);
extern void get_update_start_date(Date *pstdate);
extern void get_update_end_date(Date *pstdate);
extern void set_update_end_time(INT32U val);
extern void set_update_take_times(INT32U val);
extern INT32U get_update_take_times(void);
extern void set_update_start_addr(unsigned int val);
extern void set_update_total_bytes(unsigned int val);
extern void save_update_info(void);
extern char *get_update_reportphone(void);
extern void set_update_reportphone(void *szPhone);
extern void set_update_server(void *szAddr,INT16U usPort);
extern void set_update_download_file_name(void *ptr);
extern char *get_update_download_file_name(void);
extern char *get_update_server_addr(void);
extern INT16U get_update_server_port(void);
extern void disp_update_info(void);
extern void update_info_default(void);
extern void check_update_status(void);



extern unsigned int disp_ftp_param(void *pOut,unsigned int outbuflen);

extern unsigned int disp_sysparam(void *pOut,unsigned int outbuflen);


#ifdef __cplusplus
}
#endif
#endif


