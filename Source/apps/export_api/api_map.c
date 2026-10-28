#include "api_map.h"

void * const api_func_address[] = 
{
	DBG_Print,
	DBG_PrintBuf,
	Set_DBG_Level,
	Get_DBG_Level,
	rsv,
/* -------------------------OS相关------------------------- */
	os_create_thread,
	os_sleep,
	os_create_sem,
	os_sem_pend,
	os_sem_post,	
	os_malloc,
	os_free,

	rsv,
	rsv,
	rsv,
	rsv,
	rsv,
	rsv,
	rsv,
	rsv,
/* -----------------CAN相关----------------- */
	can_init,
	can_send_data,
	rsv,
	rsv,
	rsv,
	rsv,
	rsv,
	rsv,
	send_msg,
	install_hook_msg,
	reg_callback_msg,
	GetRunTime,
};







