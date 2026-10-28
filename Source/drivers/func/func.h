#ifndef __FUNC_H__
#define __FUNC_H__
#ifdef __cplusplus
extern "C" {
#endif

#include "stdio.h"
#include "stdlib.h"
#include "string.h"


#define ARRAY_ELEMENT_CNT(ary) (sizeof(ary) / sizeof(ary[0]))

extern INT16U get_avg_by_throw_away_big_val(INT16U *psrc,INT16U src_cnt,INT16U throw_away_cnt);

extern char is_bcd_time_format_ok(INT8U bcd_time[6]);

extern char is_time_format_ok(INT8U time[6]);

extern int timecmp(INT8U time1[6],INT8U time2[6]);

//判断目标时间desTime 是否介于起始时间和结束时间之内 包含起始时间和结束时间
//201911333333  202001  20200232332233
extern char is_between_time(INT8U desTime[6],INT8U start_time[6],INT8U end_time[6]);

//计算两个时间直接的间隔有多少秒
extern unsigned int two_time_inv(INT8U start_time[6],INT8U end_time[6]);


extern int IsObjNULL(void *pdat,INT32U len);
extern INT8U XOR_Check(INT8U *pdat,INT32U len);
extern INT8U CommSumCheckCode(void *pdat,INT32U len);

extern char *GetSubString(char *str,char *pSubStr1,char *pSubStr2,char *pOutBuf,unsigned int outbuflen);
extern void *ReverseFindSubStr(void *pSrc,int ulSrcLen,void *pDes,int ulDesLen);

extern int HexStrToArray(INT8U *str,INT8U *pdat,INT32U pdatlen);

extern INT16U byte_to_u16(INT8U D0,INT8U D1);
extern INT32U byte_to_u32(INT8U D0,INT8U D1,INT8U D2,INT8U D3);


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
extern int CreateQueue(int Qnum,void *ptr,INT32U ulOneUnitDataSize,INT32U cnt);

/**
函数功能:入队 将buf指针所指的内容 拷贝到队列中
入口参数:
	Qnum:队列编号
	buf:入队的缓冲区
出口参数:
	无
返回值:

*/
extern int QueueIn(INT8U Qnum,void *buf);

//获取队列入队的元素个数
extern INT32U GetQueueElementCnt(INT8U Qnum);

//出队
extern int QueueOut(INT8U Qnum,void *buf);

extern void *QueueGetCurMsg(INT8U Qnum);

extern int QueueMsgDealOk(INT8U Qnum);





#ifdef __cplusplus
}
#endif

#endif


