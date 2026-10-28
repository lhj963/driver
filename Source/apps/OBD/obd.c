#include "OBD.h"

//变量定义
//OBD数据缓存结构体
CanInfo s_astCanInfo[MAX_CAN_CNT] = {0};


void clr_obd_data(void)
{
	unsigned char i = 0;

	memset(s_astCanInfo,0xFF,sizeof(s_astCanInfo));

	for (i = 0; i < MAX_CAN_CNT; i++)
	{
		can_set_dtc_cnt(i,0);
	}
}


INT16U byte_to_int16u(INT8U D0,INT8U D1)
{
	return byte_to_int32u(0,0,D0,D1);
}

INT32U byte_to_int32u(INT8U D0,INT8U D1,INT8U D2,INT8U D3)
{
	return ((D0 << 24) + (D1 << 16) + (D2 << 8) + D3);
}

void can_set_speed(char channel,INT16U val)
{
	if (s_astCanInfo[channel].usSpeed != val)
	{
		s_astCanInfo[channel].usSpeed = val;
	}
}

INT16U can_get_speed(char channel)
{
	return s_astCanInfo[channel].usSpeed;
}

void can_set_kpa(char channel,INT8U val)
{
	if (s_astCanInfo[channel].uckPa != val)
	{
		s_astCanInfo[channel].uckPa = val;
	}
}

INT8U can_get_kpa(char channel)
{
	return s_astCanInfo[channel].uckPa;
}

void can_set_actualtorquepercent(char channel,INT8S val)
{
	if (s_astCanInfo[channel].cActualTorquePercent != val)
	{
		s_astCanInfo[channel].cActualTorquePercent = val;
	}
}

INT8S can_get_actualtorquepercent(char channel)
{
	return s_astCanInfo[channel].cActualTorquePercent;
}

void can_set_frictiontorquepercent(char channel,INT8S val)
{
	if (s_astCanInfo[channel].cFrictionTorquePercent != val)
	{
		s_astCanInfo[channel].cFrictionTorquePercent = val;
	}
}

INT8S can_get_frictiontorquepercent(char channel)
{
	return s_astCanInfo[channel].cFrictionTorquePercent;
}


INT16U can_get_rpm(char channel)
{
	return s_astCanInfo[channel].usRPM;
}

void can_set_rpm(char channel,INT16U val)
{
	if (s_astCanInfo[channel].usRPM != val)
	{
		s_astCanInfo[channel].usRPM = val;
	}
}

void can_set_fuelflow(char channel,INT16U val)
{
	if (s_astCanInfo[channel].usFuelFlow != val)
	{
		s_astCanInfo[channel].usFuelFlow = val;
	}
}

INT16U can_get_fuelflow(char channel)
{
	return s_astCanInfo[channel].usFuelFlow;
}

void can_set_milage(char channel,INT32U val)
{
	if (s_astCanInfo[channel].ulMilage != val)
	{
		s_astCanInfo[channel].ulMilage = val;
	}
}

INT32U can_get_milage(char channel)

{
	return s_astCanInfo[channel].ulMilage;
}

void can_set_oilboxlevel(char channel,INT8U val)
{
	if (s_astCanInfo[channel].ucLevel != val)
	{
		s_astCanInfo[channel].ucLevel = val;
	}
}

INT8U can_get_oilboxlevel(char channel)
{
	return s_astCanInfo[channel].ucLevel;
}


void can_set_coolanttemperature(char channel,INT8S val)
{
	if (s_astCanInfo[channel].cCoolantTemperature != val)
	{
		s_astCanInfo[channel].cCoolantTemperature = val;
	}
}

INT8S can_get_coolanttemperature(char channel)
{
	return s_astCanInfo[channel].cCoolantTemperature;
}


void can_set_DPF(char channel,INT16U val)
{
	if (s_astCanInfo[channel].usDPF != val)
	{
		s_astCanInfo[channel].usDPF = val;
	}
}

INT16U can_get_DPF(char channel)
{
	return s_astCanInfo[channel].usDPF;
}

void can_set_SCROutletTemperature(char channel,INT16S val)
{
	if (s_astCanInfo[channel].sSCROutletTemperature != val)
	{
		s_astCanInfo[channel].sSCROutletTemperature = val;
	}
}

INT16S can_get_SCROutletTemperature(char channel)
{
	return s_astCanInfo[channel].sSCROutletTemperature;
}


void can_set_SCRInletTemperature(char channel,INT16S val)
{
	if (s_astCanInfo[channel].sSCRInletTemperature != val)
	{
		s_astCanInfo[channel].sSCRInletTemperature = val;
	}
}

INT16S can_get_SCRInletTemperature(char channel)
{
	return s_astCanInfo[channel].sSCRInletTemperature;
}


void can_set_intakevolume(char channel,INT16U val)
{
	if (s_astCanInfo[channel].usIntakeVolume != val)
	{
		s_astCanInfo[channel].usIntakeVolume = val;
	}
}

INT16U can_get_intakevolume(char channel)
{
	return s_astCanInfo[channel].usIntakeVolume;
}


void can_set_remain(char channel,INT8U val)
{
	if (s_astCanInfo[channel].ucRemain != val)
	{
		s_astCanInfo[channel].ucRemain = val;
	}
}

INT8U can_get_remain(char channel)
{
	return s_astCanInfo[channel].ucRemain;
}


void can_set_lowerNOx(char channel,INT16S val)
{
	if (s_astCanInfo[channel].sLowerNOx != val)
	{
		s_astCanInfo[channel].sLowerNOx = val;
	}
}

INT16S can_get_lowerNOx(char channel)
{
	return s_astCanInfo[channel].sLowerNOx;
}

void can_set_upperNOx(char channel,INT16S val)
{
	if (s_astCanInfo[channel].sUpperNOx != val)
	{
		s_astCanInfo[channel].sUpperNOx = val;
	}
}

INT16S can_get_upperNOx(char channel)
{
	return s_astCanInfo[channel].sUpperNOx;
}


void can_set_dtc_cnt(char channel,INT8U val)
{
	if (s_astCanInfo[channel].DTC_CNT != val)
	{
		s_astCanInfo[channel].DTC_CNT = val;
	}
}

INT8U can_get_dtc_cnt(char channel)
{
	return s_astCanInfo[channel].DTC_CNT;
}

void can_set_mil_sta(char channel,INT8U val)
{
	if (s_astCanInfo[channel].MIL_STA != val)
	{
		s_astCanInfo[channel].MIL_STA = val;
	}
}


INT8U can_get_mil_sta(char channel)
{
	return s_astCanInfo[channel].MIL_STA;
}


void can_set_dst_sta(char channel,INT16U val)
{
	if (s_astCanInfo[channel].DST_STA != val)
	{
		s_astCanInfo[channel].DST_STA = val;
	}
}

INT16U can_get_dst_sta(char channel)
{
	return s_astCanInfo[channel].DST_STA;
}

void can_set_drt_sta(char channel,INT16U val)
{
	if (s_astCanInfo[channel].DRT_STA != val)
	{
		s_astCanInfo[channel].DRT_STA = val;
	}
}

INT16U can_get_drt_sta(char channel)
{
	return s_astCanInfo[channel].DRT_STA;
}


void can_set_obd_pro(char channel,INT8U val)
{
	if (s_astCanInfo[channel].OBD_PRO != val)
	{
		s_astCanInfo[channel].OBD_PRO = val;
	}
}

INT8U can_get_obd_pro(char channel)
{
	return s_astCanInfo[channel].OBD_PRO;
}


void can_set_calid(char channel,INT8U idx,INT8U dat)
{
	if (idx >= CALID_LEN) return ;
	s_astCanInfo[channel].CALID[idx] = dat;
}

INT8U can_get_calid(char channel,void *pOut,int outbuflen)
{
	if ((pOut == 0) || (outbuflen < CALID_LEN))
	{
		return 0;
	}
	memset(pOut,0,outbuflen);
	memcpy(pOut,s_astCanInfo[channel].CALID,CALID_LEN);
	return CALID_LEN;
}



void can_set_cvn(char channel,void *pdat,int datlen)
{
	if ((pdat == 0) || (datlen == 0)) return ;

	//字母或数字组成 不足18位的 用字符'0'补足18位
	memset(s_astCanInfo[channel].CVN,'0',sizeof(s_astCanInfo[channel].CVN));
	memcpy(s_astCanInfo[channel].CVN,pdat,(datlen >= CVN_LEN) ? CVN_LEN : datlen);
}

INT8U can_get_cvn(char channel,void *pOut,int outbuflen)
{
	if ((pOut == 0) || (outbuflen < CVN_LEN))
	{
		return 0;
	}

	memset(pOut,0,outbuflen);
	memcpy(pOut,s_astCanInfo[channel].CVN,CVN_LEN);
	return CVN_LEN;
}


void can_set_vin(char channel,INT8U idx,INT8U dat)
{
	if (idx >= VIN_LEN) return ;
	s_astCanInfo[channel].VIN[idx] = dat;
}

INT8U can_get_vin(char channel,void *pOut,int outbuflen)
{
	if ((pOut == 0) || (outbuflen < VIN_LEN))
	{
		return 0;
	}
	memset(pOut,0,outbuflen);
	memcpy(pOut,s_astCanInfo[channel].VIN,VIN_LEN);
	return VIN_LEN;
}

void can_set_iupr(char channel,INT8U idx,INT8U dat)
{
	if (idx >= IUPR_LEN) return ;
	s_astCanInfo[channel].IUPR[idx] = dat;
}

INT8U can_get_iupr(char channel,void *pOut,int outbuflen)
{
	if ((pOut == 0) || (outbuflen < IUPR_LEN))
	{
		return 0;
	}
	memset(pOut,0,outbuflen);
	memcpy(pOut,s_astCanInfo[channel].IUPR,IUPR_LEN);
	return IUPR_LEN;
}

void can_set_dtc_buf(char channel,INT8U idx,INT8U dat)
{
	if (idx >= DTC_BUF_LEN) return ;
	s_astCanInfo[channel].DTC_BUF[idx] = dat;
}

INT8U can_get_dtc_buf(char channel,INT8U idx)
{
	if (idx >= DTC_BUF_LEN) return 0;
	return s_astCanInfo[channel].DTC_BUF[idx];
}


INT8U *can_get_dtc_buf_ptr(char channel)
{
	if (channel >= MAX_CAN_CNT) return (INT8U *)(s_astCanInfo[0].DTC_BUF);
	return (INT8U *)(s_astCanInfo[channel].DTC_BUF);
}








void OBD_Display(void)
{

}

unsigned int OBD_Hex_To_DTC(unsigned char tempa,unsigned char tempb)
{
	unsigned int buf;
	buf  = (unsigned int)((tempa>>4)&0x0F)<<24;
	buf |= (unsigned int)((tempa>>0)&0x0F)<<16;
	buf |= (unsigned int)((tempb>>4)&0x0F)<<8;
	buf |= (unsigned int)((tempb>>0)&0x0F)<<0;
	return buf;
}




