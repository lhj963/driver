#include "ISO27145_ISO15765.h"



CanTxMsg ISO27145_CAN_REQ_CMD[] = 
{
{0,0x18DA12F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x30,0x08,0x14,0xFF,0xFF,0xFF,0xFF,0xFF}},//斯堪尼亚
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x30,0x08,0x14,0xFF,0xFF,0xFF,0xFF,0xFF}},//玉柴发动机 奔驰重卡
{0,0x18DA01A4,CAN_Id_Extended,CAN_RTR_DATA,8,{0x30,0x08,0x14,0xFF,0xFF,0xFF,0xFF,0xFF}},//戴姆勒

//{0x000007DF,0,CAN_Id_Standard,CAN_RTR_DATA,8,{0x30,0x00,0x00,0x00,0x00,0x00,0x00,0x00}},//7,
};

CanTxMsg ISO27145_CAN_REQ_CMD_DML[] = 
{
{0,0x18DA01A4,CAN_Id_Extended,CAN_RTR_DATA,8,{0x30,0x08,0x14,0xFF,0xFF,0xFF,0xFF,0xFF}},//戴姆勒
};


//CAN请求数据列表
CanTxMsg ISO27145_CAN_REQ_LIST[] = {
//////////////////////////////////ISO27145////////////////////////////////////////////////////
{0,0x18DB33F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF8,0x10,0xFF,0xFF,0xFF,0xFF}},//0,OBD协议0-15765,1-27145,2-1939
{0,0x18DB33F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0x01,0xFF,0xFF,0xFF,0xFF}},//1,诊断支持列表
{0,0x18DB33F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF8,0x02,0xFF,0xFF,0xFF,0xFF}},//2,VIN
{0,0x18DB33F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF8,0x04,0xFF,0xFF,0xFF,0xFF}},//3,CALID
{0,0x18DB33F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF8,0x06,0xFF,0xFF,0xFF,0xFF}},//4,CVN
{0,0x18DB33F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF8,0x0B,0xFF,0xFF,0xFF,0xFF}},//5,IUPR
{0,0x18DB33F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x05,0x19,0x42,0x33,0x0C,0x1E,0xFF,0xFF}},//6,DTC

{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0x0D,0xFF,0xFF,0xFF,0xFF}},//7,车速
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0x33,0xFF,0xFF,0xFF,0xFF}},//8,大气压力
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0x62,0xFF,0xFF,0xFF,0xFF}},//9,发动机扭矩
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0x8E,0xFF,0xFF,0xFF,0xFF}},//10,摩擦扭矩
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0x0C,0xFF,0xFF,0xFF,0xFF}},//11,转速
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0x5E,0xFF,0xFF,0xFF,0xFF}},//12,燃料流量
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0x83,0xFF,0xFF,0xFF,0xFF}},//13,SCR上下游NOx传感器输出 
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0x85,0xFF,0xFF,0xFF,0xFF}},//14,反应剂余量(尿素)	0-250
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0x10,0xFF,0xFF,0xFF,0xFF}},//15,进气量	
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0x78,0xFF,0xFF,0xFF,0xFF}},//16,SCR入口温度和出口温度
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0x7A,0xFF,0xFF,0xFF,0xFF}},//17,DPF压差
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0x05,0xFF,0xFF,0xFF,0xFF}},//18,水温	
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0x2F,0xFF,0xFF,0xFF,0xFF}},//19,剩余油量	
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0xA6,0xFF,0xFF,0xFF,0xFF}},//20,总里程	
//{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x30,0x08,0x14,0xFF,0xFF,0xFF,0xFF,0xFF}},//21,请求连续帧

};

CanTxMsg ISO27145_CAN_REQ_LIST_DML[] = {
//////////////////////////////////ISO27145////////////////////////////////////////////////////
{0,0x18DA01A4,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF8,0x10,0xFF,0xFF,0xFF,0xFF}},//0,OBD协议0-15765,1-27145,2-1939
{0,0x18DA01A4,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0x01,0xFF,0xFF,0xFF,0xFF}},//1,诊断支持列表
{0,0x18DA01A4,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0x90,0xFF,0xFF,0xFF,0xFF}},//车辆状态
{0,0x18DA01A4,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0x91,0xFF,0xFF,0xFF,0xFF}},//ECU状态
{0,0x18DA01A4,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF8,0x02,0xFF,0xFF,0xFF,0xFF}},//2,VIN
{0,0x18DA01A4,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF8,0x04,0xFF,0xFF,0xFF,0xFF}},//3,CALID
{0,0x18DA01A4,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF8,0x06,0xFF,0xFF,0xFF,0xFF}},//4,CVN
{0,0x18DA01A4,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF8,0x0B,0xFF,0xFF,0xFF,0xFF}},//5,IUPR
{0,0x18DA01A4,CAN_Id_Extended,CAN_RTR_DATA,8,{0x05,0x19,0x42,0x33,0x0C,0x1E,0xFF,0xFF}},//6,DTC
{0,0x18DA01A4,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0x63,0xFF,0xFF,0xFF,0xFF}},//发动机参考扭矩

};


CanTxMsg ISO27145_CAN_REQ_LIST_DGM[] = {
//////////////////////////////////ISO27145////////////////////////////////////////////////////
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF8,0x10,0xFF,0xFF,0xFF,0xFF}},//0,OBD协议0-15765,1-27145,2-1939
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0x01,0xFF,0xFF,0xFF,0xFF}},//1,诊断支持列表
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF8,0x02,0xFF,0xFF,0xFF,0xFF}},//2,VIN
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF8,0x04,0xFF,0xFF,0xFF,0xFF}},//3,CALID
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF8,0x06,0xFF,0xFF,0xFF,0xFF}},//4,CVN
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF8,0x0B,0xFF,0xFF,0xFF,0xFF}},//5,IUPR
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x05,0x19,0x42,0x33,0x0C,0x1E,0xFF,0xFF}},//6,DTC

{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0x0D,0xFF,0xFF,0xFF,0xFF}},//7,车速
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0x33,0xFF,0xFF,0xFF,0xFF}},//8,大气压力
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0x62,0xFF,0xFF,0xFF,0xFF}},//9,发动机扭矩
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0x8E,0xFF,0xFF,0xFF,0xFF}},//10,摩擦扭矩
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0x0C,0xFF,0xFF,0xFF,0xFF}},//11,转速
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0x5E,0xFF,0xFF,0xFF,0xFF}},//12,燃料流量
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0x83,0xFF,0xFF,0xFF,0xFF}},//13,SCR上下游NOx传感器输出 
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0x85,0xFF,0xFF,0xFF,0xFF}},//14,反应剂余量(尿素)	0-250
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0x10,0xFF,0xFF,0xFF,0xFF}},//15,进气量	
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0x78,0xFF,0xFF,0xFF,0xFF}},//16,SCR入口温度和出口温度
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0x7A,0xFF,0xFF,0xFF,0xFF}},//17,DPF压差
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0x05,0xFF,0xFF,0xFF,0xFF}},//18,水温	
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0x2F,0xFF,0xFF,0xFF,0xFF}},//19,剩余油量	
{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x03,0x22,0xF4,0xA6,0xFF,0xFF,0xFF,0xFF}},//20,总里程	
//{0,0x18DA00F1,CAN_Id_Extended,CAN_RTR_DATA,8,{0x30,0x08,0x14,0xFF,0xFF,0xFF,0xFF,0xFF}},//21,请求连续帧

};



typedef struct tagISO27145Protocol
{
	SENDCANMSGPROC pSendCanMsgFunc;
}ISO27145Protocol;


ISO27145Protocol s_stISO27145Protocol = {0};


void iso27145_can_send_req_cmd(void)
{
	unsigned char i = 0;
	unsigned char req_cnt = 0;

	if (s_stISO27145Protocol.pSendCanMsgFunc == 0)
	{
		return ;
	}

	if (get_engine_type() == EngineType_DML)
	{
		req_cnt = sizeof(ISO27145_CAN_REQ_CMD_DML) / sizeof(ISO27145_CAN_REQ_CMD_DML[0]);
		for (i = 0; i < req_cnt; i++)
		{
			s_stISO27145Protocol.pSendCanMsgFunc(&ISO27145_CAN_REQ_CMD_DML[i]);
		}
	}
	else
	{
		req_cnt = sizeof(ISO27145_CAN_REQ_CMD) / sizeof(ISO27145_CAN_REQ_CMD[0]);
		for (i = 0; i < req_cnt; i++)
		{
			s_stISO27145Protocol.pSendCanMsgFunc(&ISO27145_CAN_REQ_CMD[i]);
		}
	}
}

void iso27145_can_send_req_list(void)
{
	unsigned char req_cnt = 0;
	//unsigned char i = 0;
	static unsigned int s_send_idx = 0;

	if (s_stISO27145Protocol.pSendCanMsgFunc == 0) return ;
	//戴姆勒
	if (get_engine_type() == EngineType_DML)
	{
		req_cnt = sizeof(ISO27145_CAN_REQ_LIST_DML) / sizeof(ISO27145_CAN_REQ_LIST_DML[0]);
		s_stISO27145Protocol.pSendCanMsgFunc(&ISO27145_CAN_REQ_LIST_DML[s_send_idx++]);

		if (s_send_idx == req_cnt)
		{
			s_send_idx = 0;
		}
	}
	else if (get_engine_type() == EngineType_DGM)
	{
		req_cnt = sizeof(ISO27145_CAN_REQ_LIST_DGM) / sizeof(ISO27145_CAN_REQ_LIST_DGM[0]);

		s_stISO27145Protocol.pSendCanMsgFunc(&ISO27145_CAN_REQ_LIST_DGM[s_send_idx++]);

		if (s_send_idx == req_cnt)
		{
			s_send_idx = 0;
		}
	}
	else
	{
		req_cnt = sizeof(ISO27145_CAN_REQ_LIST) / sizeof(ISO27145_CAN_REQ_LIST[0]);
		s_stISO27145Protocol.pSendCanMsgFunc(&ISO27145_CAN_REQ_LIST[s_send_idx++]);
		if (s_send_idx == req_cnt)
		{
			s_send_idx = 0;
		}
		
	}
}


void iso27145_init(SENDCANMSGPROC SendCanMsgFunc)
{
	s_stISO27145Protocol.pSendCanMsgFunc = SendCanMsgFunc;
}

//对接收的CAN数据进行解析
void iso27145_analysis(char channel,CanRxMsg *pMsg)
{
	unsigned char *data;
	unsigned char i,temp;
	static unsigned char FCD_Flag = 0;
	unsigned int PGN = 0;

	if (pMsg == 0)
	{
		return ;
	}

	PGN = (pMsg->ExtId >> 8) & 0xFFFF;

	if (get_engine_type() == EngineType_DML)
	{
		if (PGN != 0xDAA4)
		{
			return ;
		}
	}
	else
	{
		if (PGN != 0xDAF1)
		{
			return ;
		}
	}

	data = pMsg->Data;
#if 1
	//数据解析
	if((data[0] & 0x0F) && (data[1]==0x62) && (data[2]==0xF4))
	{
		switch(data[3])
		{
			case 0x01:
				can_set_dtc_cnt(channel,data[4] & 0x7F);
				can_set_mil_sta(channel,data[4] & 0x01);
				can_set_dst_sta(channel,byte_to_int16u(data[5] & 0x07,data[6]));
				can_set_drt_sta(channel,byte_to_int16u((data[5] & 0x70) >> 4,data[7]));
				break;
			case 0x0D:
				//OBD_RT.VSS[0] = data[4];	//车速
				can_set_speed(channel,data[4] << 8);
				break;
			case 0x33:
				//OBD_RT.Pressure = data[4];	//大气压力
				can_set_kpa(channel,data[4]);
				break;
			case 0x62:
				//OBD_RT.ETQE = data[4];//03,发动机扭矩	(0~250)
				can_set_actualtorquepercent(channel,data[4]);
				break;
			case 0x8E:
				//OBD_RT.FTQE = data[4];//04,摩擦扭矩				-125%~130% 偏移-125℃
				can_set_frictiontorquepercent(channel,data[4]);
				break;
			case 0x0C:
				//OBD_RT.RPM[0] = data[4];//05,转速(0~64255)	
				//OBD_RT.RPM[1] = data[5];
				can_set_rpm(channel,byte_to_int16u(data[4],data[5]));
				break;
			case 0x5E:
				//OBD_RT.FFLOW[0] = data[4];//06,燃料流量				0.01L/h
				//OBD_RT.FFLOW[1] = data[5];
				can_set_fuelflow(channel,byte_to_int16u(data[4],data[5]));
				break;
			case 0x10:
				//OBD_RT.MAF[0] = data[4];//10,进气量			0~64255
				//OBD_RT.MAF[1] = data[5];
				can_set_intakevolume(channel,byte_to_int16u(data[4],data[5]));
				break;
			case 0x7A:
				//OBD_RT.DPF[0] = data[4];				//13,DPF压差	BYTE	-124~130kPa
				//OBD_RT.DPF[1] = data[5];				//13,DPF压差	BYTE	-124~130kPa
				can_set_DPF(channel,byte_to_int16u(data[4],data[5]));
				break;
			case 0x05:
				//OBD_RT.ECT = data[4]; //14,水温				C 偏移-40℃
				can_set_coolanttemperature(channel,data[4]);
				break;
			case 0x2F:
				//OBD_RT.FUEL = data[4];	//15,剩余油量				%
				can_set_oilboxlevel(channel,data[4]);
				break;
			case 0xA6://16,总里程					KM
				//OBD_RT.ODO[0] = data[4];	
				//OBD_RT.ODO[1] = data[5];	
				//OBD_RT.ODO[2] = data[6];	
				//OBD_RT.ODO[3] = data[7];
				can_set_milage(channel,byte_to_int32u(data[4],data[5],data[6],data[7]));
				break;
		}
	}
	else if((data[0] & 0x0F) && (data[1]==0x62) && (data[2]==0xF8))
	{
		switch(data[3])
		{
			case 0x10:
				//OBD_RT.OBD_PRO = data[4];		//OBD协议
				can_set_obd_pro(channel,data[4]);
				break;
			case 0x06:
				//OBD_RT.CVN[0] = data[4];		//CVN
				//OBD_RT.CVN[1] = data[5];
				//OBD_RT.CVN[2] = data[6];
				//OBD_RT.CVN[3] = data[7];
				can_set_cvn(channel,&data[4],4);
				break;
		}
	}
	///////////////////连续帧/////////////////////////////////////////////////////
	else if(data[0]==0x10)
	{
		//Can_Send_Data(&ISO27145_ISO15765_CAN_Bro[OBD_RT.CAR_Models]);//请求连续CAN数据
		iso27145_can_send_req_cmd();

		if((data[2]==0x62)&&(data[3]==0xF8)&&(data[4]==0x02))	//VIN
		{
			FCD_Flag = 1;
			//OBD_RT.VIN[0] = data[5];
			//OBD_RT.VIN[1] = data[6];
			//OBD_RT.VIN[2] = data[7];

			can_set_vin(channel,0,data[5]);
			can_set_vin(channel,1,data[6]);
			can_set_vin(channel,2,data[7]);
		}
		else if((data[2]==0x62)&&(data[3]==0xF8)&&(data[4]==0x04)) //CALID
		{
			FCD_Flag = 2;
			//OBD_RT.CALID[0] = data[5];
			//OBD_RT.CALID[1] = data[6];
			//OBD_RT.CALID[2] = data[7];

			can_set_calid(channel,0,data[5]);
			can_set_calid(channel,1,data[6]);
			can_set_calid(channel,2,data[7]);			
		}
		else if((data[2]==0x62)&&(data[3]==0xF8)&&(data[4]==0x06)) //CVN
		{
			FCD_Flag = 3;
			//OBD_RT.CVN[0] = data[5];
			//OBD_RT.CVN[1] = data[6];
			//OBD_RT.CVN[2] = data[7];
			can_set_cvn(channel,&data[5],3);
		}
		else if((data[2]==0x62)&&(data[3]==0xF8)&&(data[4]==0x0B))	//IUPR
		{
			FCD_Flag = 4;
			//OBD_RT.IUPR[0] = data[5];
			//OBD_RT.IUPR[1] = data[6];
			//OBD_RT.IUPR[2] = data[7];

			can_set_iupr(channel,0,data[5]);
			can_set_iupr(channel,1,data[6]);
			can_set_iupr(channel,2,data[7]);
		}
		else if((data[2]==0x62)&&(data[3]==0xF4)&&(data[4]==0x83))	//SCR上下游NOx传感器输出 
		{
			FCD_Flag = 5;
			//OBD_RT.SCRUNOX[0]	 = data[6];//SCR上游NOx传感器输出 0～60255
			//OBD_RT.SCRUNOX[1]	 = data[7];

			can_set_upperNOx(channel,(INT16S)byte_to_int16u(data[6],data[7]));
		}
		else if((data[2]==0x62)&&(data[3]==0xF4)&&(data[4]==0x85))	//09,反应剂余量(尿素)	0-250
		{
			FCD_Flag = 6;
		}
		else if((data[2]==0x62)&&(data[3]==0xF4)&&(data[4]==0x78))	//SCR入口温度和出口温度 0～64255
		{
			FCD_Flag = 7;
		}
		else if((data[2]==0x59)&&(data[3]==0x42)&&(data[4]==0x33))	//DTC
		{
			FCD_Flag = 8;
		}
		
	}
	else if((data[0]&0xF0)==0x20)
	{
		switch(FCD_Flag)
		{
			case 0x01:	//VIN
				temp = ((data[0]&0x0F) -1)*7+3;
				for(i=0;i<7;i++)
				{
					if((temp+i) > 16) break;
					//OBD_RT.VIN[temp+i] = data[1+i];
					can_set_vin(channel,temp+i,data[1+i]);
				}
				break;
			case 0x02:	//CALID
				temp = ((data[0]&0x0F) -1)*7+3;
				for(i=0;i<7;i++)
				{
					if((temp+i) > 17) break;
					//OBD_RT.CALID[temp+i] = data[1+i];
					can_set_calid(channel,temp+i,data[1+i]);
				}
				break;
			case 0x03:	//CVN
				temp = ((data[0]&0x0F) -1)*7+3;
				for(i=0;i<7;i++)
				{
					if((temp+i) > 17) break;
					//OBD_RT.IUPR[temp+i] = data[1+i];
					can_set_iupr(channel,temp+i,data[1+i]);
				}
				break;
			case 0x04:	//IUPR
				temp = ((data[0]&0x0F) -1)*7+3;
				for(i=0;i<7;i++)
				{
					if((temp+i) > 35) break;
					//OBD_RT.IUPR[temp+i] = data[1+i];
					can_set_iupr(channel,temp+i,data[1+i]);
				}
				break;
			case 0x05:	//SCR上下游NOx传感器输出 
				//OBD_RT.SCRDNOX[0]	 = data[1];		//08,SCR下游NOx传感器输出值		0-3000
				//OBD_RT.SCRDNOX[1]	 = data[2];		//08,SCR下游NOx传感器输出值		0-3000
				can_set_lowerNOx(channel,(INT16S)byte_to_int16u(data[1],data[2]));
				break;
			case 0x06:	//09,反应剂余量(尿素)	0-250
				//OBD_RT.RTTMG = data[3];
				can_set_remain(channel,data[3]);
				break;
			case 0x07:	//SCR入口温度和出口温度 0～64255
				//OBD_RT.SCRITEMP[0] = data[3];			//11,SCR入口温度	WORD	1℃/bit 偏移-40℃
				//OBD_RT.SCRITEMP[1] = data[4];			//11,SCR入口温度	WORD	1℃/bit 偏移-40℃
		
				//OBD_RT.SCROTEMP[0]	= data[5];			//12,SCR出口温度	WORD	1℃/bit 偏移-40℃
				//OBD_RT.SCROTEMP[1]	= data[6];			//12,SCR出口温度	WORD	1℃/bit 偏移-40℃
				can_set_SCRInletTemperature(channel,(INT16S)byte_to_int16u(data[3],data[4]));
				can_set_SCROutletTemperature(channel,(INT16S)byte_to_int16u(data[5],data[6]));
				break;
			case 0x08:	//DTC
				switch(data[0]&0x0F)
				{
					case 0x01:
						can_set_dtc_buf(channel,0,data[1]);
						can_set_dtc_buf(channel,1,data[2]);
						can_set_dtc_buf(channel,2,data[3]);
						can_set_dtc_buf(channel,3,data[4]);
						can_set_dtc_buf(channel,4,data[6]);
						can_set_dtc_buf(channel,5,data[7]);
						break;
					case 0x02:
						can_set_dtc_buf(channel,6,data[1]);
						can_set_dtc_buf(channel,7,data[2]);
						can_set_dtc_buf(channel,8,data[4]);
						can_set_dtc_buf(channel,9,data[5]);
						can_set_dtc_buf(channel,10,data[6]);
						can_set_dtc_buf(channel,11,data[7]);

						break;
					case 0x03:
	
						can_set_dtc_buf(channel,12,data[2]);
						can_set_dtc_buf(channel,13,data[3]);
						can_set_dtc_buf(channel,14,data[4]);
						can_set_dtc_buf(channel,15,data[5]);
						can_set_dtc_buf(channel,16,data[7]);
						break;
					case 0x04:
						can_set_dtc_buf(channel,17,data[1]);
						can_set_dtc_buf(channel,18,data[2]);
						can_set_dtc_buf(channel,19,data[3]);
						can_set_dtc_buf(channel,20,data[5]);
						can_set_dtc_buf(channel,21,data[6]);
						can_set_dtc_buf(channel,22,data[7]);

						break;
					case 0x05:

						can_set_dtc_buf(channel,23,data[1]);
						can_set_dtc_buf(channel,24,data[3]);
						can_set_dtc_buf(channel,25,data[4]);
						can_set_dtc_buf(channel,26,data[5]);
						can_set_dtc_buf(channel,27,data[6]);
						break;
					case 0x06:
						
						can_set_dtc_buf(channel,28,data[1]);
						can_set_dtc_buf(channel,29,data[2]);
						can_set_dtc_buf(channel,30,data[3]);
						can_set_dtc_buf(channel,31,data[4]);
						can_set_dtc_buf(channel,32,data[6]);
						can_set_dtc_buf(channel,33,data[7]);

						break;
					case 0x07:

						can_set_dtc_buf(channel,34,data[1]);
						can_set_dtc_buf(channel,35,data[2]);
						can_set_dtc_buf(channel,36,data[4]);
						can_set_dtc_buf(channel,37,data[5]);
						can_set_dtc_buf(channel,38,data[6]);
						can_set_dtc_buf(channel,39,data[7]);
						break;
					case 0x08:
						can_set_dtc_buf(channel,40,data[2]);
						can_set_dtc_buf(channel,41,data[3]);
						can_set_dtc_buf(channel,42,data[4]);
						can_set_dtc_buf(channel,43,data[5]);
						can_set_dtc_buf(channel,44,data[7]);
						break;
					case 0x09:
	
						can_set_dtc_buf(channel,45,data[1]);
						can_set_dtc_buf(channel,46,data[2]);
						can_set_dtc_buf(channel,47,data[3]);
						can_set_dtc_buf(channel,48,data[5]);
						can_set_dtc_buf(channel,49,data[6]);
						can_set_dtc_buf(channel,50,data[7]);
						break;
				}
		}
	}

	#endif
}















