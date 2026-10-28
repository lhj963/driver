#include "J1939.h"


//J1939协议解析
void j1939_analysis(char channel,CanRxMsg *pMsg)
{
	unsigned long can_id = 0;
	unsigned long PGN = 0;
	unsigned char *pdat = 0;
	EngineType st = get_engine_type();

	if (pMsg == 0)
	{
		return ;
	}

	can_id = pMsg->IDE ? pMsg->ExtId : pMsg->StdId;
	pdat = pMsg->Data;

	PGN = (can_id >> 8) & 0xFFFF;
	switch(PGN)
	{
	//巡航控制、车速信息
	case 0xFEF1:
	if ((st == EngineType_Compatible) || (st == EngineType_YC) 
		|| (st == EngineType_HL) || (st == EngineType_SKNY)
		|| (st == EngineType_DGM) || (st == EngineType_BCZK)
		|| (st == EngineType_WOW) || (st == EngineType_DML)
		|| (st == EngineType_XZZG)
	)
	{
		can_set_speed(channel,byte_to_int16u(pdat[2],pdat[1]));
	}
	break;
	//江淮星锐 车速
	case 0xFE6C:
	if ((st == EngineType_Compatible) || (st == EngineType_JH))
	{
		can_set_speed(channel,byte_to_int16u(pdat[7],pdat[6]));
	}
	break;

	//大气压力
	case 0xFEF5:
	can_set_kpa(channel,pdat[0]);
	break;

	//净输出扭矩和转速
	case 0xF004:
	can_set_actualtorquepercent(channel,pdat[2]);
	can_set_rpm(channel,byte_to_int16u(pdat[4],pdat[3]));
	break;

	//摩擦扭矩
	case 0xFEDF:
	if ((st == EngineType_Compatible) || (st == EngineType_YC) 
		|| (st == EngineType_HL) || (st == EngineType_SKNY)
		|| (st == EngineType_DGM) || (st == EngineType_BCZK)
		|| (st == EngineType_JH) || (st == EngineType_DML)
		|| (st == EngineType_XZZG)
	)
	{
		can_set_frictiontorquepercent(channel,pdat[0]);
	}
	break;

	//沃尔沃摩擦扭矩
	case 0xFF01:
	if ((st == EngineType_Compatible) || (st == EngineType_WOW))
	{
		can_set_frictiontorquepercent(channel,pdat[0]);
	}
	break;

	//燃料流量
	case 0xFEF2:
	can_set_fuelflow(channel,byte_to_int16u(pdat[1],pdat[0]));
	break;

	case 0xF00E:	//SCR上游NOx传感器输出 0～60255
	can_set_upperNOx(channel,(INT16S)byte_to_int16u(pdat[1],pdat[0]));
	break;
	case 0xF00F:	//SCR下游NOx传感器输入 0～60255
	can_set_lowerNOx(channel,(INT16S)byte_to_int16u(pdat[1],pdat[0]));
	break;
	case 0xFD3E:	//SCR入口温度和出口温度 0～64255
	if ((st == EngineType_Compatible) || (st == EngineType_BCZK)
	|| (st == EngineType_HL) || (st == EngineType_DGM)
	|| (st == EngineType_YC) || (st == EngineType_DML)
	|| (st == EngineType_WOW)
	)
	{
		can_set_SCRInletTemperature(channel,(INT16S)byte_to_int16u(pdat[1],pdat[0]));
		can_set_SCROutletTemperature(channel,(INT16S)byte_to_int16u(pdat[4],pdat[3]));
	}
	break;
	//江淮星锐 SCR入口温度 和 出口温度
	case 0xFDB3:
	if ((st == EngineType_Compatible) || (st == EngineType_JH))
	{
		can_set_SCRInletTemperature(channel,(INT16S)byte_to_int16u(pdat[3],pdat[2]));
		can_set_SCROutletTemperature(channel,(INT16S)byte_to_int16u(pdat[1],pdat[0]));
	}
	break;
	case 0xFEF6:
	if ((st == EngineType_Compatible) || (st == EngineType_XZZG))
	{
		can_set_SCRInletTemperature(channel,(INT16S)byte_to_int16u(pdat[3],pdat[2]));
		can_set_SCROutletTemperature(channel,(INT16S)byte_to_int16u(pdat[1],pdat[0]));
	}
	break;
	//DPF压差 
	case 0xFDB2:
	if ((st == EngineType_Compatible) || (st == EngineType_BCZK)
		|| (st == EngineType_YC) || (st == EngineType_HL)
		|| (st == EngineType_DML) || (st == EngineType_WOW)
		|| (st == EngineType_DGM) || (st == EngineType_JH)
	)
	{
		can_set_DPF(channel,byte_to_int16u(pdat[5],pdat[4]));
	}
	break;
	//DPF压差
	case 0xFEEB:
	if ((st == EngineType_Compatible) || (st == EngineType_XZZG))
	{
		can_set_DPF(channel,byte_to_int16u(pdat[5],pdat[4]));
	}
	break;
	case 0xFFA3:
	if ((st == EngineType_Compatible) || (st == EngineType_SKNY))
	{
		can_set_lowerNOx(channel,(INT16S)byte_to_int16u(pdat[1],pdat[0]));
		can_set_intakevolume(channel,byte_to_int16u(pdat[3],pdat[2]));
		can_set_SCRInletTemperature(channel,(INT16S)byte_to_int16u(pdat[5],pdat[4]));
		can_set_DPF(channel,byte_to_int16u(pdat[7],pdat[6]));
	}
	break;

	//反应剂余量(尿素)
	case 0xFE56:
	if ((st == EngineType_Compatible) || (st == EngineType_HL)
	|| (st == EngineType_JH) || (st == EngineType_BCZK) 
	|| (st == EngineType_YC)|| (st == EngineType_XZZG)
	|| (st == EngineType_DGM)|| (st == EngineType_WOW)
	|| (st == EngineType_DML)
	)
	{
		can_set_remain(channel,pdat[0]);
	}
	break;
	//反应剂余量(尿素)
	case 0xFF5F:
	if ((st == EngineType_Compatible) || (st == EngineType_SKNY))
	{
		can_set_remain(channel,pdat[0]);
	}
	break;

	case 0xF00A:	//进气量 		0~64255
	if ((st == EngineType_Compatible) || (st == EngineType_HL)
	|| (st == EngineType_JH) || (st == EngineType_BCZK) 
	|| (st == EngineType_YC)|| (st == EngineType_XZZG)
	|| (st == EngineType_DGM)|| (st == EngineType_WOW)
	|| (st == EngineType_DML)
	)
	{
		can_set_intakevolume(channel,byte_to_int16u(pdat[3],pdat[2]));
	}
	break;
	case 0xFEEE:	//冷却液温度				C 偏移-40℃
	can_set_coolanttemperature(channel,pdat[0]);
	break;
	case 0xFEFC:	//邮箱液位				%				
	can_set_oilboxlevel(channel,pdat[1]);
	break;

	//高精度里程
	case 0xFEC1:
	if ((st == EngineType_Compatible) || (st == EngineType_BCZK)
	|| (st == EngineType_SKNY) || (st == EngineType_DML)
	|| (st == EngineType_DGM) || (st == EngineType_WOW)
	)
	{
		can_set_milage(channel,byte_to_int32u(pdat[3],pdat[2],pdat[1],pdat[0]));
	}
	break;
	//汽车总里程
	case 0xFEE0:
	if ((st == EngineType_Compatible) || (st == EngineType_JH)
	|| (st == EngineType_YC))
	{
		can_set_milage(channel,byte_to_int32u(pdat[7],pdat[6],pdat[5],pdat[4]));
	}
	break;

	default:break;
	}

}







