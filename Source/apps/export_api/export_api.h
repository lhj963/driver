#ifndef __EXPORT_API_H__
#define __EXPORT_API_H__

#ifdef __cplusplus
extern "C" {
#endif

#define EXTERNAL_STORAGE_RSV		0
#define EXTERNAL_STORAGE_SD			1
#define EXTERNAL_STORAGE_USB		2
typedef struct tagDRVFILE
{
	void *filename;
	void *pbuf;
	INT32U buflen;
	INT32U attri;			//0表示覆盖写 1表示追加
	INT32U seek_offset;		//对于写文件 该成员不用管
	INT32U want_read_len;	//对于写文件 该成员不用管
}DRVFILE;


typedef enum tagHOOK_MSG_TYPE
{
	HOOK_MSG_ONE_MS = 0,							// 1毫秒
	HOOK_MSG_100US, 								// 100us
	HOOK_MSG_10US, 									// 10us

	HOOK_MSG_CAN0_DATA_ARRIVE, 						// can0 msg arrive
	HOOK_MSG_CAN1_DATA_ARRIVE,						// can1 msg arrive
	HOOK_MSG_CAN2_DATA_ARRIVE,						// can2 msg arrive
	HOOK_MSG_CAN3_DATA_ARRIVE,						// can3 msg arrive


	HOOK_MSG_MAX,
}HOOK_MSG_TYPE;

typedef enum tagCALLBACK_MSG_TYPE
{
	CB_MSG_REBOOT_OK = 0,							//重启完成
	CB_MSG_OTA_SUCCESS,								//OTA成功
	CB_MSG_OTA_FALSE,								//OTA失败

	CB_MSG_KEY_MENU_DOWN,							//菜单键按下
	CB_MSG_KEY_OK_DOWN,								//确认键按下
	CB_MSG_KEY_CANCLE_DOWN,							//取消键按下
	CB_MSG_KEY_UP_DOWN,								//上翻键按下
	CB_MSG_KEY_DOWN_DOWN,							//下翻键按下

	CB_MSG_KEY_PRINT_CHANGAN,						//长按打印键

	CB_MSG_IC_CARD_INSERT,							//IC卡插入
	CB_MSG_IC_CARD_TAKEOUT,							//IC卡拔出

	CB_MSG_MAIN_POWER_OFF,							//主电源掉电

	CB_MSG_SOS_TRIGGER,								//紧急报警触发

	CB_MSG_SPEED_PULSE_ARRIVE,						//速度脉冲到达消息

	CB_MSG_SEC_INT_ARRIVE,							//秒中断到达

	CB_MSG_CEFAN_HAPPEN,							//发生侧翻
	CB_MSG_CEFAN_JIECHU,							//侧翻解除

	CB_MSG_PENGZHUANG_HAPPEN,						//发生碰撞
	CB_MSG_NINE_AXIS_VALUE,							//九轴加速度计

	CB_MSG_GPS_JS_OK,								//GPS校时成功

	CB_MSG_RING_IS_COMMING,							//电话来了
	CB_MSG_RING_IS_BEIGUADUAN,						//被挂断

	CB_MSG_NETWORK_JS_OK,							//网络校时完成
	CB_MSG_ZK_FILE_DOWNLOAD_OK,						//字库文件下载完成
	
	CB_MSG_KEY_OK_CHANGAN,							//长按确认键

	CB_MSG_READ_RECORD_FILE_FINISH,					//读取录音文件完成

	CB_MSG_CONNECT_SERVER_OK,
	CB_MSG_SERVER_DISCONNECT,
	CB_MSG_DBG_UART_DATA_ARRIVE,
	CB_MSG_SERVER_DATA_ARRIVE,
	CB_MSG_LINUX_CMD_ACK_ARRIVE,
	CB_MSG_CACHE_DATA_ARRIVE,
	CB_MSG_EASY_CHANGE_PARAM_ARRIVE,
	CB_MSG_FILE_DATA_ARRIVE,
	CB_MSG_USER_MPU_MSG_ARRIVE,
	CB_MSG_SMS_ARRIVE,								//短信到达

	CB_MSG_MAX
}CALLBACK_MSG_TYPE;

typedef enum tagS_MSG_TYPE
{
	S_MSG_DIAL = 0,									//拨打电话
	S_MSG_SEND_SMS,									//发送短信
	S_MSG_GET_CPU_TYPE,								//获取CPU型号
	S_MSG_GET_MDM_TYPE,								//获取MODEM型号
	S_MSG_GET_GPS_TYPE,								//获取GPS模块型号

	S_MSG_JIETING_RING,								//接听来电
	S_MSG_GUADUAN_RING,								//挂断来电

	S_MSG_SET_SOUND_VOLUME,							//设置音量

	S_MSG_TRIGGER_BOHAOANJIAN_SOUND,				//拨号按键音
	S_MSG_TRIGGER_TONE,								//触发不同频率的声调

	S_MSG_GET_NETWORK_NAME,							//网络名称
	S_MSG_GPS_POWER_CTRL,							//GPS模块电源控制
	S_MSG_GPRS_POWER_CTRL,							//GPRS模块电源控制
	S_MSG_SCREEN_POWER_CTRL,						//屏幕背光电源控制
	S_MSG_PRINTER_POWER_CTRL,						//打印机电源控制
	S_MSG_CPU_INT_CTRL,								//CPU中断开关控制
	S_MSG_OIL_CTRL,									//油路控制
	S_MSG_ELEC_CTRL,								//电路控制
	S_MSG_DOOR_CTRL,								//门控制

	S_MSG_LOUDSPEAKER_POWER_CTRL,					//喇叭控制
	S_MSG_LISTEN_DIAL,								//监听

	//外部存储器相关的接口 外部存储器包括U盘 SD卡
	S_MSG_EXTERNAL_STORAGE_TOTAL_CAP,				//总容量
	S_MSG_EXTERNAL_STORAGE_USED, 					//已用空间
	S_MSG_EXTERNAL_STORAGE_FREE, 					//剩余空间

	S_MSG_EXTERNAL_STORAGE_WRITE_FILE, 				//写文件
	S_MSG_EXTERNAL_STORAGE_READ_FILE,				//读文件
	S_MSG_EXTERNAL_STORAGE_DEL_FILE,				//删除文件

	S_MSG_EXTERNAL_STORAGE_RSV1,					//保留接口
	S_MSG_EXTERNAL_STORAGE_RSV2,					//保留接口
	S_MSG_EXTERNAL_STORAGE_RSV3,					//保留接口
	S_MSG_EXTERNAL_STORAGE_RSV4,					//保留接口

	S_MSG_BEEP_CTRL,								//蜂鸣器控制
	S_MSG_CPU_CLOCK,								//cpu clock

	S_MSG_START_RECORD_INSIDE,						//开始录音
	S_MSG_STOP_RECORD_INSIDE,						//停止录音
	S_MSG_PLAY_RECORD_INSIDE,						//播放录音
	S_MSG_DEL_RECORD_FILE_INSIDE,					//删除内部录音文件
	S_MSG_READ_RECORD_FILE_INSIDE,					//读取内部录音文件
	S_MSG_IS_READ_RECORD_FILE_FINISH_INSIDE,		//当前读取的录音文件是否读取完成

	S_MSG_SYS_LED_CTRL,								//sys  led ctrl
	S_MSG_GPS_LED_CTRL,
	S_MSG_CAN_LED_CTRL,
	S_MSG_SEND_TO_SERVER,							//SEND TO SERVER

	S_MSG_GET_RTC_TIME,
	S_MSG_GET_LON,
	S_MSG_GET_LAT,
	S_MSG_GET_VIN,

	S_MSG_SEND_PARAM_TO_MPU,
	S_MSG_EXECUTE_DRV_CMD,

	S_MSG_GET_ICCID,
	S_MSG_GET_IMEI,
	S_MSG_GET_GPS_ANT_STATUS,
	S_MSG_GET_GPS_STAR_NUM,
	S_MSG_GET_SIM_CSQ,

	S_MSG_STORE_CAN_DATA,
	S_MSG_GET_MAIN_VOL,
	S_MSG_GET_BAT_VOL,
	S_MSG_GET_ACC_STATUS,

	S_MSG_GET_MPU_SOFTWARE_VERSION,		//MPU软件版本
	S_MSG_GET_GPS_SPEED,				//GPS速度
	S_MSG_GET_GAODU,					//高度
	S_MSG_GET_ANGLE,					//方向角

	S_MSG_GET_SERVER_ADDR,
	S_MSG_GET_SERVER_PORT,

	S_MSG_READ_PARAM,
	S_MSG_WRITE_PARAM,

	S_MSG_GET_GSENSOR_CHIP_STATUS,
	S_MSG_GET_FLASH_CHIP_STATUS,
	S_MSG_GET_EMMC_CHIP_STATUS,			//emmc状态
	S_MSG_GET_JIAMI_CHIP_STATUS,		//加密芯片状态

	S_MSG_ENTER_SLEEP_MODE,				//进入休眠模式

	S_MSG_GET_GPS_MODULE_STATUS,		//GPS模块状态
	S_MSG_GET_PUBLIC_KEY,				//获取公钥

	S_MSG_STORE_CACHE_DATA,				//存储缓存数据
	S_MSG_GET_CACHE_DATA,				//读取缓存数据

	S_MSG_OUT_IO_CTRL,

	S_MSG_GET_JIAMI_CHIP_ID,			//获取加密芯片ID
	S_MSG_SET_JIAMI_CHIP_ID,			//设置加密芯片ID

	S_MSG_SET_SERVER_ADDR,
	S_MSG_SET_SERVER_PORT,
	S_MSG_SET_SERVER_IP_PORT,
	S_MSG_GET_BEIAN_MSG_BODY_WITH_SIGN,

	S_MSG_GET_POWER_SUPPLY_MODE,		//供电模式 0 主电源  1 电池供电

	S_MSG_DBG_DISP,						//调试显示
	S_MSG_GET_GPS_LOCAL_STATUS,			//gps定位状态

	S_MSG_WRITE_EASY_CHANGE_PARAM,		//写易变化的参数
	S_MSG_SAVE_MCU_LOG,					//写MCU log

	S_MSG_GET_FILE_DATA,				//获取文件数据

	S_MSG_SET_STORE_CACHE_DATA_FLAG,	//设置存储CACHE数据的开关
	S_MSG_GET_HARDWARE_VERSION,			//获取硬件版本号
	S_MSG_GET_WIFI_MODULE_STATUS,		//WIFI模块状态
	S_MSG_GET_CAN0_STATUS,				//can0 是否有数据	
	S_MSG_GET_CAN1_STATUS,				//can1 是否有数据
	S_MSG_GET_CAN2_STATUS,				//can2 是否有数据
	S_MSG_GET_GPS,
	S_MSG_GET_MPU_STATUS,
	S_MSG_REBOOT_TO_MPU,				//reboot pmu
	S_MSG_GET_TBOX_STATUS,
	S_MSG_MAX,
}S_MSG_TYPE;



typedef void (*callback_func)(void *);


extern callback_func get_connect_server_ok_func_ptr(void);
extern callback_func get_disconnect_server_func_ptr(void);


extern void *send_msg(S_MSG_TYPE msgtype,void *param,void *lparam,void *wparam);

//安装消息钩子函数
extern void install_hook_msg(HOOK_MSG_TYPE msgtype,void *pf);

//注册回调消息
extern void reg_callback_msg(CALLBACK_MSG_TYPE msgtype,void *pf);







#ifdef __cplusplus
}
#endif




#endif

