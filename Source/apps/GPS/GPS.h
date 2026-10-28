#ifndef __GPS_H__
#define __GPS_H__

#ifdef __cplusplus
extern "C" {
#endif

#define MAX_STAR_NUM 32


/* GPS天线状态 */
typedef enum _GpsAntStateE
{
	E_GPS_ANT_NORMAL = 0,				/* GPS天线正常 */
	E_GPS_ANT_SHORT,					/* GPS天线短路 */
	E_GPS_ANT_OPEN,						/* GPS天线开路 */
} GpsAntStateE;

typedef struct tagGPS
{
	INT8U ucGpsMode;		//模式指示(A=自主定位，D=差分，E=估算，N=数据无效)
	INT8U ucPositionStatus;	//定位状态'A' 'V'
	INT32U position_time_cnt;		//定位时长

	INT32U ulLat;		//纬度
	INT8U ucNS;		//南北纬
	INT32U ulLong;		//经度
	INT8U ucEW;		//东西经
	INT16U usGpsSpeed;	//单位:0.1Km/h  速度扩大10倍
	INT16U usAngle;		//方向角
	INT16U usGaodu;		//高度

	INT8U start_num;		//定位星数

	INT8U gsv_star_num;		//可视卫星数
	INT8U gsv_star_no[MAX_STAR_NUM];		//可视卫星号
	INT8U gsv_star_yj[MAX_STAR_NUM];		//可视卫仰角
	INT16U gsv_star_fwj[MAX_STAR_NUM];		//可视卫方位角
	INT8U gsv_star_xzb[MAX_STAR_NUM];		//可视卫星信噪比

	GpsAntStateE eAntStatus;	//天线状态

	INT16U usPDOP;		//扩大10倍 综合位置精度因子(0.5 - 99.9)
	INT16U usHDOP;		//扩大10倍 水平精度因子(0.5 - 99.9)
	INT16U usVDOP;		//扩大10倍 垂直精度因子(0.5 - 99.9)

	INT8U year;		//年
	INT8U month;	//月
	INT8U day;		//日
	INT8U hour;		//时
	INT8U min;		//分
	INT8U sec;		//秒
}GPS;


//校时回调函数
typedef void (*gps_calibration_time_callback)(unsigned char year,unsigned char month,unsigned char day,unsigned char hour,unsigned char min,unsigned char sec);


extern int GPS_Init(int bps,int iParity);

extern void reg_gps_calibration_time_callback_func(gps_calibration_time_callback pfunc);

extern int GPS_Analyze(void *buf);

extern void DispGpsInfo(void);


//是否定位
extern char IsPosition(void);

extern GpsAntStateE gps_get_ant_status(void);
extern void gps_set_ant_status(GpsAntStateE val);


extern INT8U GetStartNum(void);

//获取GPS速度
extern INT16U GetGpsSpeed(void);
extern void SetGpsSpeed(INT16U val);

extern INT16U GetAngle(void);
extern void SetAngle(INT16U val);
extern INT16U GetGaoDu(void);
extern void SetGaoDu(INT16U val);


extern INT8U GetEW(void);
extern INT8U GetNS(void);

//获取经度
extern INT32U GetLong(void);
//获取纬度
extern INT32U GetLat(void);

//经度
extern void SetLong(INT32U val);

//纬度
extern void SetLat(INT32U val);


extern GPS *get_gps_info_ptr(void);


extern void test_utc_to_btc(void);


extern void gps_get_time(unsigned char time[6]);

#ifdef __cplusplus
}
#endif
#endif

