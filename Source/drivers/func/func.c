#include "func.h"

char is_byte_in_array(INT8U src,INT8U *pdat,unsigned int len)
{
	unsigned int i = 0;

	for (i = 0; i < len; i++)
	{
		if (src == pdat[i])
		{
			return 1;
		}
	}
	return 0;
}

INT16U get_avg_by_throw_away_big_val(INT16U *psrc,INT16U src_cnt,INT16U throw_away_cnt)
{
	INT16U i = 0;
	INT16U j = 0;
	INT16U max_val = 0;
	INT16U min_val = 0;
	INT32U sum = 0;
	INT8U un_idx[16] = {0};
	INT8U un_idx_cnt = 0;

	//step 1: throw away the max val
	for (i = 0; i < throw_away_cnt; i++)
	{
		max_val = 0;
		for (j = 0; j < src_cnt; j++)
		{
			if (is_byte_in_array(j,un_idx,un_idx_cnt) == 0)
			{
				if (psrc[j] > max_val)
				{
					max_val = psrc[j];
					un_idx[un_idx_cnt] = j;
				}
			}
		}
		un_idx_cnt++;
	}

	//calc avg val
	min_val = 0xFFFF;
	for (i = 0; i < src_cnt; i++)
	{
		if (is_byte_in_array(i,un_idx,un_idx_cnt) == 0)
		{
			sum += psrc[i];

			if (min_val >= psrc[i])
			{
				min_val = psrc[i];
			}
		}
	}

	//throw away the min val
	if ((src_cnt - throw_away_cnt) > 1)
	{
		sum -= min_val;
		return (sum / (src_cnt - throw_away_cnt - 1));
	}
	else
	{
		return (sum / (src_cnt - throw_away_cnt));
	}
}


char is_bcd_time_format_ok(INT8U bcd_time[6])
{
	INT8U time[6] = {0};

	memcpy(time,bcd_time,6);

	//年是否合法
	if (time[0] > 0x99)
	{
		return 0;
	}
	//月是否合法
	if ((time[1] > 0x12) || (time[1] == 0))
	{
		return 0;
	}
	//日是否合法
	if ((time[2] > 0x31) || (time[2] == 0))
	{
		return 0;
	}
	//时是否合法
	if (time[3] > 0x23)
	{
		return 0;
	}

	//分是否合法
	if (time[4] > 0x59)
	{
		return 0;
	}

	//秒是否合法
	if (time[5] > 0x59)
	{
		return 0;
	}

	return 1;
}


char is_time_format_ok(INT8U time[6])
{
	//年是否合法 年小于22年 时间也属于错误
	if ((time[0] > 60) || (time[0] < 22))
	{
		return 0;
	}
	//月是否合法
	if ((time[1] > 12) || (time[1] == 0))
	{
		return 0;
	}
	//日是否合法
	if ((time[2] > 31) || (time[2] == 0))
	{
		return 0;
	}
	//时是否合法
	if (time[3] > 23)
	{
		return 0;
	}

	//分是否合法
	if (time[4] > 59)
	{
		return 0;
	}

	//秒是否合法
	if (time[5] > 59)
	{
		return 0;
	}

	return 1;
}

int timecmp(INT8U time1[6],INT8U time2[6])
{
	char buf1[16] = {0};
	char buf2[16] = {0};
	int ret1 = 0;

	snprintf(buf1,sizeof(buf1),"%02d%02d%02d%02d%02d%02d",time1[0],time1[1],time1[2],time1[3],time1[4],time1[5]);
	snprintf(buf2,sizeof(buf2),"%02d%02d%02d%02d%02d%02d",time2[0],time2[1],time2[2],time2[3],time2[4],time2[5]);

	ret1 = memcmp(buf1,buf2,12);
	return ret1;
}


//判断目标时间desTime 是否介于起始时间和结束时间之内 包含起始时间和结束时间
//201911333333  202001  20200232332233
char is_between_time(INT8U desTime[6],INT8U start_time[6],INT8U end_time[6])
{
	char buf1[16] = {0};
	char buf2[16] = {0};
	char buf3[16] = {0};
	int ret1 = 0;
	int ret2 = 0;

	if ((is_time_format_ok(desTime) == 0)
		|| (is_time_format_ok(start_time) == 0)
		|| (is_time_format_ok(end_time) == 0)
	)
	{
		return 0;
	}

	snprintf(buf1,sizeof(buf1),"%02d%02d%02d%02d%02d%02d",desTime[0],desTime[1],desTime[2],desTime[3],desTime[4],desTime[5]);
	snprintf(buf2,sizeof(buf2),"%02d%02d%02d%02d%02d%02d",start_time[0],start_time[1],start_time[2],start_time[3],start_time[4],start_time[5]);
	snprintf(buf3,sizeof(buf3),"%02d%02d%02d%02d%02d%02d",end_time[0],end_time[1],end_time[2],end_time[3],end_time[4],end_time[5]);

	ret1 = memcmp(buf1,buf2,12);
	ret2 = memcmp(buf1,buf3,12);

	if ((ret1 >= 0) && (ret2 <= 0))
	{
		return 1;
	}
	return 0;
}

#include "time.h"

//计算两个时间直接的间隔有多少秒
unsigned int two_time_inv(INT8U start_time[6],INT8U end_time[6])
{
	struct tm time_cha;
	unsigned long t1 = 0;

	struct tm time_cha1;
	unsigned long t2 = 0;

	if ((is_time_format_ok(start_time) == 0) || (is_time_format_ok(end_time) == 0))
	{
		return 0;
	}

	time_cha.tm_year = (start_time[0] + 2000) - 1900; //tm结构记录年为实际-1900
	time_cha.tm_mon = start_time[1] - 1;
	time_cha.tm_mday = start_time[2];
	time_cha.tm_hour = start_time[3];
	time_cha.tm_min = start_time[4];
	time_cha.tm_sec = start_time[5];
	t1 = mktime(&time_cha);//获得从1970年1月1日0时0分0秒以来过去的时间，秒

	time_cha1.tm_year = (end_time[0] + 2000) - 1900; //tm结构记录年为实际-1900
	time_cha1.tm_mon = end_time[1] - 1;
	time_cha1.tm_mday = end_time[2];
	time_cha1.tm_hour = end_time[3];
	time_cha1.tm_min = end_time[4];
	time_cha1.tm_sec = end_time[5];
	t2 = mktime(&time_cha1);//获得从1970年1月1日0时0分0秒以来过去的时间，秒

	return (t2 - t1);
}


//判断一个对象是否为空:判断标准 只要包含一个不是0 或者 0xFF的数据 就是不为空
int IsObjNULL(void *pdat,INT32U len)
{
	INT32U i = 0;
	INT8U temp = 0;

	for (i = 0; i < len; i++)
	{
		temp = *((INT8U *)pdat + i);
		
		if ((temp != 0) && (temp != 0xFF))
		{
			return -1;
		}
	}
	return 0;
}


INT8U XOR_Check(INT8U *pdat,INT32U len)
{
	INT32U i = 0;
	INT8U temp = pdat[0];

	if (len == 1) return pdat[0];
	
	for (i = 1; i < len; i++)
	{
		temp ^= pdat[i];
	}
	return temp;
}

INT8U CommSumCheckCode(void *pdat,INT32U len)
{
	return XOR_Check(pdat,len);
}

/**
函数功能：获取pSubStr1和pSubStr2之间的字符串 
入口参数:
		str:源字符串
		pSubStr1:起始子字符串
		pSubStr2:结尾子字符串
		outbuflen:传入的缓冲区大小
出口参数:
		pOutBuf:调用者传入的缓冲区 用于接收pSubStr1与pSubStr2之间的内容
返回值:如果存在则返回pSubStr1的指针 否则返回NULL
调用示例：GetSubString("<ServerIP:192.168.1.19>","<ServerIP:",">",sub);
		执行结果：sub = "192.168.1.19"
 */
char *GetSubString(char *str,char *pSubStr1,char *pSubStr2,char *pOutBuf,unsigned int outbuflen)
{
	char *pTemp1 = 0;
	char *pTemp2 = 0;
	unsigned int templen = 0;

	if ((str == 0) || (pSubStr1 == 0) || (pOutBuf == 0) || (outbuflen == 0))
	{
		return 0;
	}

	pTemp1 = strstr(str,pSubStr1);
	//未找到第一个字符串
	if (pTemp1 == 0) return 0;

	//如果第二个子字符串传入的是0 或者 为空值 那么返回结果就默认为取第一个字符串到结尾之间的数据
	if (pSubStr2 && strlen(pSubStr2))
	{
		pTemp2 = strstr(pTemp1 + strlen((char *)pSubStr1),pSubStr2);
	}
	else
	{
		pTemp2 = str + strlen(str);
	}
	if (pTemp2)
	{
		templen = pTemp2 - (pTemp1 + strlen((char *)pSubStr1));
		templen = (outbuflen > templen) ? templen : (outbuflen - 1);
		memset(pOutBuf,0,outbuflen);
		if (templen) memcpy(pOutBuf,pTemp1 + strlen((char *)pSubStr1),templen);

		return pTemp1;
	}
	return 0;
}


/**
函数功能:从pSrc缓冲区中 反方向查找pDes目标串
人口参数:pSrc 源缓冲区
		ulSrcLen 源缓冲区长度
		pDes 目标字符串
		ulDesLen 目标字符串长度
出口参数:无
返回值:查找成功 返回目标串头指针 查找失败 返回NULL
说明:
源缓冲区 aucSrc[] = "\x55\x32\x33\x00\x34\x33\x00\x34";
目标缓冲区 aucDes[] = "\x33\x00\x34";
	ReverseMemstr(aucSrc,8,"\x00\x34",2);
	执行结果返回aucSrc+6
*/
void *ReverseFindSubStr(void *pSrc,int ulSrcLen,void *pDes,int ulDesLen)
{
	INT32S i = 0;
	INT32S j = 0;
	INT8U *pSource = (INT8U *)pSrc;
	INT8U *pTarget = (INT8U *)pDes;

	if ((pSrc == 0) || (ulSrcLen == 0)
		|| (pDes == 0) || (ulDesLen == 0))
	{
		return 0;
	}

	for (i = (ulSrcLen - 1); i >= 0; i--)
	{
		//找到第一个字节
		if (pSource[i] == *pTarget)
		{
			for (j = 0; j < ulDesLen; j++)
			{
				if (
					((i + j) >= ulSrcLen)
					|| (pSource[i + j] != pTarget[j])
					)
				{
					break;
				}
			}
			if (j == ulDesLen)
			{
				return (pSource + i);
			}
		}
	}

	return 0;
}


/**

  返回值：0 转换成功
		非0 转换失败
"89AF3300" 转换结果为 0x89af3300 保存在result中
*/
INT32U StrToHex(INT8U *str,INT8U len,INT32U *result)
{
	INT32U dat = 0;
	INT8U temp = 0;
	INT8U i = 0;
	INT8U *pStr = str;

	if (str == 0) return 1;
	if ((str[0] == '0') && ((str[1] == 'x') || (str[1] == 'X')))
	{
		pStr = str + 2;
	}

	if (len == 0)	//如果等于零 表示传入的是'\0'结尾的字符串
	{
		len = strlen((char *)pStr);
	}
	for (i = 0; i < len; i++)
	{
		
		dat <<= 4;
		if ((pStr[i] >= '0') && (pStr[i] <= '9'))
		{
			temp = pStr[i] - '0';
		}
		else if ((pStr[i] >= 'a') && (pStr[i] <= 'f'))
		{
			temp = pStr[i] - 'a' + 10;
		}
		else if ((pStr[i] >= 'A') && (pStr[i] <= 'F'))
		{
			temp = pStr[i] - 'A' + 10;
		}
		else		//不合法的字符
		{
			return 2;
		}
		dat |= temp;
	}
	if (result) *result = dat;
	return 0;
}

int IsHexChar(INT8U ch)
{
	if (((ch >= '0') && (ch <= '9')) || ((ch >= 'a') && (ch <= 'f')) || ((ch >= 'A') && (ch <= 'F')))
	{
		return 1;
	}
	return 0;
}

/**
*str = "0203ed"
或者
*str = "02 03 ed";

pdat[0] = 0x02;pdat[1] = 0x03;pdat[2] = 0xed;

返回值：3

返回值小于或等于零 表示转换错误
*/
int HexStrToArray(INT8U *str,INT8U *pdat,INT32U pdatlen)
{
	INT8U aucTemp[3] = {0};
	INT8U ucTempLen = 0;
	INT32U len = 0;
	if (str == 0) return -1;

	while (1)
	{
		if (*str == 0)
		{
			break;
		}
		else if (!IsHexChar(*str))
		{
			
		}
		else
		{
			aucTemp[ucTempLen++] = *str;
			if (ucTempLen == 2)
			{
				INT32U dat = 0;

				if (StrToHex(aucTemp,0,&dat) == 0)
				{
					pdat[len++] = dat;
					if (pdatlen && (len >= pdatlen)) break;
				}
				ucTempLen = 0;
			}
		}
		str++;
	}
	return len;
}


INT32U byte_to_u32(INT8U D0,INT8U D1,INT8U D2,INT8U D3)
{
	return ((D0 << 24) + (D1 << 16) + (D2 << 8) + D3);
}

INT16U byte_to_u16(INT8U D0,INT8U D1)
{
	return byte_to_u32(0,0,D0,D1);
}


#define MAX_Q_CNT 8

typedef struct tagQueue
{
	void *ptr;		//队列缓冲区
	INT32U ulWrite;
	INT32U ulRead;

	INT32U ulOneUnitDataSize;	//一个数据单元的大小
	INT32U ulTotalCnt;			//总共有多少个数据单元
}Queue;

static Queue s_astQ[MAX_Q_CNT] = {0};


int FindFreeQueue(void)
{
	INT8U i = 0;

	for (i = 0; i < MAX_Q_CNT; i++)
	{
		if (s_astQ[i].ptr == 0)
		{
			return i;
		}
	}
	return -1;
}

/**
函数功能:入队 将buf指针所指的内容 拷贝到队列中
入口参数:
	Qnum:队列编号 所有队列编号不能重复
	ptr:队列缓冲区
	ulOneUnitDataSize:一个数据单元的大小
	cnt:数据单元的总个数
出口参数:
	无
返回值:返回队列编号 小于0 则创建队列失败
*/
int CreateQueue(int Qnum,void *ptr,INT32U ulOneUnitDataSize,INT32U cnt)
{
	int idx = 0;

	//检查参数
	if ((ptr == 0) || (ulOneUnitDataSize == 0) || (cnt == 0))
	{
		return -1;
	}

	if (Qnum < 0)
	{
		idx = FindFreeQueue();
		if (idx < 0)
		{
			return -2;
		}
	}
	else
	{
		idx = Qnum;
		if ((idx >= MAX_Q_CNT) || s_astQ[idx].ptr)
		{
			return -2;
		}
	}

	memset(s_astQ + idx,0,sizeof(s_astQ[idx]));
	s_astQ[idx].ptr = ptr;
	s_astQ[idx].ulOneUnitDataSize = ulOneUnitDataSize;
	s_astQ[idx].ulTotalCnt = cnt;

	return idx;
}

/**
函数功能:入队 将buf指针所指的内容 拷贝到队列中
入口参数:
	Qnum:队列编号
	buf:入队的缓冲区
出口参数:
	无
返回值:

*/
int QueueIn(INT8U Qnum,void *buf)
{
	INT32U idx = 0;

	//检查参数
	if ((buf == 0) || (Qnum >= MAX_Q_CNT))
	{
		return -1;
	}

	if ((s_astQ[Qnum].ptr == 0) || (s_astQ[Qnum].ulOneUnitDataSize == 0) || 
	(s_astQ[Qnum].ulTotalCnt == 0))
	{
		return -2;
	}

	//判断队列是否满了
	if (s_astQ[Qnum].ulWrite >= (s_astQ[Qnum].ulRead + s_astQ[Qnum].ulTotalCnt))
	{
		return -3;
	}

	idx = s_astQ[Qnum].ulWrite % s_astQ[Qnum].ulTotalCnt;
	DBG_Print(LEVEL3,"Queue%d Msg In(idx:%d)\r\n",Qnum,idx);
	memcpy((INT8U *)(s_astQ[Qnum].ptr) + idx * s_astQ[Qnum].ulOneUnitDataSize,buf,s_astQ[Qnum].ulOneUnitDataSize);
	s_astQ[Qnum].ulWrite++;

	return 0;
}

//获取队列入队的元素个数
INT32U GetQueueElementCnt(INT8U Qnum)
{
	//检查参数
	if (Qnum >= MAX_Q_CNT)
	{
		return 0;
	}

	if (s_astQ[Qnum].ulWrite < s_astQ[Qnum].ulRead)
	{
		s_astQ[Qnum].ulWrite = s_astQ[Qnum].ulRead;
		return 0;
	}

	return (s_astQ[Qnum].ulWrite - s_astQ[Qnum].ulRead);
}

//出队
int QueueOut(INT8U Qnum,void *buf)
{
	INT32U idx = 0;

	//检查参数
	if (Qnum >= MAX_Q_CNT)
	{
		return -1;
	}

	if ((s_astQ[Qnum].ptr == 0) || (s_astQ[Qnum].ulOneUnitDataSize == 0) || 
	(s_astQ[Qnum].ulTotalCnt == 0))
	{
		return -2;
	}

	//判断队列是否为空
	if (GetQueueElementCnt(Qnum) == 0)
	{
		return -3;
	}

	idx = s_astQ[Qnum].ulRead % s_astQ[Qnum].ulTotalCnt;
	DBG_Print(LEVEL3,"Queue%d Msg Out(idx:%d)\r\n",Qnum,idx);
	if (buf) memcpy(buf,(INT8U *)(s_astQ[Qnum].ptr) + idx * s_astQ[Qnum].ulOneUnitDataSize,s_astQ[Qnum].ulOneUnitDataSize);
	QueueMsgDealOk(Qnum);

	return 0;
}



//出队不自动加读指针
void *QueueGetCurMsg(INT8U Qnum)
{
	INT32U idx = 0;

	//检查参数
	if (Qnum >= MAX_Q_CNT)
	{
		return 0;
	}

	if ((s_astQ[Qnum].ptr == 0) || (s_astQ[Qnum].ulOneUnitDataSize == 0) || 
	(s_astQ[Qnum].ulTotalCnt == 0))
	{
		return 0;
	}

	//判断队列是否为空
	if (GetQueueElementCnt(Qnum) == 0)
	{
		return 0;
	}

	idx = s_astQ[Qnum].ulRead % s_astQ[Qnum].ulTotalCnt;

	return (INT8U *)(s_astQ[Qnum].ptr) + idx * s_astQ[Qnum].ulOneUnitDataSize;
}

//通知队列 出队结束
int QueueMsgDealOk(INT8U Qnum)
{
	if (s_astQ[Qnum].ulRead < s_astQ[Qnum].ulWrite)
	{
		DBG_Print(LEVEL3,"Queue%d Msg(idx:%u) Deal Finish.\r\n",Qnum,s_astQ[Qnum].ulRead);
		s_astQ[Qnum].ulRead++;
	}
	return 0;
}




