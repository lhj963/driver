#ifndef __IIC_H__
#define __IIC_H__
#ifdef __cplusplus
extern "C" {
#endif


typedef void (*DelayFunc)(unsigned int);
typedef void (*SetSDAFunc)(unsigned int);
typedef void (*SetSCLFunc)(unsigned int);
typedef unsigned char (*ReadSDAFunc)(void);
typedef void (*SetSDAOutputFunc)(void);
typedef void (*SetSDAInputFunc)(void);
typedef void (*SetSCLOutputFunc)(void);


extern void IIC_Init(int num,
					DelayFunc pDelayFunc,
					SetSDAFunc pSetSDAFunc,
					SetSCLFunc pSetSCLFunc,
					ReadSDAFunc pReadSDAFunc,
					SetSDAOutputFunc pSetSDAOutputFunc,
					SetSDAInputFunc pSetSDAInputFunc,
					SetSCLOutputFunc pSetSCLOutputFunc
				);

//IIC发送一个字节
//返回从机有无应答
//1，有应答
//0，无应答			  
extern void IIC_Send_Byte(int num,unsigned char txd);

//读1个字节，ack=1时，发送ACK，ack=0，发送nACK   
extern unsigned char IIC_Read_Byte(int num,unsigned char ack);


//产生IIC起始信号
extern void IIC_Start(int num);

//产生IIC停止信号
extern void IIC_Stop(int num);
//等待应答信号到来
//返回值：1，接收应答失败
//        0，接收应答成功
extern unsigned char IIC_Wait_Ack(int num);


//dev_write_addr 器件写地址  器件读地址=器件写地址 | 1;
extern unsigned int IIC_Read(int num,INT8U dev_write_addr,unsigned int intel_addr,unsigned int readlen,void *buf,unsigned int buflen);
extern unsigned char IIC_Write(int num,INT8U dev_write_addr,unsigned int addr,void *pdat,unsigned int len);



#ifdef __cplusplus
}
#endif
#endif

