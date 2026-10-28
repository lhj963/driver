#ifndef __TWO_CPU_COM_PROTOCOL_H__
#define __TWO_CPU_COM_PROTOCOL_H__
#ifdef __cplusplus
extern "C" {
#endif

//主机和从机都可以发送的消息
#define TCCP_FILE_SEND_START_MSG_ID 		0x2002	//发送文件消息
#define TCCP_SEND_FILE_MSG_ID 				0x2000	//发送文件消息
#define TCCP_FILE_SEND_FINISH_MSG_ID 		0x2001	//文件发送完成消息
#define TCCP_FILE_SEND_NEXT_MSG_ID 			0x2003	//文件发送下一包

//从机发送的消息
#define TCCP_SLAVE_SEND_CAN_MSG_ID 			0x1000	//从机发送CAN数据消息
#define TCCP_SLAVE_UN_ACK_MSG_ID 			0x1001	//从机机通用应答
#define TCCP_SLAVE_UPDATA_RES_MSG_ID 		0x1002	//从机汇报升级结果
#define TCCP_SLAVE_REPORT_VER_MSG_ID 		0x1003	//从机汇报软件版本号
#define TCCP_SLAVE_ACK_BEIAN_E_MSG_ID 		0x1004	//从机汇报密文备案信息
#define TCCP_SLAVE_ACK_BEIAN_M_MSG_ID 		0x1005	//从机应答明文备案信息
#define TCCP_SLAVE_ACK_SIGNA_MSG_ID 		0x1006	//从机应答签名数据

//主机发送的消息
#define TCCP_HOST_UN_ACK_MSG_ID 					0x0001	//主机通用应答
#define TCCP_HOST_UPDATA_RES_MSG_ID 				0x0002	//主机汇报升级结果
#define TCCP_HOST_QUERY_SLAVE_CPU_VER_MSG_ID 		0x0003	//主机查询从机版本号
#define TCCP_HOST_REQ_BEIAN_E_MSG_ID 				0x0004	//主机请求密文备案信息
#define TCCP_HOST_REQ_BEIAN_M_MSG_ID 				0x0005	//主机请求明文备案信息
#define TCCP_HOST_REQ_SIGNA_MSG_ID 					0x0006	//主机请求签名数据

#define TCCP_GZ_HEART_BEAT_MSG_ID 					0x3000	//工装心跳
#define TCCP_GZ_MASTER_SET_CHANNEL_MSG_ID 			0x3002	//工装主CPU设置通道号
#define TCCP_AUTO_TEST_MSG_ID 						0x3004	//启动/停止自动化测试
#define TCCP_REPORT_DOWNLOAD_PROGRESS_MSG_ID		0x3006	//汇报设备程序下载进度
#define TCCP_ACK_DOWNLOAD_PROGRESS_MSG_ID			0x3007	//上位机响应已收到设备程序下载进度消息

#define TCCP_GZ_MASTER_DISP_INFO_MSG_ID				0x3008	//上位机给显示屏下发显示信息


#define TCCP_DEVICE_HEART_BEAT_MSG_ID 				0x4000	//设备心跳
#define TCCP_DEVICE_HEART_BEAT_MSG_ID1 				0x4001	//设备心跳


#define TCCP_FORWARD_MODE_MSG_ID 					0x5000	//进入/退出 转发模式
#define TCCP_GZ_SLAVE_FORWARD_MODE_MSG_ID 			0x6000	//进入/退出 与工装从机对话模式

#define TCCP_USART_DOWNLOAD_FILE_MSG_ID 			0x7000	//启动串口下载app文件
#define TCCP_USART_DOWNLOAD_BOOT_FILE_MSG_ID 		0x7002	//启动串口下载boot文件

#define TCCP_TRANS_CMD_MSG_ID 						0x9000	//透传设备指令
#define TCCP_ACK_TRANS_CMD_MSG_ID 					0x9001	//响应透传设备指令

#define TCCP_GZ_SLAVE_SPEAK							0x9002	//工装从机反馈调试信息消息ID
#define TCCP_SET_BACKDOOR_HEART_INV_MSG_ID 			0x9004	//设置远程管理心跳时间间隔


#define TCCP_RP_CAN_CMD_MSG_ID 					0x9101	//上报CAN数据指令


//mcu -> mpu
#define TCCP_MCU_SEND_NET_DATA_MSG_ID 				0xA000	//网络数据上传指令
#define TCCP_MCU_TO_MPU_TEST_MSG_ID 				0xA001
#define TCCP_MCU_TO_MPU_PARAM_MSG_ID				0xA002
#define TCCP_MCU_TO_MPU_EXE_LINUX_CMD_MSG_ID		0xA003
#define TCCP_MCU_TO_MPU_STORE_CAN_DATA_MSG_ID		0xA004
#define TCCP_MCU_TO_MPU_PARAM_EXT_MSG_ID			0xA005
#define TCCP_MCU_TO_MPU_STATUS_MSG_ID				0xA006
#define TCCP_MCU_TO_MPU_STORE_CACHE_MSG_ID			0xA007	//存储缓存
#define TCCP_MCU_TO_MPU_GET_CACHE_MSG_ID			0xA008	//获取缓存数据
#define TCCP_MCU_TO_MPU_GET_SM2_SIGN_MSG_ID			0xA009	//获取sm2签名
#define TCCP_MCU_TO_MPU_DBG_DISP_MSG_ID				0xA00A	//调试显示   给人看的友好信息
#define TCCP_MCU_TO_MPU_SAVE_LOG_MSG_ID				0xA00B	//mcu log 信息
#define TCCP_MCU_TO_MPU_SAVE_LOG_HEX_MSG_ID			0xA00C	//mcu log 信息
#define TCCP_MCU_TO_MPU_STORE_E_CHANGE_PARAM_MSG_ID	0xA00D	//容易发生变化的参数
#define TCCP_MCU_TO_MPU_FTP_UPLOAD_FILE_MSG_ID		0xA00E	//FTP
#define TCCP_MCU_TO_MPU_FTP_UPLOAD_FILE1_MSG_ID		0xA00F	//FTP
#define TCCP_MCU_TO_MPU_GET_FILE_DATA_MSG_ID		0xA010	//GET FILE DATA
#define TCCP_MCU_TO_MPU_SEND_USER_MSG_MSG_ID		0xA011	//发送用户消息
#define TCCP_MCU_TO_MPU_EXE_AT_CMD_MSG_ID			0xA012	//AT
#define TCCP_MCU_TO_MPU_SEND_SMS_MSG_ID				0xA013	//send sms

//mpu->mcu
#define TCCP_MPU_ACK_MCU_SEND_NET_DATA_MSG_ID 		0xA100	//网络数据上传指令
#define TCCP_NET_DATA_ARRIVE_MSG_ID 				0xA101	//网络数据上传指令
#define TCCP_MPU_HEAT_MSG_ID 						0xA102	//MPU心跳
#define TCCP_MPU_SEND_PARAM_MSG_ID 					0xA103	//MPU send param
#define TCCP_MPU_SEND_ONLINE_MSG_ID 				0xA104
#define TCCP_MPU_SEND_OFFLINE_MSG_ID 				0xA105
#define TCCP_MPU_ACK_MCU_MSG_ID 					0xA106
#define TCCP_MPU_TO_MCU_PARAM_EXT_MSG_ID 			0xA107	//MPU send param
#define TCCP_MPU_TO_MCU_STATUS_MSG_ID				0xA108
#define TCCP_MPU_TO_MCU_CACHE_DATA_ARRIVE_MSG_ID	0xA109	//缓存数据到达
#define TCCP_MPU_TO_MCU_SM2_SIGN_DATA_ARRIVE_MSG_ID	0xA10A	//SM2签名数据到达
#define TCCP_MPU_TO_MCU_BEIAN_MSGBODY_ARRIVE_MSG_ID	0xA10B	//备案信息体到达
#define TCCP_MPU_TO_MCU_E_PARAM_ARRIVE_MSG_ID		0xA10D	//易变化参数到达
#define TCCP_MPU_TO_MCU_FILE_DATA_ARRIVE_MSG_ID		0xA10E	//文件数据达到
#define TCCP_MPU_TO_MCU_USER_MSG_ARRIVE_MSG_ID		0xA10F	//用户消息达到
#define TCCP_MPU_TO_MCU_USUAL_ACK_MSG_ID			0xA110	//MPU给MCU的通用应答
#define TCCP_MPU_TO_MCU_SMS_ARRIVE_MSG_ID			0xA111	//sms arrive msg id


#define PARAM_ID_FROM_MCU_SOFTWARE_VERSION			0x0001
#define PARAM_ID_FROM_MCU_MAIN_POWER_VOL			0x0002
#define PARAM_ID_FROM_MCU_BAT_VOL					0x0003
#define PARAM_ID_FROM_MCU_SERVER					0x0004
#define PARAM_ID_FROM_MCU_CHIP_ID					0x0005
#define PARAM_ID_FROM_MCU_POSITION					0x0006


#define PARAM_ID_FROM_MPU_SOFTWARE_VERSION			0x8001
#define PARAM_ID_FROM_MPU_GPS_SPEED					0x8002
#define PARAM_ID_FROM_MPU_SIM_SIGNAL_STRENGTH		0x8003
#define PARAM_ID_FROM_MPU_GAODU						0x8004
#define PARAM_ID_FROM_MPU_ANGLE						0x8005
#define PARAM_ID_FROM_MPU_SERVER0_ADDR				0x8006
#define PARAM_ID_FROM_MPU_SERVER0_PORT				0x8007
#define PARAM_ID_FROM_MPU_SERVER1_ADDR				0x8008
#define PARAM_ID_FROM_MPU_SERVER1_PORT				0x8009
#define PARAM_ID_FROM_MPU_SERVER2_ADDR				0x800A
#define PARAM_ID_FROM_MPU_SERVER2_PORT				0x800B
#define PARAM_ID_FROM_MPU_SERVER3_ADDR				0x800C
#define PARAM_ID_FROM_MPU_SERVER3_PORT				0x800D
#define PARAM_ID_FROM_MPU_VIN						0x800E
#define PARAM_ID_FROM_MPU_IMEI						0x800F
#define PARAM_ID_FROM_MPU_ICCID						0x8010
#define PARAM_ID_FROM_MPU_GET_MCU_PARAM_SW			0x8011
#define PARAM_ID_FROM_MPU_PUBLIC_KEY				0x8012
#define PARAM_ID_FROM_MPU_CHIP_ID					0x8013

#define PARAM_ID_FROM_MPU_SERVER4_ADDR				0x8016
#define PARAM_ID_FROM_MPU_SERVER4_PORT				0x8017
#define PARAM_ID_FROM_MPU_SERVER5_ADDR				0x8018
#define PARAM_ID_FROM_MPU_SERVER5_PORT				0x8019
#define PARAM_ID_FROM_MPU_SERVER6_ADDR				0x801A
#define PARAM_ID_FROM_MPU_SERVER6_PORT				0x801B
#define PARAM_ID_FROM_MPU_SERVER7_ADDR				0x801C
#define PARAM_ID_FROM_MPU_SERVER7_PORT				0x801D
#define PARAM_ID_FROM_MPU_STASTUS1					0x801E



extern unsigned int tccp_pack(unsigned short msgid,void *content,unsigned int contentlen,
							void *pOutBuf,unsigned int outbuflen);

/* 解包 */
extern int tccp_unpack(void *pdat,unsigned int len,
					void (*pCallBackAnalyze)(unsigned int msgid,void *content,unsigned int contentlen),
					void (*pCallBackError)(void *pdat,unsigned int len));

extern unsigned int tccp_unpack1(void *pdat,unsigned int len,
					void (*pCallBackAnalyze)(unsigned int msgid,void *content,unsigned int contentlen),
					void (*pCallBackError)(void *pdat,unsigned int len));

#ifdef __cplusplus
}
#endif
#endif

