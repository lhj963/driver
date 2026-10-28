#include "Xmodem.h"
#include "stdio.h"
#include "stdlib.h"
#include "string.h"


typedef struct tagXmodeTypeDef
{
	XMODE_SEND_PACK pSend;		//发送数据

#if __XMODEM_HOST__

	XMODE_DOWNLOAD_PROGRESS pProgress;		//进度
	XMODE_GET_DATA pGetData;	//获取数据
	char host_enter_xmodem_flag;	//主机进入xmodem流程标志
	char start_send_flag;		//主机开始发送数据标志
	char send_finish_flag;		//发送完成标志
	unsigned long already_send_len;	//已发送的字节数
	unsigned char bagid;
	unsigned int cur_send_data_size;	//正在发送的大小
	unsigned char tempbuf[1024 + 16];
#endif

#if __XMODEM_SLAVE__
	XMODE_RECV_FINISH pRecvFinish;	//接收完成回调函数
	XMODE_UNPACK_DATA pUnpackData;		//解析出一包数据的回调函数
	unsigned long already_recv_len; 	//已经接收到的字节数
	char recv_finish_flag;				//从机接收完成标志
	char slave_start_xmodem_flag;				//从机启动xmodem流程标志
	char slave_stop_handshake_flag;
#endif
}XmodeTypeDef;

XmodeTypeDef s_stXT = {0};


static const unsigned short crc16tab[256]= {
    0x0000,0x1021,0x2042,0x3063,0x4084,0x50a5,0x60c6,0x70e7,
    0x8108,0x9129,0xa14a,0xb16b,0xc18c,0xd1ad,0xe1ce,0xf1ef,
    0x1231,0x0210,0x3273,0x2252,0x52b5,0x4294,0x72f7,0x62d6,
    0x9339,0x8318,0xb37b,0xa35a,0xd3bd,0xc39c,0xf3ff,0xe3de,
    0x2462,0x3443,0x0420,0x1401,0x64e6,0x74c7,0x44a4,0x5485,
    0xa56a,0xb54b,0x8528,0x9509,0xe5ee,0xf5cf,0xc5ac,0xd58d,
    0x3653,0x2672,0x1611,0x0630,0x76d7,0x66f6,0x5695,0x46b4,
    0xb75b,0xa77a,0x9719,0x8738,0xf7df,0xe7fe,0xd79d,0xc7bc,
    0x48c4,0x58e5,0x6886,0x78a7,0x0840,0x1861,0x2802,0x3823,
    0xc9cc,0xd9ed,0xe98e,0xf9af,0x8948,0x9969,0xa90a,0xb92b,
    0x5af5,0x4ad4,0x7ab7,0x6a96,0x1a71,0x0a50,0x3a33,0x2a12,
    0xdbfd,0xcbdc,0xfbbf,0xeb9e,0x9b79,0x8b58,0xbb3b,0xab1a,
    0x6ca6,0x7c87,0x4ce4,0x5cc5,0x2c22,0x3c03,0x0c60,0x1c41,
    0xedae,0xfd8f,0xcdec,0xddcd,0xad2a,0xbd0b,0x8d68,0x9d49,
    0x7e97,0x6eb6,0x5ed5,0x4ef4,0x3e13,0x2e32,0x1e51,0x0e70,
    0xff9f,0xefbe,0xdfdd,0xcffc,0xbf1b,0xaf3a,0x9f59,0x8f78,
    0x9188,0x81a9,0xb1ca,0xa1eb,0xd10c,0xc12d,0xf14e,0xe16f,
    0x1080,0x00a1,0x30c2,0x20e3,0x5004,0x4025,0x7046,0x6067,
    0x83b9,0x9398,0xa3fb,0xb3da,0xc33d,0xd31c,0xe37f,0xf35e,
    0x02b1,0x1290,0x22f3,0x32d2,0x4235,0x5214,0x6277,0x7256,
    0xb5ea,0xa5cb,0x95a8,0x8589,0xf56e,0xe54f,0xd52c,0xc50d,
    0x34e2,0x24c3,0x14a0,0x0481,0x7466,0x6447,0x5424,0x4405,
    0xa7db,0xb7fa,0x8799,0x97b8,0xe75f,0xf77e,0xc71d,0xd73c,
    0x26d3,0x36f2,0x0691,0x16b0,0x6657,0x7676,0x4615,0x5634,
    0xd94c,0xc96d,0xf90e,0xe92f,0x99c8,0x89e9,0xb98a,0xa9ab,
    0x5844,0x4865,0x7806,0x6827,0x18c0,0x08e1,0x3882,0x28a3,
    0xcb7d,0xdb5c,0xeb3f,0xfb1e,0x8bf9,0x9bd8,0xabbb,0xbb9a,
    0x4a75,0x5a54,0x6a37,0x7a16,0x0af1,0x1ad0,0x2ab3,0x3a92,
    0xfd2e,0xed0f,0xdd6c,0xcd4d,0xbdaa,0xad8b,0x9de8,0x8dc9,
    0x7c26,0x6c07,0x5c64,0x4c45,0x3ca2,0x2c83,0x1ce0,0x0cc1,
    0xef1f,0xff3e,0xcf5d,0xdf7c,0xaf9b,0xbfba,0x8fd9,0x9ff8,
    0x6e17,0x7e36,0x4e55,0x5e74,0x2e93,0x3eb2,0x0ed1,0x1ef0
};

static unsigned short CheckCRC16(void *pdat,unsigned int len)
{
	unsigned char *buf = (unsigned char *)pdat;
    unsigned int counter = 0;
    unsigned short crc = 0;

    for ( counter = 0; counter < len; counter++)
    {
        crc = (crc<<8) ^ crc16tab[((crc>>8) ^ *(unsigned char *)buf++)&0x00FF];
    }
    return crc;
}

static void *_FindChar(void *pdat,unsigned int datlen,unsigned char ucObj)
{
	unsigned int i = 0;
	unsigned char *pSrc = (unsigned char *)pdat;

	if (datlen == 0) datlen = strlen((char *)pSrc);
	for (i = 0; i < datlen; i++)
	{
		if (*(pSrc+i) == ucObj) return (pSrc+i);
	}
	return 0;
}


#if __XMODEM_HOST__
unsigned char *PackData(unsigned char ucPackNum,void *pdat,unsigned int len)
{
	unsigned short crcResult = 0;
#if XMODEM_1K_EN
	s_stXT.tempbuf[0] = STX;
#endif
#if XMODEM_BASIC_EN
	s_stXT.tempbuf[0] = SOH; 
#endif
	s_stXT.tempbuf[1] = ucPackNum;
	s_stXT.tempbuf[2] = ~ucPackNum;


	if (len >= DATA_LEN)
	{
		memcpy(&(s_stXT.tempbuf[3]),pdat,DATA_LEN);
	}
	else
	{
		memcpy(&(s_stXT.tempbuf[3]),pdat,len);
		memset(&(s_stXT.tempbuf[3 + len]),0x1A,DATA_LEN - len);
	}

	crcResult = CheckCRC16((void *)(s_stXT.tempbuf + 3),DATA_LEN);
	s_stXT.tempbuf[3 + DATA_LEN] = crcResult >> 8;
	s_stXT.tempbuf[3 + DATA_LEN + 1] = crcResult & 0x00ff;	

	return s_stXT.tempbuf;
}

unsigned char *xmode_pack_data(unsigned char ucPackNum,void *pdat,unsigned int len)
{
	return PackData(ucPackNum,pdat,len);
}

static void _send_bag(void)
{
	if (s_stXT.pGetData)
	{
		s_stXT.cur_send_data_size = s_stXT.pGetData(s_stXT.already_send_len,
		DATA_LEN,s_stXT.tempbuf + 3,sizeof(s_stXT.tempbuf) - 3);
	}
	else
	{
		s_stXT.cur_send_data_size = 0;
	}

	if (s_stXT.cur_send_data_size)
	{
		xmode_pack_data((unsigned char)(s_stXT.bagid + 1),s_stXT.tempbuf + 3,s_stXT.cur_send_data_size);
		if (s_stXT.pSend) s_stXT.pSend(s_stXT.tempbuf,ONE_PACK_SIZE);
		//更新进度
		if (s_stXT.pProgress)
		{
			s_stXT.pProgress(s_stXT.already_send_len);
		}
	}
	else
	{
		//取不到数据就发送结束信号
		_send_end();
	}

}

void _send_end(void)
{
	unsigned char temp[2] = {0};

	if (s_stXT.pSend)
	{
		temp[0] = EOT;
		s_stXT.pSend(temp,1);
	}
	s_stXT.send_finish_flag = 1;
	s_stXT.host_enter_xmodem_flag = 0;
	//更新进度
	if (s_stXT.pProgress)
	{
		s_stXT.pProgress(s_stXT.already_send_len);
	}
	//DBG_Print(LEVEL3,"data send finish(last data len:%d)\r\n",s_stXT.cur_send_data_size);
}

//解析设备给予的应答
int xmode_analyze_device_answer(void *device_ack,unsigned int len)
{
	unsigned char *ptr = device_ack;
	int ret = -1;

	//主机还未进入xmodem模式 不进行解析
	if (s_stXT.host_enter_xmodem_flag == 0) return 2;
	if ((ptr == 0) || (len == 0)) return 1;

	if (s_stXT.start_send_flag == 0)	//起始标志
	{
		//开始发送文件标志
		if (_FindChar(ptr,len,XMODEM_SEND_FILE_START_FLAG))
		{
			s_stXT.start_send_flag = 1;

			_send_bag();
			ret = 0;
		}
	}
	else
	{
		//应答
		if (_FindChar(ptr,len,ACK))
		{
			s_stXT.bagid++;
			s_stXT.already_send_len += s_stXT.cur_send_data_size;
			if (s_stXT.cur_send_data_size < DATA_LEN)	//小于DATA_LEN说明数据已经取尽 最后一包了
			{
				_send_end();
				ret = 0;
			}
			else
			{
				_send_bag();
				ret = 0;
			}
		}
		else if (_FindChar(ptr,len,NAK))		//重发本包
		{
			_send_bag();
			ret = 0;
		}
	}

	return ret;
}

char is_xmode_send_finish(void)
{
	return s_stXT.send_finish_flag;
}

void xmode_host_start(void)
{
	s_stXT.host_enter_xmodem_flag = 1;
	s_stXT.send_finish_flag = 0;
	s_stXT.bagid = 0;
	s_stXT.already_send_len = 0;
	s_stXT.start_send_flag = 0;
}

void xmode_host_stop(void)
{
	s_stXT.host_enter_xmodem_flag = 0;
}


#endif

#if __XMODEM_SLAVE__
static int is_xmode_pack_ok(void *pHead)
{
	unsigned int calccrc = 0;
	unsigned int realcrc = 0;
	unsigned char *ptr = (INT8U *)pHead;

	realcrc = (ptr[3 + DATA_LEN] << 8) + ptr[3 + DATA_LEN + 1];
	calccrc = CheckCRC16(ptr + 3,DATA_LEN);

	//DBG_Print(0,"<CheckPackIsOk>calc crc:%04X real crc:%04X\r\n",calccrc,realcrc);
	if (realcrc == calccrc)
	{
		return 1;
	}
	return 0;
}

static void _send_ack(void)
{
	if (s_stXT.pSend)
	{
		unsigned char temp[2] = {0};
		temp[0] = ACK;
		s_stXT.pSend(temp,1);
	}
}

static void _send_nak(void)
{
	if (s_stXT.pSend)
	{
		unsigned char temp[2] = {0};
		temp[0] = NAK;
		s_stXT.pSend(temp,1);
	}
}

//发送握手信息 连接主机
char xmode_handshake_to_host(void)
{
	unsigned char temp[2] = {0};

	if ((s_stXT.slave_start_xmodem_flag == 0) || s_stXT.slave_stop_handshake_flag) return 1;
	if (s_stXT.pSend)
	{
		temp[0] = XMODEM_SEND_FILE_START_FLAG;
		s_stXT.pSend(temp,1);
		return 0;
	}
	return 2;
}

int xmode_analyze_host_answer(void *buf,unsigned int len)
{
	char *ptr = 0;
	char *headptr = 0;
	unsigned int rxlen = 0;

	//从机没有启动xmodem流程 不进行解析
	if (s_stXT.slave_start_xmodem_flag == 0)
	{
		return -1;
	}

	ptr = (char *)buf;
	rxlen = len;
	if (rxlen >= ONE_PACK_SIZE)
	{
		headptr = (char *)_FindChar(ptr,rxlen,STX);
		if (headptr)
		{
			if (is_xmode_pack_ok(headptr))
			{
				//收到了正确的包 就停止发送握手信息
				s_stXT.slave_stop_handshake_flag = 1;
				if (s_stXT.pUnpackData)
				{
					s_stXT.pUnpackData(headptr + 3,DATA_LEN);
					s_stXT.already_recv_len += DATA_LEN;
				}
				_send_ack();
				return 0;		//解析成功返回0
			}
			else
			{
				_send_nak();
			}
		}
	}
	else if ((ptr[0] == EOT) && (rxlen == 1))	//结束
	{
		s_stXT.recv_finish_flag = 1;
		if (s_stXT.pRecvFinish)
		{
			s_stXT.pRecvFinish();
		}
	}
	return 1;
}


void xmode_set_recv_finish_callback(XMODE_RECV_FINISH pCall)
{
	s_stXT.pRecvFinish = pCall;
}

char is_xmode_recv_finish(void)
{
	return s_stXT.recv_finish_flag;
}


void xmode_slave_start(void)
{
	s_stXT.slave_start_xmodem_flag = 1;
	s_stXT.slave_stop_handshake_flag = 0;
}

void xmode_slave_stop(void)
{
	s_stXT.slave_start_xmodem_flag = 0;
	s_stXT.slave_stop_handshake_flag = 1;
}


#endif


int xmode_init(XMODE_SEND_PACK pSend,XMODE_GET_DATA pGetData,
					XMODE_DOWNLOAD_PROGRESS pProgress,XMODE_UNPACK_DATA pUnpackData)
{
	memset(&s_stXT,0,sizeof(s_stXT));

	s_stXT.pSend = pSend;
#if __XMODEM_HOST__
	s_stXT.pGetData = pGetData;
	s_stXT.pProgress = pProgress;
#endif

#if __XMODEM_SLAVE__
	s_stXT.pUnpackData = pUnpackData;
#endif
	return 0;
}







