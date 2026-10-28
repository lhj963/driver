#include "GPS.h"




gps_calibration_time_callback gps_calibration_time_func = 0;
INT8U gps_calib_time_flag = 0;		//已校时标志

static GPS s_stGPS = {0};

GPS *get_gps_info_ptr(void)
{
	return &s_stGPS;
}

GpsAntStateE gps_get_ant_status(void)
{
	return s_stGPS.eAntStatus;
}


void gps_set_ant_status(GpsAntStateE val)
{
	s_stGPS.eAntStatus = val;
}



void reg_gps_calibration_time_callback_func(gps_calibration_time_callback pfunc)
{
	gps_calibration_time_func = pfunc;
}

/**
函数功能:统计子数组在源数组src中出现的频率
入口参数:
		pSrcBuf:源缓冲区
		uiSrcBufLen:源缓冲区大小
		pSubBuf:子缓冲区
		uiSubBufLen:子缓冲区大小
出口参数:
		无
返回值:返回子缓冲区中的内容 在 源缓冲区中 出现的次数
调用示例：FindSubArrayCnt("12345123",8,"123",3);
		执行结果 返回2   "123"在"12345123"中出现2次
 */
unsigned int FindSubArrayCnt(void *pSrcBuf,unsigned int uiSrcBufLen,
								void *pSubBuf,unsigned int uiSubBufLen)
{
	char *pSrc = (char *)pSrcBuf;
	char *pSub = (char *)pSubBuf;
	unsigned int cnt = 0;
	unsigned int i = 0;
	unsigned int j = 0;

	if ((pSrc == 0) || (pSub == 0) || (uiSrcBufLen == 0) || (uiSubBufLen == 0))
	{
		return 0;
	}

	for (i = 0; i < uiSrcBufLen; )
	{
		//查找到了第一个字符
		if (pSrc[i] == pSub[0])
		{
			//如果剩下的长度比子字符串长度还小 则退出
			if ((uiSrcBufLen - i) < uiSubBufLen)
			{
				break;
			}

			for (j = 1; j < uiSubBufLen; j++)
			{
				if (pSub[j] != pSrc[i + j])
				{
					break;
				}
			}
			//匹配到了子字符串
			if (j == uiSubBufLen)
			{
				cnt++;
				i += uiSubBufLen;
			}
			else
			{
				i++;
			}
		}
		else
		{
			i++;
		}
	}
	return cnt;
}


//获取定位星数
INT8U GetStartNum(void)
{
	return s_stGPS.start_num;
}

//获取GPS速度
INT16U GetGpsSpeed(void)
{
	return s_stGPS.usGpsSpeed;
}

void SetGpsSpeed(INT16U val)
{
	s_stGPS.usGpsSpeed = val;
}


INT16U GetAngle(void)
{
	return s_stGPS.usAngle;
}

void SetAngle(INT16U val)
{
	s_stGPS.usAngle = val;
}

INT16U GetGaoDu(void)
{
	return s_stGPS.usGaodu;
}

void SetGaoDu(INT16U val)
{
	s_stGPS.usGaodu = val;
}

INT8U GetEW(void)
{
	return s_stGPS.ucEW;
}

INT8U GetNS(void)
{
	return s_stGPS.ucNS;
}

//获取经度
INT32U GetLong(void)
{
	return s_stGPS.ulLong;
}

//获取纬度
INT32U GetLat(void)
{
	return s_stGPS.ulLat;
}

//经度
void SetLong(INT32U val)
{
	s_stGPS.ulLong = val;
}

//纬度
void SetLat(INT32U val)
{
	s_stGPS.ulLat = val;
}


void DispGpsInfo(void)
{
	DBG_Print(LEVEL5,"%c Lat:%u(%c) Long:%u(%c) GPSSpeed:%d\r\n"
				"PDOP:%d HDOP:%d VDOP:%d\r\n",
	((s_stGPS.ucPositionStatus == 'A') || (s_stGPS.ucPositionStatus == 'V')) ? s_stGPS.ucPositionStatus : 'V' ,
	s_stGPS.ulLat,
	((s_stGPS.ucNS == 'N') || (s_stGPS.ucNS == 'S')) ? s_stGPS.ucNS : 'N',
	s_stGPS.ulLong,
	((s_stGPS.ucEW == 'E') || (s_stGPS.ucEW == 'W')) ? s_stGPS.ucEW : 'E',
	s_stGPS.usGpsSpeed,s_stGPS.usPDOP,s_stGPS.usHDOP,s_stGPS.usVDOP);
}

/**************************************************************************
* 函  数: u32 GpsCvertLatLon(double value)
* 描  述: 处理经纬度值的转换
* 举  例: 
		  11808.0945转化为118.1349 * 1000000
* 入  参: float value:经度值/纬度值
* 出  参: void
* 返回值: u32 转换后的经纬度值
**************************************************************************/
static unsigned long GpsCvertLatLon(double value)
{
#if 1
	unsigned long temp = (unsigned long)(value * 100000);//11808 09450
	unsigned long ret = temp/10000000;		 //118部分
	unsigned long fen = (unsigned long)((temp - ret * 10000000)/100000);	   //08部分
	double fen1 = fen / 60.00;		 // 把08转化成分
	unsigned long miao = (unsigned long)(temp - ret * 10000000 - fen * 100000);// 09450部分
	double miao1 = miao / 6000000.00;//把09540部分转化成秒

	return (unsigned long)((ret + fen1 + miao1) * 1000000);
#else
	return 0;
#endif
}


int GGA_Analyze(void *buf)
{
	char *ptr = (char *)buf;
	char *pTemp = 0;
	char *pHead = 0;
	char *pTail = 0;
	char szTemp[24] = {0};
	unsigned char i = 0;
	unsigned int uiSectionCnt = 0;

	if (ptr == 0)
	{
		return -1;
	}

	pHead = strstr(ptr,"GGA");
	if (pHead == 0)
	{
		return -2;
	}
	pTail = strstr(pHead,"*");
	if (pTail == 0)
	{
		DBG_Print(LEVEL0,"<GGA_Analyze>not find *(%s)\r\n",ptr);
		return -3;
	}

	//逗号出现了几次 就表示有多少个字段
	uiSectionCnt = FindSubArrayCnt(pHead,pTail - pHead,",",1);

	for (i = 1; i <= uiSectionCnt; i++)
	{
		if (i == uiSectionCnt)
		{
			pTemp = GetSubString(pHead,",","*",szTemp,sizeof(szTemp) - 1);
		}
		else
		{
			pTemp = GetSubString(pHead,",",",",szTemp,sizeof(szTemp) - 1);
		}
		if (pTemp)
		{
			pHead = pTemp + 1;
		}
		else
		{
			break;
		}
		switch (i)
		{
		case 1:
		{
			DBG_Print(LEVEL7,"<GGA>UTC:%s\r\n",szTemp);
		}
		break;
		case 2:
		{
			DBG_Print(LEVEL7,"<GGA>Lat:%s\r\n",szTemp);


			//s_stGPS.ulLat = GpsCvertLatLon(atof(szTemp));//atof(szTemp) * 100000;//
		}
		break;
		case 3:
		{
			DBG_Print(LEVEL7,"<GGA>NS:%s\r\n",szTemp);
			s_stGPS.ucNS = szTemp[0];
		}
		break;
		case 4:
		{
			DBG_Print(LEVEL7,"<GGA>Long:%s\r\n",szTemp);
			//s_stGPS.ulLong = GpsCvertLatLon(atof(szTemp));
		}
		break;
		case 5:
		{
			DBG_Print(LEVEL7,"<GGA>EW:%s\r\n",szTemp);
			s_stGPS.ucEW = szTemp[0];
		}
		break;
		case 6:
		{
			DBG_Print(LEVEL7,"<GGA>Gps Status:%s\r\n",szTemp);
		}
		break;
		case 7:
		{
			DBG_Print(LEVEL7,"<GGA>Start num:%s\r\n",szTemp);
			s_stGPS.start_num = atoi(szTemp);
		}
		break;
		case 8:
		{
			DBG_Print(LEVEL7,"<GGA>HDOP:%s\r\n",szTemp);
		}
		break;
		case 9:	//海拔高度
		{
			DBG_Print(LEVEL7,"<GGA>haibagaodu:%s\r\n",szTemp);
			SetGaoDu(atoi(szTemp));
		}
		break;
		case 10:	//固定字符'M'
		{
			DBG_Print(LEVEL7,"<GGA>M:%s\r\n",szTemp);
		}
		break;
		case 11:	//地球椭球面相对大地水准面的高度
		{
			DBG_Print(LEVEL7,"<GGA>tuoqiumiangaodu:%s\r\n",szTemp);
		}
		break;
		case 12:	//固定字符'M'
		{
			DBG_Print(LEVEL7,"<GGA>M:%s\r\n",szTemp);
		}
		break;
		case 13:	//差分时间(从最近一次接收到差分信号开始的秒数，如果不是差分定位将为空)
		{
			DBG_Print(LEVEL7,"<GGA>Cha fen Time:%s\r\n",szTemp);
		}
		break;
		case 14:
		{
			DBG_Print(LEVEL7,"<GGA>Cha fen zhan ID:%s\r\n",szTemp);
		}
		break;
		default:break;
		}
	}

	return 0;
}

int GSA_Analyze(void *buf)
{
	char *ptr = (char *)buf;
	char *pTemp = 0;
	char *pHead = 0;
	char *pTail = 0;
	char szTemp[24] = {0};
	unsigned char i = 0;
	unsigned int uiSectionCnt = 0;

	if (ptr == 0)
	{
		return -1;
	}

	pHead = strstr(ptr,"GSA");
	if (pHead == 0)
	{
		return -2;
	}
	pTail = strstr(pHead,"*");
	if (pTail == 0)
	{
		DBG_Print(LEVEL0,"<GSA_Analyze>not find *(%s)\r\n",ptr);
		return -3;
	}

	//逗号出现了几次 就表示有多少个字段
	uiSectionCnt = FindSubArrayCnt(pHead,pTail - pHead,",",1);

	for (i = 1; i <= uiSectionCnt; i++)
	{
		if (i == uiSectionCnt)
		{
			pTemp = GetSubString(pHead,",","*",szTemp,sizeof(szTemp) - 1);
		}
		else
		{
			pTemp = GetSubString(pHead,",",",",szTemp,sizeof(szTemp) - 1);
		}
		if (pTemp)
		{
			pHead = pTemp + 1;
		}
		else
		{
			break;
		}
		switch (i)
		{
		case 1:
		{
			DBG_Print(LEVEL7,"<GSA>mode:%s\r\n",szTemp);
		}
		break;
		case 2:
		{
			DBG_Print(LEVEL7,"<GSA>type:%s\r\n",szTemp);

		}
		break;
		case 3:
		{
			DBG_Print(LEVEL7,"<GSA>PRN:%s\r\n",szTemp);
		}
		break;
		case 4:
		{
			DBG_Print(LEVEL7,"<GSA>PRN:%s\r\n",szTemp);
		}
		break;
		case 5:
		{
			DBG_Print(LEVEL7,"<GSA>PRN:%s\r\n",szTemp);
		}
		break;
		case 6:
		{
			DBG_Print(LEVEL7,"<GSA>PRN:%s\r\n",szTemp);
		}
		break;
		case 7:
		{
			DBG_Print(LEVEL7,"<GSA>PRN:%s\r\n",szTemp);
		}
		break;
		case 8:
		{
			DBG_Print(LEVEL7,"<GSA>PRN:%s\r\n",szTemp);
		}
		break;
		case 9:
		{
			DBG_Print(LEVEL7,"<GSA>PRN:%s\r\n",szTemp);
		}
		break;
		case 10:
		{
			DBG_Print(LEVEL7,"<GSA>PRN:%s\r\n",szTemp);
		}
		break;
		case 11:
		{
			DBG_Print(LEVEL7,"<GSA>PRN:%s\r\n",szTemp);
		}
		break;
		case 12:
		{
			DBG_Print(LEVEL7,"<GSA>PRN:%s\r\n",szTemp);
		}
		break;
		case 13:
		{
			DBG_Print(LEVEL7,"<GSA>PRN:%s\r\n",szTemp);
		}
		break;
		case 14:
		{
			DBG_Print(LEVEL7,"<GSA>PRN:%s\r\n",szTemp);
		}
		break;

		case 15:
		{
			DBG_Print(LEVEL7,"<GSA>PDOP:%s\r\n",szTemp);
			s_stGPS.usPDOP = atof(szTemp) * 10u;
		}
		break;
		case 16:
		{
			DBG_Print(LEVEL7,"<GSA>HDOP:%s\r\n",szTemp);
			s_stGPS.usHDOP = atof(szTemp) * 10u;
		}
		break;
		case 17:
		{
			DBG_Print(LEVEL7,"<GSA>VDOP:%s\r\n",szTemp);
			s_stGPS.usVDOP = atof(szTemp) * 10u;
		}
		break;

		default:break;
		}
	}

	return 0;

}


int GSV_Analyze(void *buf)
{
	char *ptr = (char *)buf;
	char *pTemp = 0;
	char *pHead = 0;
	char *pTail = 0;
	char szTemp[24] = {0};
	unsigned char i = 0;
	unsigned int uiSectionCnt = 0;

	if (ptr == 0)
	{
		return -1;
	}

	pHead = strstr(ptr,"GSV");
	if (pHead == 0)
	{
		return -2;
	}
	pTail = strstr(pHead,"*");
	if (pTail == 0)
	{
		DBG_Print(LEVEL0,"<GSV_Analyze>not find *(%s)\r\n",ptr);
		return -3;
	}

	//逗号出现了几次 就表示有多少个字段
	uiSectionCnt = FindSubArrayCnt(pHead,pTail - pHead,",",1);

	for (i = 1; i <= uiSectionCnt; i++)
	{
		if (i == uiSectionCnt)
		{
			pTemp = GetSubString(pHead,",","*",szTemp,sizeof(szTemp) - 1);
		}
		else
		{
			pTemp = GetSubString(pHead,",",",",szTemp,sizeof(szTemp) - 1);
		}
		
		if (pTemp)
		{
			pHead = pTemp + 1;
		}
		else
		{
			break;
		}

		switch (i)
		{
		case 1:
		{
			DBG_Print(LEVEL7,"<GSV>gsv cnt:%s\r\n",szTemp);
		}
		break;
		case 2:
		{
			DBG_Print(LEVEL7,"<GSV>gsv idx:%s\r\n",szTemp);

		}
		break;
		case 3:
		{
			DBG_Print(LEVEL7,"<GSV>visible star total num:%s\r\n",szTemp);
		}
		break;
		case 4:		//卫星号
		{
			DBG_Print(LEVEL7,"<GSV>star no.:%s\r\n",szTemp);

		}
		break;
		case 5:		//卫星仰角
		{
			DBG_Print(LEVEL7,"<GSV>star yangjiao:%s\r\n",szTemp);

		}
		break;
		case 6:		//卫星方位角
		{
			DBG_Print(LEVEL7,"<GSV>star fangweijiao:%s\r\n",szTemp);
		}
		break;
		case 7:		//信噪比
		{
			DBG_Print(LEVEL7,"<GSV>xinzaobi:%s\r\n",szTemp);
		}
		break;
		case 8:		//卫星号
		{
			DBG_Print(LEVEL7,"<GSV>star no.:%s\r\n",szTemp);

		}
		break;
		case 9:		//卫星仰角
		{
			DBG_Print(LEVEL7,"<GSV>star yangjiao:%s\r\n",szTemp);

		}
		break;
		case 10:		//卫星方位角
		{
			DBG_Print(LEVEL7,"<GSV>star fangweijiao:%s\r\n",szTemp);
		}
		break;
		case 11:		//信噪比
		{
			DBG_Print(LEVEL7,"<GSV>xinzaobi:%s\r\n",szTemp);
		}
		break;

		case 12:		//卫星号
		{
			DBG_Print(LEVEL7,"<GSV>star no.:%s\r\n",szTemp);

		}
		break;
		case 13:		//卫星仰角
		{
			DBG_Print(LEVEL7,"<GSV>star yangjiao:%s\r\n",szTemp);

		}
		break;
		case 14:		//卫星方位角
		{
			DBG_Print(LEVEL7,"<GSV>star fangweijiao:%s\r\n",szTemp);
		}
		break;
		case 15:		//信噪比
		{
			DBG_Print(LEVEL7,"<GSV>xinzaobi:%s\r\n",szTemp);
		}
		break;

		case 16:		//卫星号
		{
			DBG_Print(LEVEL7,"<GSV>star no.:%s\r\n",szTemp);

		}
		break;
		case 17:		//卫星仰角
		{
			DBG_Print(LEVEL7,"<GSV>star yangjiao:%s\r\n",szTemp);

		}
		break;
		case 18:		//卫星方位角
		{
			DBG_Print(LEVEL7,"<GSV>star fangweijiao:%s\r\n",szTemp);
		}
		break;
		case 19:		//信噪比
		{
			DBG_Print(LEVEL7,"<GSV>xinzaobi:%s\r\n",szTemp);
			s_stQJBL.s_DFGFTboxStatus.gps_signal = atoi(szTemp);
			
		}
		break;

		default:break;
		}
	}

	return 0;

}



/**
公历闰年能被4整除且不能被100整除的为闰年，平均每四年中会有一个闰年，
世纪年能被400整除的则是闰年，例如2000是闰年，而1900年不是闰年，
对于数值很大的年份，如果能够整除3200以及172800则是闰年
*/
char _is_leap_year(unsigned int year)
{
	unsigned char flag = 0;

	if (((year % 4) == 0) && (year % 100))
	{
		flag = 1;
	}

	if ((year % 400) == 0)
	{
		flag = 1;
	}
	return flag;
}

unsigned char leap_month_day[] = 
{0,31,29,31,30,31,30,31,31,30,31,30,31};

unsigned char no_leap_month_day[] = 
{0,31,28,31,30,31,30,31,31,30,31,30,31};


//year年month月day天 加 want_to_add_day 天 want_to_add_day 不能超过27
char _add_day(unsigned int *year,
			unsigned char *month,unsigned char *day,unsigned char want_to_add_day)
{
	char leap_year_flag = _is_leap_year(*year);	//闰年标志
	unsigned char cur_month_day = 0;		//当前月份的天数
	unsigned long after_add = *day + want_to_add_day;

	if ((*month < 1) || (*month > 12))
	{
		return 0;
	}

	if (leap_year_flag)
	{
		cur_month_day = leap_month_day[*month];
	}
	else
	{
		cur_month_day = no_leap_month_day[*month];
	}

	if (after_add > cur_month_day)
	{
		*day = after_add - cur_month_day;
		if ((*month + 1) > 12)
		{
			*month = 1;
			*year = *year + 1;
		}
		else
		{
			*month = *month + 1;
		}
	}
	else
	{
		*day = after_add;
	}


	return 0;
}

void gpsutc_to_btc(unsigned char *year,unsigned char *month,unsigned char *day,
						unsigned char *hour,unsigned char *min,unsigned char *sec)
{
	unsigned char yy = *year;
	unsigned char mm = *month;
	unsigned char dd = *day;
	unsigned char hh = *hour;
	//unsigned char mmin = *min;
	//unsigned char ss = *sec;
	unsigned int tempyear = 0;
	unsigned char tempmonth = 0;
	unsigned char tempday = 0;


	if ((hh + 8) >= 24)				//小时产生进位
	{
		*hour = hh + 8 - 24;		//处理小时

		tempyear = yy + 2000;
		tempmonth = mm;
		tempday = dd;

		_add_day(&tempyear,&tempmonth,&tempday,1);
		*year = tempyear - 2000;
		*month = tempmonth;
		*day = tempday;
	}
	else
	{
		*hour = hh + 8;
	}
}

int RMC_Analyze(void *buf)
{
	char *ptr = (char *)buf;
	char *pTemp = 0;
	char *pHead = 0;
	char *pTail = 0;
	char szTemp[24] = {0};
	unsigned char i = 0;
	unsigned int uiSectionCnt = 0;
	unsigned char gpsutc_year = 0;
	unsigned char gpsutc_month = 0;
	unsigned char gpsutc_day = 0;
	unsigned char gpsutc_hour = 0;
	unsigned char gpsutc_min = 0;
	unsigned char gpsutc_sec = 0;

	if (ptr == 0)
	{
		return -1;
	}

	pHead = strstr(ptr,"RMC");
	if (pHead == 0)
	{
		return -2;
	}
	pTail = strstr(pHead,"*");
	if (pTail == 0)
	{
		DBG_Print(LEVEL0,"<RMC_Analyze>not find *(%s)\r\n",ptr);
		return -3;
	}

	//逗号出现了几次 就表示有多少个字段
	uiSectionCnt = FindSubArrayCnt(pHead,pTail - pHead,",",1);

	for (i = 1; i <= uiSectionCnt; i++)
	{
		if (i == uiSectionCnt)
		{
			pTemp = GetSubString(pHead,",","*",szTemp,sizeof(szTemp) - 1);
		}
		else
		{
			pTemp = GetSubString(pHead,",",",",szTemp,sizeof(szTemp) - 1);
		}
		if (pTemp)
		{
			pHead = pTemp + 1;
		}
		else
		{
			break;
		}
		switch (i)
		{
		case 1:
		{
			DBG_Print(LEVEL7,"<RMC>UTC:%s(hhmmss)\r\n",szTemp);
			gpsutc_hour = 10 * (szTemp[0] - '0') + (szTemp[1] - '0');
			gpsutc_min = 10 * (szTemp[2] - '0') + (szTemp[3] - '0');
			gpsutc_sec = 10 * (szTemp[4] - '0') + (szTemp[5] - '0');
		}
		break;
		case 2:
		{
			DBG_Print(LEVEL7,"<RMC>Position Status:%s\r\n",szTemp);
			s_stGPS.ucPositionStatus = szTemp[0];
			if (IsPosition())
			{
				s_stGPS.position_time_cnt++;
			}
			else
			{
				s_stGPS.position_time_cnt = 0;
			}
		}
		break;
		case 3:
		{
			DBG_Print(LEVEL7,"<RMC>Lat:%s\r\n",szTemp);
			if (IsPosition()) s_stGPS.ulLat = GpsCvertLatLon(atof(szTemp));
		}
		break;
		case 4:
		{
			DBG_Print(LEVEL7,"<RMC>NS:%s\r\n",szTemp);
			if (IsPosition()) s_stGPS.ucNS = szTemp[0];
		}
		break;
		case 5:
		{
			DBG_Print(LEVEL7,"<RMC>Long:%s\r\n",szTemp);
			if (IsPosition()) s_stGPS.ulLong = GpsCvertLatLon(atof(szTemp));
		}
		break;
		case 6:
		{
			DBG_Print(LEVEL7,"<RMC>EW:%s\r\n",szTemp);
			if (IsPosition()) s_stGPS.ucEW = szTemp[0];
		}
		break;
		case 7:
		{
			DBG_Print(LEVEL7,"<RMC>Gps Speed:%s\r\n",szTemp);
			s_stGPS.usGpsSpeed = atof(szTemp) * 18.52;
		}
		break;
		case 8:
		{
			DBG_Print(LEVEL7,"<RMC>Angle:%s\r\n",szTemp);
			s_stGPS.usAngle = (INT16U)(atof(szTemp) * 128);
		}
		break;
		case 9:
		{
			DBG_Print(LEVEL7,"<RMC>Date(ddmmyy):%s\r\n",szTemp);

			gpsutc_day = 10 * (szTemp[0] - '0') + (szTemp[1] - '0');
			gpsutc_month = 10 * (szTemp[2] - '0') + (szTemp[3] - '0');
			gpsutc_year = 10 * (szTemp[4] - '0') + (szTemp[5] - '0');
		}
		break;
		case 10:	//磁偏角
		{
			DBG_Print(LEVEL7,"<RMC>cipianjiao:%s\r\n",szTemp);
		}
		break;
		case 11:	//磁偏角方向
		{
			DBG_Print(LEVEL7,"<RMC>cipianjiaofangxiang:%s\r\n",szTemp);
		}
		break;
		case 12:	//模式指示(A=自主定位，D=差分，E=估算，N=数据无效)
		{
			DBG_Print(LEVEL7,"<RMC>mode:%s\r\n",szTemp);
		}
		break;
		default:break;
		}
	}


	s_stGPS.year = gpsutc_year;
	s_stGPS.month = gpsutc_month;
	s_stGPS.day = gpsutc_day;
	s_stGPS.hour = gpsutc_hour;
	s_stGPS.min = gpsutc_min;
	s_stGPS.sec = gpsutc_sec;

	gpsutc_to_btc(&s_stGPS.year,&s_stGPS.month,&s_stGPS.day,
	&s_stGPS.hour,&s_stGPS.min,&s_stGPS.sec);

	if (gps_calib_time_flag == 0)
	{
		if (gps_calibration_time_func)
		{
			//定位40秒之后进行GPS校时
			if (IsPosition() && (s_stGPS.position_time_cnt >= 40))
			{
				gps_calibration_time_func(s_stGPS.year,s_stGPS.month,s_stGPS.day,
													s_stGPS.hour,s_stGPS.min,s_stGPS.sec);
				gps_calib_time_flag = 1;
			}

		}
	}

	return 0;
}

//$GPTXT,01,01,01,ANTENNA OPEN*25
void TXT_Analyze(void *buf)
{
	char *ptr = buf;

	if (strstr(ptr,"ANTENNA OPEN"))
	{
		s_stGPS.eAntStatus = E_GPS_ANT_OPEN;
	}
	else if (strstr(ptr,"ANTENNA OK"))
	{
		s_stGPS.eAntStatus = E_GPS_ANT_NORMAL;
	}
	else if (strstr(ptr,"ANTENNA SHORT"))
	{
		s_stGPS.eAntStatus = E_GPS_ANT_SHORT;
	}

	if (strstr(ptr,"ANT_OPEN"))
	{
		s_stGPS.eAntStatus = E_GPS_ANT_OPEN;
	}
	else if (strstr(ptr,"ANT_OK"))
	{
		s_stGPS.eAntStatus = E_GPS_ANT_NORMAL;
	}
	else if (strstr(ptr,"ANT_SHORT") || strstr(ptr,"ANT_ERR"))
	{
		s_stGPS.eAntStatus = E_GPS_ANT_SHORT;
	}

	if (strstr(ptr,"ANTSTATUS=OPEN"))
	{
		s_stGPS.eAntStatus = E_GPS_ANT_OPEN;
	}
	else if (strstr(ptr,"ANTSTATUS=OK"))
	{
		s_stGPS.eAntStatus = E_GPS_ANT_NORMAL;
	}
	else if (strstr(ptr,"ANTSTATUS=SHORT") || strstr(ptr,"ANTSTATUS=ERR"))
	{
		s_stGPS.eAntStatus = E_GPS_ANT_SHORT;
	}
}

int GPS_Analyze(void *buf)
{
	if (buf == 0) return -1;

	DBG_Print(LEVEL_GPS,"%s",(char *)buf);
	GSV_Analyze(buf);
	GGA_Analyze(buf);
	GSA_Analyze(buf);
	RMC_Analyze(buf);
	TXT_Analyze(buf);

	return 0;
}

int GPS_Init(int bps,int iParity)
{
	//GpsUsartInit( bps, iParity);
	return 0;
}

//是否定位
char IsPosition(void)
{
	return (s_stGPS.ucPositionStatus == 'A') ? 1 : 0;
}

void test_utc_to_btc(void)
{
	unsigned int tcnt = 0;
	unsigned int rlen = 0;
	unsigned int cnt = 0;
	unsigned int k = 0;

	unsigned char year = 0;
	unsigned char month = 0;
	unsigned char day = 0;
	unsigned char hour = 0;
	unsigned char min = 0;
	unsigned char sec = 0;

	unsigned char tyear = 0;
	unsigned char tmonth = 0;
	unsigned char tday = 0;
	unsigned char thour = 0;
	unsigned char tmin = 0;
	unsigned char tsec = 0;


	year = 20;
	for (rlen = 0; rlen < 12; rlen++)
	{
		for (cnt = 0; cnt < 31; cnt++)
		{
			for (k = 0; k < 24; k++)
			{
				year = 20;
				month = rlen + 1;
				day = cnt + 1;				
				if (day > leap_month_day[month])
				{
					day = leap_month_day[month];
				}
				hour = k;
				min = 59;
				sec = 59;
			
				tyear = year;
				tmonth = month;
				tday = day;
				thour = hour;
				tmin = min;
				tsec = sec;

				tcnt++;
				gpsutc_to_btc(&year,&month,&day,&hour,&min,&sec);
				DBG_Print(0,"(%d)%02d-%02d-%02d %02d:%02d:%02d\r\n"
				"%02d-%02d-%02d %02d:%02d:%02d\r\n",
				tcnt,
				tyear,tmonth,tday,thour,tmin,tsec,
				year,month,day,hour,min,sec);

			}
	

		}
	}
}


void gps_get_time(unsigned char time[6])
{
	if (time)
	{
		time[0] = s_stGPS.year;
		time[1] = s_stGPS.month;
		time[2] = s_stGPS.day;
		time[3] = s_stGPS.hour;
		time[4] = s_stGPS.min;
		time[5] = s_stGPS.sec;
	}
}


