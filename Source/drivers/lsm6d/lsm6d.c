#include "lsm6d.h"

unsigned char lsm6d_write_reg(unsigned char reg,unsigned char val)
{
	unsigned char dat = val;

	return IIC_Write(0,LSM6D_DEV_ADDR,reg,&dat,1);
}

unsigned int lsm6d_read_reg(unsigned char reg,void *pbuf,unsigned int rlen)
{
	return IIC_Read(0,LSM6D_DEV_ADDR,reg,rlen,pbuf,rlen);
}

int lsm6d_init(void)
{
	//12.5hz +-16g
	if (lsm6d_write_reg(0x10,0x14))
	{
		return 1;
	}

	//12.5hz 2000dps
	if (lsm6d_write_reg(0x11,0x1C))
	{
		return 1;
	}

	return 0;
}

int lsm6d_set_low_power_mode(void)
{
	lsm6d_write_reg(0x15,0x10);
	lsm6d_write_reg(0x16,0x80);
	lsm6d_write_reg(0x13,1 << 6);

	return 0;
}



#include "math.h"

#define Kp 100.0f                        // 比例增益支配率收敛到加速度计/磁强计
#define Ki 0.002f                // 积分增益支配率的陀螺仪偏见的衔接
#define halfT 0.5f                // 采样周期的一半
float q0 = 1, q1 = 0, q2 = 0, q3 = 0;          // 四元数的元素，代表估计方向
float exInt = 0, eyInt = 0, ezInt = 0;        // 按比例缩小积分误差
float Yaw = 0,Pitch = 0,Roll = 0;  //偏航角，俯仰角，翻滚角


void calc_euler_angles(float gx, float gy, float gz, float ax, float ay, float az)
{
	float norm;
	float vx, vy, vz;
	float ex, ey, ez;

	// 测量正常化
	norm = sqrt(ax*ax + ay*ay + az*az);      
	ax = ax / norm;                   //单位化
	ay = ay / norm;
	az = az / norm;      


	// 估计方向的重力
	vx = 2*(q1*q3 - q0*q2);
	vy = 2*(q0*q1 + q2*q3);
	vz = q0*q0 - q1*q1 - q2*q2 + q3*q3;

	// 错误的领域和方向传感器测量参考方向之间的交叉乘积的总和
	ex = (ay*vz - az*vy);
	ey = (az*vx - ax*vz);
	ez = (ax*vy - ay*vx);

	// 积分误差比例积分增益
	exInt = exInt + ex*Ki;
	eyInt = eyInt + ey*Ki;
	ezInt = ezInt + ez*Ki;

	// 调整后的陀螺仪测量
	gx = gx + Kp*ex + exInt;
	gy = gy + Kp*ey + eyInt;
	gz = gz + Kp*ez + ezInt;

	// 整合四元数率和正常化
	q0 = q0 + (-q1*gx - q2*gy - q3*gz)*halfT;
	q1 = q1 + (q0*gx + q2*gz - q3*gy)*halfT;
	q2 = q2 + (q0*gy - q1*gz + q3*gx)*halfT;
	q3 = q3 + (q0*gz + q1*gy - q2*gx)*halfT;


	// 正常化四元
	norm = sqrt(q0*q0 + q1*q1 + q2*q2 + q3*q3);
	q0 = q0 / norm;
	q1 = q1 / norm;
	q2 = q2 / norm;
	q3 = q3 / norm;


	Pitch  = asin(-2 * q1 * q3 + 2 * q0* q2)* 57.3; // pitch ,转换为度数
	Roll = atan2(2 * q2 * q3 + 2 * q0 * q1, -2 * q1 * q1 - 2 * q2* q2 + 1)* 57.3; // rollv

	//Yaw = atan2(2*(q1*q2 + q0*q3),q0*q0+q1*q1-q2*q2-q3*q3) * 57.3;                //此处没有价值，注掉

}



void lsm6d_read_xyz(unsigned int *p_acce_x,unsigned int *p_acce_y,unsigned int *p_acce_z,
				unsigned int *p_gyr_x,unsigned int *p_gyr_y,unsigned int *p_gyr_z)
{
	unsigned char buf[16] = {0};
	unsigned int acce_x = 0;
	unsigned int acce_y = 0;
	unsigned int acce_z = 0;

	unsigned int gyr_x = 0;
	unsigned int gyr_y = 0;
	unsigned int gyr_z = 0;

	float acce_x_mg = 0;
	float acce_y_mg = 0;
	float acce_z_mg = 0;
	float gyr_x_dps = 0;
	float gyr_y_dps = 0;
	float gyr_z_dps = 0;
	unsigned long a = 0;
	unsigned long b = 0;


	a = cpu_clock();
	
	lsm6d_read_reg(X_GYR_L,buf,12);

	gyr_x = (buf[1] << 8) + buf[0];
	gyr_y = (buf[3] << 8) + buf[2];
	gyr_z = (buf[5] << 8) + buf[4];

	acce_x = (buf[7] << 8) + buf[6];
	acce_y = (buf[9] << 8) + buf[8];
	acce_z = (buf[11] << 8) + buf[10];

	if (acce_x >= 32768)
	{
		acce_x_mg = -1.0 * (65536 - acce_x) * 32 * 9.8 / 65536;
	}
	else
	{
		acce_x_mg = acce_x * 32 * 9.8 / 65536;

	}
	if (acce_y >= 32768)
	{
		acce_y_mg = -1.0 * (65536 - acce_y) * 32 * 9.8 / 65536;
	}
	else
	{
		acce_y_mg = acce_y * 32 * 9.8 / 65536;
	}

	if (acce_z >= 32768)
	{
		acce_z_mg = -1.0 * (65536 - acce_z) * 32 * 9.8 / 65536;
	}
	else
	{
		acce_z_mg = acce_z * 32 * 9.8 / 65536;
	}

	if (gyr_x >= 32768)
	{
		gyr_x_dps = -1.0 * (65536 - gyr_x) * 4000 * 0.0174532925 / 65536;
	}
	else
	{
		gyr_x_dps = gyr_x * 4000 * 0.0174532925 / 65536;
	}

	if (gyr_y >= 32768)
	{
		gyr_y_dps = -1.0 * (65536 - gyr_y) * 4000 * 0.0174532925 / 65536;
	}
	else
	{
		gyr_y_dps = gyr_y * 4000 * 0.0174532925 / 65536;
	}

	if (gyr_z >= 32768)
	{
		gyr_z_dps = -1.0 * (65536 - gyr_z) * 4000 * 0.0174532925 / 65536;
	}
	else
	{
		gyr_z_dps = gyr_z * 4000 * 0.0174532925 / 65536;
	}

	calc_euler_angles(gyr_x_dps,gyr_y_dps,gyr_z_dps,acce_x_mg,acce_y_mg,acce_z_mg);

	b = cpu_clock();

	DBG_Print(LEVEL4,"acce:%d %d %u gyr:%d %d %d\r\n",
					acce_x,acce_y,acce_z,gyr_x,gyr_y,gyr_z);

	//DBG_PrintBuf(LEVEL2,"raw xyz:\r\n",buf,12);

	DBG_Print(LEVEL4,"(%u)xyz:%f %f %f %f %f %f %f %f %f\r\n",
				b - a,
				acce_x_mg,acce_y_mg,acce_z_mg,
				gyr_x_dps,gyr_y_dps,gyr_z_dps,
				Yaw,Pitch,Roll);
}















