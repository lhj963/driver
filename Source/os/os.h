#ifndef __OS_H__
#define __OS_H__

#ifdef __cplusplus
extern "C" {
#endif

#include "os_cfg.h"

#define SYS_THREAD_STK_SIZE 	192

typedef struct tagOS_SEM
{
	void *pName;	//信号量名称
	INT8U sem_cnt;	//信号量数量
	INT32U timeout;
}OS_SEM;

typedef struct tagLFOSThread
{
	OS_STK *sp;				//栈顶指针
	OS_STK *bottom;			//栈底指针
	OS_STK *sp_init_ptr;	//堆顶初始指针
	INT32U stack_freed;		//空闲堆栈

	INT8U status;			//线程状态
	INT32U dly_tick;		//延时节拍
	INT32U use_cpu_tick;	//占用CPU的时间
	OS_SEM *pSem;			//信号量

}LFOSThread;

//需要移植的函数
extern void cpu_int_en(void);
extern void cpu_int_dis(void);
extern void start_thread(void);
extern void context_sw(void);
extern void context_sw_int(void);
extern void os_thread_stack_init(OS_STK **sp,void *thread_proc);

extern LFOSThread *pCurThread;
extern LFOSThread *pHighThread;



//调试相关的函数
extern LFOSThread *os_get_thread_ptr(INT8U thread_id);
extern OS_STK *os_get_sys_thread_stk_ptr(void);
extern INT8U get_cur_thread_id(void);
extern INT8U *os_get_mem_user_thread_id(INT8U mem_lib_id);



//需要在中断里面调用的函数
extern void os_tick(void);
extern void os_enter_int(void);
extern void os_exit_int(void);


//API接口
extern void os_init(void);
extern int os_create_thread(INT8U thread_id,void (*thread_proc)(void),
								OS_STK *sp,OS_STK *bottom);
extern void os_start(void);
extern void os_sleep(unsigned int t);
extern INT32U os_stack_used(unsigned char thread_id);
extern INT32U os_stack_freed(unsigned char thread_id);
extern INT16U os_get_version(void);


//信号量
extern int os_create_sem(OS_SEM *pSem,void *pName,INT8U cnt);
extern int os_sem_pend(OS_SEM *pSem,INT32U timeout);
extern int os_sem_post(OS_SEM *pSem);


//mem_lib_id:内存库ID
extern int os_create_mem(INT8U mem_lib_id,void *ptr,INT32U block_size,INT32U block_cnt);
extern void *os_mem_malloc(INT8U mem_lib_id);
extern int os_mem_free(INT8U mem_lib_id,void *ptr);
extern unsigned int os_mem_get_block_size(INT8U mem_lib_id);

extern void *os_malloc(INT32U size);

extern int os_free(void *ptr);



//唤醒线程
extern INT8U os_wakeup_thread(INT8U thread_id);
//获取线程堆栈使用情况
extern INT32U os_get_stack_size(INT8U thread_id);
extern INT32U os_get_stack_free(INT8U thread_id);


#ifdef __cplusplus
}
#endif

#endif




