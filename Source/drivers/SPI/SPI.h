#ifndef __SPI_H__
#define __SPI_H__
#ifdef __cplusplus
extern "C" {
#endif

extern void SPI1_Init(void);
extern void SPI2_Init(void);

//SPI 速度设置函数
//SpeedSet:
//SPI_BaudRatePrescaler_2   2分频   
//SPI_BaudRatePrescaler_8   8分频   
//SPI_BaudRatePrescaler_16  16分频  
//SPI_BaudRatePrescaler_256 256分频 
extern void SPI1_SetSpeed(u8 SPI_BaudRatePrescaler);

//SPI 速度设置函数
//SpeedSet:
//SPI_BaudRatePrescaler_2   2分频   
//SPI_BaudRatePrescaler_8   8分频   
//SPI_BaudRatePrescaler_16  16分频  
//SPI_BaudRatePrescaler_256 256分频 
extern void SPI2_SetSpeed(u8 SPI_BaudRatePrescaler);

//SPIx 读写一个字节
//TxData:要写入的字节
//返回值:读取到的字节
extern int SPI1_ReadWriteByte(u8 TxData);

//SPIx 读写一个字节
//TxData:要写入的字节
//返回值:读取到的字节
extern int SPI2_ReadWriteByte(u8 TxData);


extern unsigned int spi_readbyte(char channel);

extern void spi_writebyte(char channel,unsigned char dat);

extern void SPI3_Init(void);

extern int SPI3_ReadWriteByte(u8 TxData);



#ifdef __cplusplus
}
#endif
#endif


