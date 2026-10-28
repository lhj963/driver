#include "S35390A.h"

static unsigned char BCD2HEX(unsigned char bcd_data)
{
	unsigned char hex_data = 0;

	hex_data = ((bcd_data>>4)*10 + (bcd_data&0x0F));
	return hex_data;
}

static unsigned char HEX2BCD(unsigned char hex_data)
{
	unsigned char bcd_data = 0;

	bcd_data = ((hex_data/10)*16 + (hex_data%10));
	return bcd_data;
}

//11010001 -> 10001011
static unsigned char SwapBit(unsigned char data)
{
	data = (data<<4) | (data>>4);
	data = ((data<<2)&0xcc) | ((data>>2)&0x33);
	data = ((data<<1)&0xaa) | ((data>>1)&0x55);

	return data;
}


unsigned char s35390a_write(unsigned char sla , unsigned char num, unsigned char* buffer)
{
	unsigned char i = 0;

	IIC_Start(0);
	//StartI2c_2();
	IIC_Send_Byte(0,sla);
	if(IIC_Wait_Ack(0))
	{
		return 1;
	}

	for(i = 0; i < num; i++)
	{
		IIC_Send_Byte(0,*buffer++);
		if(IIC_Wait_Ack(0))
		{
			return 1;
		}
	}
	//StopI2c_2();
	IIC_Stop(0);
	return(0);
}


unsigned char s35390a_read(u8 sla, u8 num, u8* buffer)
{
    unsigned char i = 0;

	IIC_Start(0);
	//StartI2c_2();
	IIC_Send_Byte(0,sla);
	if(IIC_Wait_Ack(0))
	{
	    return 1;
	}

	for(i = 0; i < (num -1); i++)
	{
    	*buffer = IIC_Read_Byte(0,0);
    	buffer ++;
	}
	*buffer = IIC_Read_Byte(0,1);
	//StopI2c_2();
	IIC_Stop(0);

	return(0);
}


void s35390a_init(void)
{
	unsigned char i = 0;
	unsigned char read_reg = 0;
	unsigned char write_reg_reset = 0x80;
	unsigned char write_reg_24format = 0x40;
	//unsigned char type = 1;

	s35390a_read(S35390A_STS_REG1_R,1,&read_reg);
	if (read_reg & 1)
	{
		for(i=0; i<3; i++)
		{
			s35390a_write(S35390A_STS_REG1_W,1,&write_reg_reset);

			s35390a_read(S35390A_STS_REG1_R,1,&read_reg);
			if ((read_reg & 1) == 0)
			{
				break;
			}
		}
	}

	s35390a_write(S35390A_STS_REG1_W,1,&write_reg_24format);	//set 24format
}


void  s35390a_set_time(unsigned char set_datetime[6])
{
	unsigned char time_reg[7] = {0};

	time_reg[0] = SwapBit(HEX2BCD((unsigned char)set_datetime[0]));
	time_reg[1] = SwapBit(HEX2BCD(set_datetime[1]));
	time_reg[2] = SwapBit(HEX2BCD(set_datetime[2]));

	time_reg[4] = SwapBit(HEX2BCD(set_datetime[3]));
	time_reg[5] = SwapBit(HEX2BCD(set_datetime[4]));
	time_reg[6] = SwapBit(HEX2BCD(set_datetime[5]));
	s35390a_write(S35390A_YEAR_DAT_W,7,time_reg);
}

void s35390a_get_time(unsigned char get_datetime[6])
{
	unsigned char datetime_reg[7] = {0};

	s35390a_read(S35390A_YEAR_DAT_R,7,datetime_reg);

	get_datetime[0] = BCD2HEX(SwapBit(datetime_reg[0]));
	get_datetime[1] = BCD2HEX(SwapBit(datetime_reg[1]));
	get_datetime[2] = BCD2HEX(SwapBit(datetime_reg[2]));

	get_datetime[3] = BCD2HEX(SwapBit(datetime_reg[4]));
	get_datetime[4] = BCD2HEX(SwapBit(datetime_reg[5]));
	get_datetime[5] = BCD2HEX(SwapBit(datetime_reg[6]));
}

