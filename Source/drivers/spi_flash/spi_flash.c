/**
  ******************************************************************************
  * @file    /WB_SerialNAND_Sample_Code_LLD.c
  * @author  Winbond FAE Steam Lin
  * @version V1.0.9
  * @date    9-March-2016
  * @brief   This code provide the low level hardware initial and basic Serial operate function based on STM32F205.
  *            
  * COPYRIGHT 2015 Winbond.
*/ 
#include "spi_flash.h"

#define Program_error 0x04
#define Bad_block_count_over 0x05

void _spi_flash_delay(void)
{
	volatile unsigned int t = 0xFFF;

	while (--t);
}

void spi_flash_set_cs(char val)
{
	set_flash_cs((unsigned char)val);
}

/********************
Function: CS select low
Argument:
return: 
*********************/
void WB_CS_LOW(void)
{
	spi_flash_set_cs(0);
	_spi_flash_delay();
}

/********************
Function: CS select high
Argument:
return: 
*********************/
void WB_CS_HIGH(void)
{
	spi_flash_set_cs(1);
	_spi_flash_delay();
}



void spi_flash_write_byte(unsigned char dat)
{
	moni_spi_write_byte(0,dat);
}

unsigned char spi_flash_read_byte(void)
{
	return moni_spi_read_byte(0);
}

/********************
Function: Serial NAND Status register read
Argument: 
sr_sel: select register
return: status register value
*********************/
uint8_t WB_Read_Serial_NAND_StatusRegister(uint8_t sr_sel){
  uint8_t SR = 0;  // status register data
  switch(sr_sel){
  case 0x01:
    WB_CS_LOW();
    spi_flash_write_byte(0x05);
    spi_flash_write_byte(0xA0); // SR1
    SR = spi_flash_read_byte();
    WB_CS_HIGH();
    break;
  case 0x02:
    WB_CS_LOW();
    spi_flash_write_byte(0x05);
    spi_flash_write_byte(0xB0); // SR2
    SR = spi_flash_read_byte();
    WB_CS_HIGH();
    break;
  case 0x03:
    WB_CS_LOW();
    spi_flash_write_byte(0x05);
    spi_flash_write_byte(0xC0); // SR3
    SR = spi_flash_read_byte();
    WB_CS_HIGH();
    break;
  default:
    SR = 0xFF;
    break;
  }    
  return SR;
}

/********************
Function: SPI NAND Ready busy check
Argument: 
return: 
*********************/
void WB_Serial_NAND_ReadyBusy_Check(void){
	unsigned int cnt = 0;
  uint8_t SR = 0xFF;  
  while(SR&0x3 != 0x00){
    WB_CS_LOW();
    spi_flash_write_byte(0x05);
    spi_flash_write_byte(0xC0);
    SR = spi_flash_read_byte();
    WB_CS_HIGH();
    //BSP_OS_TimeDlyMs(10);
    cnt++;
    if (cnt >= 5000)
    {
		DBG_Print(0,"flash busy.\r\n");
		break;
    }
  }
  return;
}


/********************
Function: Serial NAND Write Status register 1 
Argument: 
SR1: program SR1 data
*********************/
void WB_Serial_NAND_StatusRegister_Write_SR1(uint8_t SR1){
  WB_CS_LOW();
  spi_flash_write_byte(0x01);
  spi_flash_write_byte(0xA0);
  spi_flash_write_byte(SR1);
  WB_CS_HIGH();
  WB_Serial_NAND_ReadyBusy_Check();
  return;
}

/********************
Function: Serial NAND Write Status register 2 
Argument: 
SR2: program SR2 data
*********************/
void WB_Serial_NAND_StatusRegister_Write_SR2(uint8_t SR2){  

  WB_CS_LOW();
  spi_flash_write_byte(0x01);
  spi_flash_write_byte(0xB0);
  spi_flash_write_byte(SR2);
  WB_CS_HIGH();
  WB_Serial_NAND_ReadyBusy_Check();
  return;
}

/********************
Function: Serial NAND Write Status register 3
Argument: 
 : select socket
SR3: program SR3 data
*********************/
void WB_Serial_NAND_StatusRegister_Write_SR3(uint8_t SR3){  
  WB_CS_LOW();
  spi_flash_write_byte(0x01);
  spi_flash_write_byte(0xC0);
  spi_flash_write_byte(SR3);
  WB_CS_HIGH();
  WB_Serial_NAND_ReadyBusy_Check();
  return;
}


/********************
Function: Serial NAND Normal read to buffer
Argument: 
addh~addl: Read data address
count: read count
return:
*********************/
void WB_Serial_NAND_Normal_Read(uint8_t addh, uint8_t addl, uint8_t* buff, uint32_t count){  
  uint32_t i = 0;
  WB_CS_LOW();
  spi_flash_write_byte(0x03);	//read
 
  spi_flash_write_byte(addh);
  spi_flash_write_byte(addl);
  spi_flash_write_byte(0x00); // dummy
  for( i = 0; i < count; i++){
    *(buff+i) = spi_flash_read_byte();
  }
  WB_CS_HIGH();  
  return;
}




/********************
Function: Serial NAND continuous read to buffer
Argument: 
addh~addl: Read data address
count: read count
return:
*********************/
void WB_Serial_NAND_Continuous_Normal_Read(uint8_t* buff, uint32_t count){  
  uint32_t i = 0;
  WB_CS_LOW();
  spi_flash_write_byte(0x03); // dummy
  spi_flash_write_byte(0x00); // dummy
  spi_flash_write_byte(0x00); // dummy
  spi_flash_write_byte(0x00); // dummy
  for( i = 0; i < count; i++){
    *(buff+i) = spi_flash_read_byte();
  }    
  WB_CS_HIGH();  
  return;
}

/********************
Function: SPINAND page data read
Argument: 
PA_H, page address
PA_L, page address
return:
*********************/
void WB_Serial_NAND_PageDataRead(uint8_t PA_H, uint8_t PA_L){  
  WB_CS_LOW();
  spi_flash_write_byte(0x13); // 
  spi_flash_write_byte(0x00); // dummy
  spi_flash_write_byte(PA_H); // Page address
  spi_flash_write_byte(PA_L); // Page address
  WB_CS_HIGH();  
  WB_Serial_NAND_ReadyBusy_Check(); // Need to wait for the data transfer.
  return;
}


/********************
Function: W25M series (SPISTACK) die select 
Argument: 
	Select_die
		0x00  (power on default states)
		0x01
return:
*********************/
void WB_Die_Select(uint8_t select_die){

  /*	reference code to avoid incorrect select die ID input
  switch(select_die){
	  case 0x00:
		break;
	  case 0x01:
		break;
	  default:
		return;
  }
  */	
  
  WB_CS_LOW();
  spi_flash_write_byte(0xC2);		// Software Die Select
  spi_flash_write_byte(select_die);
  WB_CS_HIGH();
  
  return;
}

/********************
Function: Serial NAND BBM Set LUT
Argument: 
  LBA                   Logical block address
  PBA                   Physical block address
  * LBA or PBA          0       1       2
  * Page address        0       0x40   0x80
  return:
*********************/
void WB_Serial_NAND_LUT_Set(uint16_t LBA, uint16_t PBA){ 
  
  WB_CS_LOW();
  spi_flash_write_byte(0x06);
  WB_CS_HIGH();
  
  WB_CS_LOW();
  spi_flash_write_byte(0xA1);
  spi_flash_write_byte((LBA/0x100));
  spi_flash_write_byte((LBA%0x100));
  spi_flash_write_byte((PBA/0x100));
  spi_flash_write_byte((PBA%0x100));
  WB_CS_HIGH();
}

/********************
Function: Serial NAND LUT read
Argument: 
  uint16_t LBA[20];             Logical block address
  uint16_t PBA[20];             Physical block address 
  For Winbond 1Gb NAND, LBA[9:0] & PBA [9:0] are effective block address. LBA[15:14] is used for additional information
return:
*********************/
void WB_Serial_NAND_LUT_Read(uint16_t* LBA, uint16_t* PBA){
  uint16_t i, buf1, buf2;  
  WB_CS_LOW();
  spi_flash_write_byte(0xA5);
  spi_flash_write_byte(0x00);                  // Dummy
  for(i = 0; i < 20; i++)
  {
    buf1 = spi_flash_read_byte();
    buf2 = spi_flash_read_byte();
    *(LBA+i) = (buf1 << 8) | buf2;
    buf1 = spi_flash_read_byte();
    buf2 = spi_flash_read_byte();
    *(PBA+i) = (buf1 << 8) | buf2;
  }
  WB_CS_HIGH();
  return;
}

/********************\
Function: Serial NAND Bad block mark check
Argument: 
return:
1: Check block is bad block.
0: Check block is not bad block.
update: V.1.0.8 // correct the bad block mark address
*********************/
uint8_t WB_Serial_NAND_bad_block_check(uint32_t page_address){
  uint8_t *read_buf = 0;

  WB_Serial_NAND_PageDataRead(page_address/0x100, page_address%0x100);                  // Read the first page of a block
  
  /* if build-in ECC algorithm enable
  EPR_status = WB_Check_Embedded_ECC_Flag();
  if(EPR_status > 1){
	  return 1;															// Check ECC status and return fail if (ECC-1, ECC0) = (1,0) or (1, 1)
		  }
  */
  
  WB_Serial_NAND_Normal_Read(0x8, 0x0, read_buf, 1);					// Read bad block mark at 0x800 update at v.1.0.8
  if(*read_buf != 0xFF){												// update at v.1.0.7
    return 1;
    }
  WB_Serial_NAND_PageDataRead((page_address+1)/0x100, (page_address+1)%0x100);          // Read the second page of a block
  
  /* if build-in ECC algorithm enable
  EPR_status = WB_Check_Embedded_ECC_Flag();
  if(EPR_status > 1){
	  return 1;															// Check ECC status and return fail if (ECC-1, ECC0) = (1,0) or (1, 1)
		  }
  */
  
  WB_Serial_NAND_Normal_Read(0x8, 0x0, read_buf, 1);					// Read bad block mark at 0x800 update at v.1.0.8
  if(*read_buf != 0xFF){												// update at v.1.0.7
    return 1;
    }
  return 0;
}


/********************
Function: Serial NAND page program
Argument: 
addh, addl: input address
program_buffer: input data
count: program count
return:
*********************/
void WB_Serial_NAND_Pageprogram_Pattern(uint8_t addh, uint8_t addl, uint8_t* program_buffer, uint32_t count){  
  uint32_t i = 0;  

  WB_CS_LOW();
  spi_flash_write_byte(0x06);
  WB_CS_HIGH();

  WB_CS_LOW();
  spi_flash_write_byte(0x02);
  spi_flash_write_byte(addh);
  spi_flash_write_byte(addl); 
  for(i = 0; i < count; i++){
    spi_flash_write_byte(*(program_buffer+i));
  }
  WB_CS_HIGH();    

  return;
}

/********************
Function: Serial NAND page program
Argument: 
addh, addl: input address
pattern: program data
count: program count
return: ready busy count
*********************/
void WB_Serial_NAND_Program_Excute(uint8_t addh, uint8_t addl){  
  
  WB_CS_LOW();
  spi_flash_write_byte(0x10);
  spi_flash_write_byte(0x00); // dummy
  spi_flash_write_byte(addh);
  spi_flash_write_byte(addl); 
  WB_CS_HIGH();    
  WB_Serial_NAND_ReadyBusy_Check();
  
  return;
}

/********************
Function: Do whole Flash protect
Argument: 
*********************/
void WB_Protect(void){
  uint8_t SR;
  SR = WB_Read_Serial_NAND_StatusRegister(1); 	// Read status register 2
  SR|=0x7C;										// Enable ECC-E bit
  WB_Serial_NAND_StatusRegister_Write_SR1(SR);
  return;
}

/********************
Function: Do whole Flash unprotect
Argument: 
*********************/
void WB_Unprotect(void){
  uint8_t SR;
  SR = WB_Read_Serial_NAND_StatusRegister(1); 	// Read status register 2
  SR&=0x83;										// Enable ECC-E bit
  WB_Serial_NAND_StatusRegister_Write_SR1(SR);
  return;
}

/********************
Function: Check ECC-E status
Argument: 
Comment: Change function name at V1.0.3
*********************/
uint8_t WB_Check_Embedded_ECC_Enable(void){
  uint8_t SR;
  SR = WB_Read_Serial_NAND_StatusRegister(2);  // Read status register 2
  return (SR&0x10)>>4;
}

/********************
Function: Check P-FAIL\E-FAIL status
Argument: 
Comment: Modify this function at V1.0.3
*********************/
uint8_t WB_Check_Program_Erase_Fail_Flag(void){
  uint8_t SR;
  SR = WB_Read_Serial_NAND_StatusRegister(3); 	// Read status register 3
  return (SR&0x0C)>>2;							// Check P-Fail, E-Fail bit								
}

/********************
Function: Check ECC-1, ECC-0 status
Argument: 
Comment: Add this function at V1.0.3
*********************/
uint8_t WB_Check_Embedded_ECC_Flag(void){
  uint8_t SR;
  SR = WB_Read_Serial_NAND_StatusRegister(3); 	// Read status register 3
  return (SR&0x30)>>4;							// Check ECC-1, ECC0 bit								
}

/********************
Function: Enable embedded ECC
Argument: 
*********************/
void WB_Enable_Embedded_ECC(void){
  uint8_t SR;
  SR = WB_Read_Serial_NAND_StatusRegister(2); 	// Read status register 2
  SR|=0x10;										// Enable ECC-E bit
  WB_Serial_NAND_StatusRegister_Write_SR2(SR);
  return;
}

/********************
Function: Disable embedded ECC
Argument: 
*********************/
void WB_Disable_Embedded_ECC(void){
  uint8_t SR;
  SR = WB_Read_Serial_NAND_StatusRegister(2); 	// Read status register 2
  SR&= 0xEF;									// Disable ECC-E bit
  WB_Serial_NAND_StatusRegister_Write_SR2(SR);
  return;
}

/********************
Function: Enable buffer mode
Argument: 
*********************/
void WB_Enable_Buffer_mode(void){
  uint8_t SR;
  SR = WB_Read_Serial_NAND_StatusRegister(2); 	// Read status register 2
  SR|=0x08;										// Enable BUF bit
  WB_Serial_NAND_StatusRegister_Write_SR2(SR);
  return;
}

/********************
Function: Disable buffer mode
Argument: 
*********************/
void WB_Disable_Buffer_mode(void){
  uint8_t SR;
  SR = WB_Read_Serial_NAND_StatusRegister(2); 	// Read status register 2
  SR&= 0xF7;									// Disable BUF bit
  WB_Serial_NAND_StatusRegister_Write_SR2(SR);
  return;
}



/********************
Function: Serial NAND Block erase
Argument:
PA_H, PA_L: Page address
return:
*********************/
void WB_Serial_NAND_BlockErase(uint8_t PA_H, uint8_t PA_L){  

  WB_CS_LOW();
  spi_flash_write_byte(0x06);
  WB_CS_HIGH();
  
  WB_CS_LOW();
  spi_flash_write_byte(0xD8);
  spi_flash_write_byte(0x00); // dummy
  spi_flash_write_byte(PA_H);
  spi_flash_write_byte(PA_L);  
  WB_CS_HIGH();  
  
  WB_Serial_NAND_ReadyBusy_Check();
}

/********************
Function: Serial NAND reset command
Argument:
return:
*********************/
void WB_NAND_Reset(){
  WB_CS_LOW();
  spi_flash_write_byte(0xFF);
  WB_CS_HIGH();
  WB_Serial_NAND_ReadyBusy_Check();
}



/********************
Function: read JEDEC ID
Argument: cs sel
return: JEDEC ID
*********************/
uint32_t WB_NAND_Read_JEDEC_ID(void){
  uint32_t JEDECID = 0;
  WB_CS_LOW();
  spi_flash_write_byte(0x9F);
  spi_flash_write_byte(0x00); // dummy
  JEDECID += spi_flash_read_byte();
  JEDECID <<= 8;
  JEDECID += spi_flash_read_byte();
  JEDECID <<= 8;
  JEDECID += spi_flash_read_byte();
  WB_CS_HIGH();
  return JEDECID;
}


unsigned short LBA[20];
unsigned short PBA[20];

void check_lut(void)
{
	unsigned char i = 0;
	WB_Serial_NAND_LUT_Read(LBA,PBA);

	for (i = 0; i < sizeof(LBA) / sizeof(LBA[0]); i++)
	{
		if (LBA[i])
		{
			DBG_Print(LEVEL0,"error block.\r\n");

			DBG_Print(0,"LBA:%04X %04X %04X %04X %04X %04X %04X %04X %04X %04X "
			"%04X %04X %04X %04X %04X %04X %04X %04X %04X %04X\r\n",
			LBA[0],LBA[1],LBA[2],LBA[3],LBA[4],LBA[5],LBA[6],LBA[7],LBA[8],LBA[9],
			LBA[10],LBA[11],LBA[12],LBA[13],LBA[14],LBA[15],LBA[16],LBA[17],LBA[18],LBA[19]);

			DBG_Print(LEVEL0,"PBA:%04X %04X %04X %04X %04X %04X %04X %04X %04X %04X "
			"%04X %04X %04X %04X %04X %04X %04X %04X %04X %04X\r\n",
			PBA[0],PBA[1],PBA[2],PBA[3],PBA[4],PBA[5],PBA[6],PBA[7],PBA[8],PBA[9],
			PBA[10],PBA[11],PBA[12],PBA[13],PBA[14],PBA[15],PBA[16],PBA[17],PBA[18],PBA[19]);

		}
	}
}

static char s_is_spi_flash_ok = 0;

char is_spi_flash_ok(void)
{
	return s_is_spi_flash_ok;
}
void spi_flash_init(void)
{
	// CS, WP, Hold default keep high
	spi_flash_set_cs(1);

	WB_NAND_Reset();				// Reset instruction, Serial NAND enter in buffer mode
	//WB_Disable_Embedded_ECC();	// After power on, Winbond Serial NAND ECC-E default = 1. Set ECC-E = 0 to disable embedded ECC		

	if (WB_NAND_Read_JEDEC_ID() != 0x00EFAA21)
	{
		s_is_spi_flash_ok = 0;
		DBG_Print(LEVEL0,"flash init error.(id:%08X)\r\n",WB_NAND_Read_JEDEC_ID());
	}
	else
	{
		s_is_spi_flash_ok = 1;
		DBG_Print(LEVEL0,"flash id:%08X\r\n",WB_NAND_Read_JEDEC_ID());
	}
	WB_Disable_Embedded_ECC();
	WB_Enable_Buffer_mode();
	WB_Unprotect();

	check_lut();
}


unsigned int spi_flash_read_page(unsigned int page_id,unsigned int offset,unsigned int rbyte,void *buf,unsigned int buflen)
{
	unsigned int block_id = page_id / SPI_FLASH_PER_BLOCK_OF_PAGE;
	unsigned int PA = (block_id << 6) + (page_id % SPI_FLASH_PER_BLOCK_OF_PAGE);
	unsigned int CA = offset;

	rbyte = (rbyte >= buflen) ? buflen : rbyte;

	WB_Serial_NAND_PageDataRead(PA >> 8, PA);		// Read verify
	WB_Serial_NAND_Normal_Read(CA >> 8, CA, (unsigned char *)buf, rbyte);

	//memcpy(buf,spi_flash_buff + offset,rbyte);
	return rbyte;
}

unsigned char spi_flash_write_page(unsigned int page_id,unsigned int offset,void *pdat,unsigned int datlen)
{
	unsigned char EPR_status;					// Check Erase, program, read status
	unsigned int block_id = page_id / SPI_FLASH_PER_BLOCK_OF_PAGE;
	unsigned int PA = (block_id << 6) + (page_id % SPI_FLASH_PER_BLOCK_OF_PAGE);
	unsigned int CA = offset;

	if ((datlen + offset) > SPI_FLASH_ONE_PAGE_SIZE)
	{
		datlen = SPI_FLASH_ONE_PAGE_SIZE - offset;
	}

	if ((offset == 0) && ((page_id % SPI_FLASH_PER_BLOCK_OF_PAGE) == 0))
	{
		WB_Serial_NAND_BlockErase(PA >> 8,PA); // Do Erase at 0x00 for example
		WB_Check_Program_Erase_Fail_Flag();
	}

	WB_Serial_NAND_Pageprogram_Pattern(CA >> 8, CA, (unsigned char *)pdat,datlen);	// program all page data = 0x55
	//WB_Serial_NAND_Program_Excute( ADDR_Row_PA15_PA8(memory_offset+ i*(Page_size+Spare_size)), ADDR_Row_PA7_PA0(memory_offset+ i*(Page_size+Spare_size)));
	WB_Serial_NAND_Program_Excute(PA >> 8, PA);	// Do program at page 0x00 to 0x40

	EPR_status = WB_Check_Program_Erase_Fail_Flag();

	if(EPR_status != 0)
	{
		return Program_error;
	}

	return 0;
}

unsigned char spi_flash_write(unsigned long addr,void *pdat,unsigned int datlen)
{
	unsigned int page_id = addr / SPI_FLASH_ONE_PAGE_SIZE;
	unsigned int offset = addr % SPI_FLASH_ONE_PAGE_SIZE;
	unsigned char *ptr = (unsigned char *)pdat;
	unsigned int wlen = 0;

	if ((pdat == 0) || (datlen == 0))
	{
		return 1;
	}

	while (datlen)
	{
		wlen = SPI_FLASH_ONE_PAGE_SIZE - offset;
		wlen = (wlen <= datlen) ? wlen : datlen;

		spi_flash_write_page(page_id,offset,ptr,wlen);
		datlen -= wlen;
		offset = 0;
		ptr += wlen;
		addr += wlen;
		page_id = addr / SPI_FLASH_ONE_PAGE_SIZE;
	}
	return 0;
}

void spi_flash_read(unsigned long addr,unsigned int wantToReadBytes,void *buf,unsigned int bufsize)
{
	unsigned char *ptr = (unsigned char *)buf;
	unsigned int page_id = addr / SPI_FLASH_ONE_PAGE_SIZE;
	unsigned int offset = addr % SPI_FLASH_ONE_PAGE_SIZE;
	unsigned int rbyte = 0;
	unsigned int buflen = bufsize;

	if ((ptr == 0) || (bufsize == 0) || (wantToReadBytes == 0))
	{
		return ;
	}

	while (wantToReadBytes)
	{
		rbyte = SPI_FLASH_ONE_PAGE_SIZE - offset;
		rbyte = (rbyte >= wantToReadBytes) ? wantToReadBytes : rbyte;

		spi_flash_read_page(page_id,offset,rbyte,ptr,buflen);

		wantToReadBytes -= rbyte;
		buflen -= rbyte;
		ptr += rbyte;
		offset = 0;
		addr += rbyte;
		page_id = addr / SPI_FLASH_ONE_PAGE_SIZE;
	}

}

void spi_flash_erase_sector(unsigned long sector_id)
{
	unsigned int block_id = sector_id;
	unsigned int PA = block_id << 6;

	WB_Serial_NAND_BlockErase(PA >> 8,PA); // Do Erase at 0x00 for example
	WB_Check_Program_Erase_Fail_Flag();
}






