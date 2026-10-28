#ifndef __OBD_H__
#define __OBD_H__
#ifdef __cplusplus
extern "C" {
#endif

#define MAX_CAN_CNT     3

#define CALID_LEN       18
#define CVN_LEN 		18
#define VIN_LEN         17
#define IUPR_LEN        36
#define DTC_BUF_LEN     80

typedef struct tagCanInfo
{
	INT8U BCDTime[6];
	INT16U usSpeed;	//车速 1/256 KM/h per bit
	INT8U uckPa;		//大气压力 0.5kPa/bit
	INT8S cActualTorquePercent;	//发动机实际扭矩与指示扭矩的百分比 范围:-125~125%
	INT8S cFrictionTorquePercent;	//摩擦扭矩百分比 范围:-125~125%
	INT16U usRPM;		//发动机转速 0.125rpm/bit
	INT16U usFuelFlow;	//燃料流量
	INT16S sUpperNOx;	//SCR上游氮氧化合物 0.05ppm/bit 数据范围:-200~3012.75ppm
	INT16S sLowerNOx;	//SCR下游氮氧化合物
	INT8U ucRemain;		//反应剂余量 0~100%
	INT16U usIntakeVolume;	//进气量 0.05Kg/h per bit

	INT16S sSCRInletTemperature;	//SCR入口温度 0.03125deg C/bit
	INT16S sSCROutletTemperature;	//SCR出口温度

	INT16U usDPF;		//DPF压差 0.1kPa/bit

	INT8S cCoolantTemperature;	//发动机冷却液温度

	INT8U ucLevel;		//邮箱液位
	INT32U ulMilage;	//累计里程

	INT8U OBD_PRO;				//01,OBD诊断协议  有效范围0~2,0代表IOS15765,1代表IOS27145,2代表SAEJ1939
	INT8U MIL_STA;				//02,有效范围0~1，“0”代表未点亮，“1”代表点亮
	INT16U DST_STA;				//03,诊断支持状态
	INT16U DRT_STA;				//04,诊断就绪状态

	INT8U CALID[CALID_LEN + 1];			//06,软件标定识别号 字母或数字组成 不足18位的 用字符'0'补足18位
	INT8U CVN[CVN_LEN + 1];				//07,标定验证码  字母或数字组成 不足18位的 用字符'0'补足18位
	INT8U IUPR[IUPR_LEN + 1];				//08,IUPR值
	INT8U DTC_CNT;				//09,故障码数量 		N
	INT8U DTC_BUF[DTC_BUF_LEN];		//10,存储故障码缓存
	INT8U VIN[VIN_LEN + 1];				//05,汽车VIN码
}CanInfo;


extern INT16U byte_to_int16u(INT8U D0,INT8U D1);

extern INT32U byte_to_int32u(INT8U D0,INT8U D1,INT8U D2,INT8U D3);


extern void clr_obd_data(void);



extern void can_set_speed(char channel,INT16U val);

extern INT16U can_get_speed(char channel);

extern void can_set_kpa(char channel,INT8U val);

extern INT8U can_get_kpa(char channel);

extern void can_set_actualtorquepercent(char channel,INT8S val);

extern INT8S can_get_actualtorquepercent(char channel);

extern void can_set_frictiontorquepercent(char channel,INT8S val);

extern INT8S can_get_frictiontorquepercent(char channel);

extern INT16U can_get_rpm(char channel);

extern void can_set_rpm(char channel,INT16U val);

extern void can_set_fuelflow(char channel,INT16U val);

extern INT16U can_get_fuelflow(char channel);

extern void can_set_milage(char channel,INT32U val);

extern INT32U can_get_milage(char channel);

extern void can_set_oilboxlevel(char channel,INT8U val);

extern INT8U can_get_oilboxlevel(char channel);

extern void can_set_coolanttemperature(char channel,INT8S val);

extern INT8S can_get_coolanttemperature(char channel);

extern void can_set_DPF(char channel,INT16U val);

extern INT16U can_get_DPF(char channel);

extern void can_set_SCROutletTemperature(char channel,INT16S val);

extern INT16S can_get_SCROutletTemperature(char channel);

extern void can_set_SCRInletTemperature(char channel,INT16S val);

extern INT16S can_get_SCRInletTemperature(char channel);

extern void can_set_intakevolume(char channel,INT16U val);

extern INT16U can_get_intakevolume(char channel);

extern void can_set_remain(char channel,INT8U val);

extern INT8U can_get_remain(char channel);

extern void can_set_lowerNOx(char channel,INT16S val);

extern INT16S can_get_lowerNOx(char channel);

extern void can_set_upperNOx(char channel,INT16S val);

extern INT16S can_get_upperNOx(char channel);

extern void can_set_dtc_cnt(char channel,INT8U val);

extern INT8U can_get_dtc_cnt(char channel);

extern void can_set_mil_sta(char channel,INT8U val);

extern INT8U can_get_mil_sta(char channel);

extern void can_set_dst_sta(char channel,INT16U val);

extern INT16U can_get_dst_sta(char channel);

extern void can_set_drt_sta(char channel,INT16U val);

extern INT16U can_get_drt_sta(char channel);

extern void can_set_obd_pro(char channel,INT8U val);

extern INT8U can_get_obd_pro(char channel);

extern void can_set_calid(char channel,INT8U idx,INT8U dat);

extern INT8U can_get_calid(char channel,void *pOut,int outbuflen);

extern void can_set_cvn(char channel,void *pdat,int datlen);

extern INT8U can_get_cvn(char channel,void *pOut,int outbuflen);

extern void can_set_vin(char channel,INT8U idx,INT8U dat);

extern INT8U can_get_vin(char channel,void *pOut,int outbuflen);

extern void can_set_iupr(char channel,INT8U idx,INT8U dat);

extern INT8U can_get_iupr(char channel,void *pOut,int outbuflen);

extern void can_set_dtc_buf(char channel,INT8U idx,INT8U dat);

extern INT8U can_get_dtc_buf(char channel,INT8U idx);

extern INT8U *can_get_dtc_buf_ptr(char channel);





//十六进制
extern unsigned int OBD_Hex_To_DTC(unsigned char tempa,unsigned char tempb);

extern void OBD_Display(void);


#ifdef __cplusplus
}
#endif
#endif









