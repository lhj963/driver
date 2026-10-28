/**
  ******************************************************************************
  * @file    /WB_SerialNAND_Sample_Code_LLD.h
  * @author  Winbond FAE Steam Lin
  * @version V1.0.3
  * @date    9-March-2016
  * @brief   This code provide the low level hardware initial and basic Serial operate function based on STM32F205.
  *            
  * COPYRIGHT 2015 Winbond.
*/ 

#ifndef __SPI_FLASH_H__
#define __SPI_FLASH_H__

#ifdef __cplusplus
extern "C" {
#endif

#define SPI_FLASH_ONE_BLOCK_SIZE 		(128 * 1024)
#define SPI_FLASH_ONE_PAGE_SIZE 		2048
#define SPI_FLASH_PER_BLOCK_OF_PAGE		64


extern char is_spi_flash_ok(void);

extern void spi_flash_init(void);

extern unsigned char spi_flash_write(unsigned long addr,void *pdat,unsigned int datlen);

extern void spi_flash_read(unsigned long addr,unsigned int wantToReadBytes,void *buf,unsigned int bufsize);

extern void spi_flash_erase_sector(unsigned long sector_id);

extern unsigned int spi_flash_read_page(unsigned int page_id,unsigned int offset,unsigned int rbyte,void *buf,unsigned int buflen);

extern unsigned char spi_flash_write_page(unsigned int page_id,unsigned int offset,void *pdat,unsigned int datlen);


#ifdef __cplusplus
}
#endif
#endif
