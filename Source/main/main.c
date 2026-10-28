#include "includes.h"

//指定地址存放版本号 厂商标识等信息
const  char ver_info[]  __attribute__ ((at(SOFTWARE_INFO_ADDR))) = 
"<" MANUFACTURER_FLAG ">" "<" DRIVER_VERSION ">" "<" __DATE__ ">" "<" __TIME__ ">"; 


int main(void)
{
	start_os();
	return 0;
}


