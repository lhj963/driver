#ifndef __LSM6D_H__
#define __LSM6D_H__

#ifdef __cplusplus
extern "C" {
#endif

#define LSM6D_DEV_ADDR 0xD4

#define X_GYR_L 				0x22
#define X_GYR_H 				0x23
#define Y_GYR_L 				0x24
#define Y_GYR_H 				0x25
#define Z_GYR_L 				0x26
#define Z_GYR_H 				0x27

#define X_ACCE_L 				0x28
#define X_ACCE_H 				0x29
#define Y_ACCE_L 				0x2A
#define Y_ACCE_H 				0x2B
#define Z_ACCE_L 				0x2C
#define Z_ACCE_H 				0x2D



extern int lsm6d_init(void);

extern int lsm6d_set_low_power_mode(void);

extern void lsm6d_read_xyz(unsigned int *p_acce_x,unsigned int *p_acce_y,unsigned int *p_acce_z,
				unsigned int *p_gyr_x,unsigned int *p_gyr_y,unsigned int *p_gyr_z);



#ifdef __cplusplus
}
#endif

#endif




