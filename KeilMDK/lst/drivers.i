#line 1 "..\\Source\\drivers\\drivers.c"
#line 1 "..\\Source\\drivers\\drivers.h"








#line 1 "..\\Source\\main\\includes.h"







#line 1 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"
 
 
 





 






 







 




  
 








#line 47 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"


  



    typedef unsigned int size_t;    









 
 

 



    typedef struct __va_list __va_list;






   




 




typedef struct __fpos_t_struct {
    unsigned __int64 __pos;
    



 
    struct {
        unsigned int __state1, __state2;
    } __mbstate;
} fpos_t;
   


 


   

 

typedef struct __FILE FILE;
   






 

#line 136 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"


extern FILE __stdin, __stdout, __stderr;
extern FILE *__aeabi_stdin, *__aeabi_stdout, *__aeabi_stderr;

#line 166 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"
    

    

    





     



   


 


   


 

   



 

   


 




   


 





    


 






extern __declspec(__nothrow) int remove(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int rename(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) FILE *tmpfile(void);
   




 
extern __declspec(__nothrow) char *tmpnam(char *  );
   











 

extern __declspec(__nothrow) int fclose(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) int fflush(FILE *  );
   







 
extern __declspec(__nothrow) FILE *fopen(const char * __restrict  ,
                           const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   








































 
extern __declspec(__nothrow) FILE *freopen(const char * __restrict  ,
                    const char * __restrict  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(2,3)));
   








 
extern __declspec(__nothrow) void setbuf(FILE * __restrict  ,
                    char * __restrict  ) __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) int setvbuf(FILE * __restrict  ,
                   char * __restrict  ,
                   int  , size_t  ) __attribute__((__nonnull__(1)));
   















 
#pragma __printf_args
extern __declspec(__nothrow) int fprintf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   


















 
#pragma __printf_args
extern __declspec(__nothrow) int _fprintf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   




 
#pragma __printf_args
extern __declspec(__nothrow) int _printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






 
#pragma __printf_args
extern __declspec(__nothrow) int _sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int __ARM_snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));


#pragma __printf_args
extern __declspec(__nothrow) int snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   















 

#pragma __printf_args
extern __declspec(__nothrow) int _snprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int fscanf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






























 
#pragma __scanf_args
extern __declspec(__nothrow) int _fscanf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   






 
#pragma __scanf_args
extern __declspec(__nothrow) int _scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int sscanf(const char * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   








 
#pragma __scanf_args
extern __declspec(__nothrow) int _sscanf(const char * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

 
extern __declspec(__nothrow) int vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int _vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int _vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int _vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int __ARM_vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int _vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int vfprintf(FILE * __restrict  ,
                    const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int vsprintf(char * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int __ARM_vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));

extern __declspec(__nothrow) int vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   







 

extern __declspec(__nothrow) int _vsprintf(char * __restrict  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vfprintf(FILE * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vsnprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int asprintf(char **  , const char * __restrict  , ...) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) int vasprintf(char **  , const char * __restrict  , __va_list  ) __attribute__((__nonnull__(2)));

#pragma __printf_args
extern __declspec(__nothrow) int __ARM_asprintf(char **  , const char * __restrict  , ...) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) int __ARM_vasprintf(char **  , const char * __restrict  , __va_list  ) __attribute__((__nonnull__(2)));
   








 

extern __declspec(__nothrow) int fgetc(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) char *fgets(char * __restrict  , int  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   










 
extern __declspec(__nothrow) int fputc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   







 
extern __declspec(__nothrow) int fputs(const char * __restrict  , FILE * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int getc(FILE *  ) __attribute__((__nonnull__(1)));
   







 




    extern __declspec(__nothrow) int (getchar)(void);

   





 
extern __declspec(__nothrow) char *gets(char *  ) __attribute__((__nonnull__(1)));
   









 
extern __declspec(__nothrow) int putc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   





 




    extern __declspec(__nothrow) int (putchar)(int  );

   



 
extern __declspec(__nothrow) int puts(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int ungetc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   






















 

extern __declspec(__nothrow) size_t fread(void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   











 

extern __declspec(__nothrow) size_t __fread_bytes_avail(void * __restrict  ,
                    size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   











 

extern __declspec(__nothrow) size_t fwrite(const void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   







 

extern __declspec(__nothrow) int fgetpos(FILE * __restrict  , fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) int fseek(FILE *  , long int  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) int fsetpos(FILE * __restrict  , const fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   










 
extern __declspec(__nothrow) long int ftell(FILE *  ) __attribute__((__nonnull__(1)));
   











 
extern __declspec(__nothrow) void rewind(FILE *  ) __attribute__((__nonnull__(1)));
   





 

extern __declspec(__nothrow) void clearerr(FILE *  ) __attribute__((__nonnull__(1)));
   




 

extern __declspec(__nothrow) int feof(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) int ferror(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) void perror(const char *  );
   









 

extern __declspec(__nothrow) int _fisatty(FILE *   ) __attribute__((__nonnull__(1)));
    
 

extern __declspec(__nothrow) void __use_no_semihosting_swi(void);
extern __declspec(__nothrow) void __use_no_semihosting(void);
    





 











#line 1021 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"



 

#line 9 "..\\Source\\main\\includes.h"
#line 1 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
 
 
 




 
 



 






   














  


 








#line 54 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


  



    typedef unsigned int size_t;    
#line 70 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"






    



    typedef unsigned short wchar_t;  
#line 91 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"

typedef struct div_t { int quot, rem; } div_t;
    
typedef struct ldiv_t { long int quot, rem; } ldiv_t;
    

typedef struct lldiv_t { long long quot, rem; } lldiv_t;
    


#line 112 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
   



 

   




 
#line 131 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
   


 
extern __declspec(__nothrow) int __aeabi_MB_CUR_MAX(void);

   




 

   




 




extern __declspec(__nothrow) double atof(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int atoi(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) long int atol(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) long long atoll(const char *  ) __attribute__((__nonnull__(1)));
   



 


extern __declspec(__nothrow) double strtod(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

















 

extern __declspec(__nothrow) float strtof(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) long double strtold(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

 

extern __declspec(__nothrow) long int strtol(const char * __restrict  ,
                        char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   



























 
extern __declspec(__nothrow) unsigned long int strtoul(const char * __restrict  ,
                                       char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   


























 

 
extern __declspec(__nothrow) long long strtoll(const char * __restrict  ,
                                  char ** __restrict  , int  )
                          __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) unsigned long long strtoull(const char * __restrict  ,
                                            char ** __restrict  , int  )
                                   __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) int rand(void);
   







 
extern __declspec(__nothrow) void srand(unsigned int  );
   






 

struct _rand_state { int __x[57]; };
extern __declspec(__nothrow) int _rand_r(struct _rand_state *);
extern __declspec(__nothrow) void _srand_r(struct _rand_state *, unsigned int);
struct _ANSI_rand_state { int __x[1]; };
extern __declspec(__nothrow) int _ANSI_rand_r(struct _ANSI_rand_state *);
extern __declspec(__nothrow) void _ANSI_srand_r(struct _ANSI_rand_state *, unsigned int);
   


 

extern __declspec(__nothrow) void *calloc(size_t  , size_t  );
   



 
extern __declspec(__nothrow) void free(void *  );
   





 
extern __declspec(__nothrow) void *malloc(size_t  );
   



 
extern __declspec(__nothrow) void *realloc(void *  , size_t  );
   













 

extern __declspec(__nothrow) int posix_memalign(void **  , size_t  , size_t  );
   









 

typedef int (*__heapprt)(void *, char const *, ...);
extern __declspec(__nothrow) void __heapstats(int (*  )(void *  ,
                                           char const *  , ...),
                        void *  ) __attribute__((__nonnull__(1)));
   










 
extern __declspec(__nothrow) int __heapvalid(int (*  )(void *  ,
                                           char const *  , ...),
                       void *  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) __declspec(__noreturn) void abort(void);
   







 

extern __declspec(__nothrow) int atexit(void (*  )(void)) __attribute__((__nonnull__(1)));
   




 
#line 436 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


extern __declspec(__nothrow) __declspec(__noreturn) void exit(int  );
   












 

extern __declspec(__nothrow) __declspec(__noreturn) void _Exit(int  );
   







      

extern __declspec(__nothrow) char *getenv(const char *  ) __attribute__((__nonnull__(1)));
   









 

extern __declspec(__nothrow) int  system(const char *  );
   









 

extern  void *bsearch(const void *  , const void *  ,
              size_t  , size_t  ,
              int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,2,5)));
   












 
#line 524 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


extern  void qsort(void *  , size_t  , size_t  ,
           int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,4)));
   









 

#line 553 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"

extern __declspec(__nothrow) __attribute__((const)) int abs(int  );
   



 

extern __declspec(__nothrow) __attribute__((const)) div_t div(int  , int  );
   









 
extern __declspec(__nothrow) __attribute__((const)) long int labs(long int  );
   



 




extern __declspec(__nothrow) __attribute__((const)) ldiv_t ldiv(long int  , long int  );
   











 







extern __declspec(__nothrow) __attribute__((const)) long long llabs(long long  );
   



 




extern __declspec(__nothrow) __attribute__((const)) lldiv_t lldiv(long long  , long long  );
   











 
#line 634 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"




 
typedef struct __sdiv32by16 { int quot, rem; } __sdiv32by16;
typedef struct __udiv32by16 { unsigned int quot, rem; } __udiv32by16;
    
typedef struct __sdiv64by32 { int rem, quot; } __sdiv64by32;

__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __sdiv32by16 __rt_sdiv32by16(
     int  ,
     short int  );
   

 
__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __udiv32by16 __rt_udiv32by16(
     unsigned int  ,
     unsigned short  );
   

 
__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __sdiv64by32 __rt_sdiv64by32(
     int  , unsigned int  ,
     int  );
   

 




 
extern __declspec(__nothrow) unsigned int __fp_status(unsigned int  , unsigned int  );
   







 























 
extern __declspec(__nothrow) int mblen(const char *  , size_t  );
   












 
extern __declspec(__nothrow) int mbtowc(wchar_t * __restrict  ,
                   const char * __restrict  , size_t  );
   















 
extern __declspec(__nothrow) int wctomb(char *  , wchar_t  );
   













 





 
extern __declspec(__nothrow) size_t mbstowcs(wchar_t * __restrict  ,
                      const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 
extern __declspec(__nothrow) size_t wcstombs(char * __restrict  ,
                      const wchar_t * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 

extern __declspec(__nothrow) void __use_realtime_heap(void);
extern __declspec(__nothrow) void __use_realtime_division(void);
extern __declspec(__nothrow) void __use_two_region_memory(void);
extern __declspec(__nothrow) void __use_no_heap(void);
extern __declspec(__nothrow) void __use_no_heap_region(void);

extern __declspec(__nothrow) char const *__C_library_version_string(void);
extern __declspec(__nothrow) int __C_library_version_number(void);











#line 892 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"





 
#line 10 "..\\Source\\main\\includes.h"
#line 1 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
 
 
 
 




 








 












#line 38 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\string.h"


  



    typedef unsigned int size_t;    
#line 54 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\string.h"




extern __declspec(__nothrow) void *memcpy(void * __restrict  ,
                    const void * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) void *memmove(void *  ,
                    const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   







 
extern __declspec(__nothrow) char *strcpy(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncpy(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 

extern __declspec(__nothrow) char *strcat(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncat(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 






 

extern __declspec(__nothrow) int memcmp(const void *  , const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strcmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int strncmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcasecmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strncasecmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcoll(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   







 

extern __declspec(__nothrow) size_t strxfrm(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   













 


#line 193 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) void *memchr(const void *  , int  , size_t  ) __attribute__((__nonnull__(1)));

   





 

#line 209 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   




 

extern __declspec(__nothrow) size_t strcspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 

#line 232 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strpbrk(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   




 

#line 247 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strrchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   





 

extern __declspec(__nothrow) size_t strspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   



 

#line 270 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strstr(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   





 

extern __declspec(__nothrow) char *strtok(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) char *_strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

extern __declspec(__nothrow) char *strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

   

































 

extern __declspec(__nothrow) void *memset(void *  , int  , size_t  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) char *strerror(int  );
   





 
extern __declspec(__nothrow) size_t strlen(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) size_t strlcpy(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   
















 

extern __declspec(__nothrow) size_t strlcat(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






















 

extern __declspec(__nothrow) void _membitcpybl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpybb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
    














































 







#line 502 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\string.h"



 

#line 11 "..\\Source\\main\\includes.h"


typedef unsigned int  u32;
typedef unsigned short u16;
typedef unsigned char u8;


#line 1 "..\\Source\\main\\../os/os.h"







#line 1 "..\\Source\\main\\../os/os_cfg.h"















typedef unsigned char INT8U;
typedef unsigned short INT16U;
typedef unsigned int INT32U;

typedef char INT8S;
typedef short INT16S;
typedef int INT32S;



typedef unsigned int OS_STK;














#line 9 "..\\Source\\main\\../os/os.h"



typedef struct tagOS_SEM
{
	void *pName;	
	INT8U sem_cnt;	
	INT32U timeout;
}OS_SEM;

typedef struct tagLFOSThread
{
	OS_STK *sp;				
	OS_STK *bottom;			
	OS_STK *sp_init_ptr;	
	INT32U stack_freed;		

	INT8U status;			
	INT32U dly_tick;		
	INT32U use_cpu_tick;	
	OS_SEM *pSem;			

}LFOSThread;


extern void cpu_int_en(void);
extern void cpu_int_dis(void);
extern void start_thread(void);
extern void context_sw(void);
extern void context_sw_int(void);
extern void os_thread_stack_init(OS_STK **sp,void *thread_proc);

extern LFOSThread *pCurThread;
extern LFOSThread *pHighThread;




extern LFOSThread *os_get_thread_ptr(INT8U thread_id);
extern OS_STK *os_get_sys_thread_stk_ptr(void);
extern INT8U get_cur_thread_id(void);
extern INT8U *os_get_mem_user_thread_id(INT8U mem_lib_id);




extern void os_tick(void);
extern void os_enter_int(void);
extern void os_exit_int(void);



extern void os_init(void);
extern int os_create_thread(INT8U thread_id,void (*thread_proc)(void),
								OS_STK *sp,OS_STK *bottom);
extern void os_start(void);
extern void os_sleep(unsigned int t);
extern INT32U os_stack_used(unsigned char thread_id);
extern INT32U os_stack_freed(unsigned char thread_id);
extern INT16U os_get_version(void);



extern int os_create_sem(OS_SEM *pSem,void *pName,INT8U cnt);
extern int os_sem_pend(OS_SEM *pSem,INT32U timeout);
extern int os_sem_post(OS_SEM *pSem);



extern int os_create_mem(INT8U mem_lib_id,void *ptr,INT32U block_size,INT32U block_cnt);
extern void *os_mem_malloc(INT8U mem_lib_id);
extern int os_mem_free(INT8U mem_lib_id,void *ptr);
extern unsigned int os_mem_get_block_size(INT8U mem_lib_id);

extern void *os_malloc(INT32U size);

extern int os_free(void *ptr);




extern INT8U os_wakeup_thread(INT8U thread_id);

extern INT32U os_get_stack_size(INT8U thread_id);
extern INT32U os_get_stack_free(INT8U thread_id);











#line 19 "..\\Source\\main\\includes.h"

#line 21 "..\\Source\\main\\includes.h"

#line 1 "..\\Source\\main\\../drivers/drivers.h"
#line 23 "..\\Source\\main\\includes.h"
	
#line 1 "..\\Source\\main\\../apps/apps.h"








#line 1 "..\\Source\\main\\includes.h"
#line 10 "..\\Source\\main\\../apps/apps.h"

#line 1 "..\\Source\\main\\../apps/./two_cpu_com_protocol/two_cpu_com_protocol.h"













#line 21 "..\\Source\\main\\../apps/./two_cpu_com_protocol/two_cpu_com_protocol.h"


#line 29 "..\\Source\\main\\../apps/./two_cpu_com_protocol/two_cpu_com_protocol.h"































#line 80 "..\\Source\\main\\../apps/./two_cpu_com_protocol/two_cpu_com_protocol.h"


#line 99 "..\\Source\\main\\../apps/./two_cpu_com_protocol/two_cpu_com_protocol.h"


#line 107 "..\\Source\\main\\../apps/./two_cpu_com_protocol/two_cpu_com_protocol.h"


#line 128 "..\\Source\\main\\../apps/./two_cpu_com_protocol/two_cpu_com_protocol.h"

#line 138 "..\\Source\\main\\../apps/./two_cpu_com_protocol/two_cpu_com_protocol.h"



extern unsigned int tccp_pack(unsigned short msgid,void *content,unsigned int contentlen,
							void *pOutBuf,unsigned int outbuflen);

 
extern int tccp_unpack(void *pdat,unsigned int len,
					void (*pCallBackAnalyze)(unsigned int msgid,void *content,unsigned int contentlen),
					void (*pCallBackError)(void *pdat,unsigned int len));

extern unsigned int tccp_unpack1(void *pdat,unsigned int len,
					void (*pCallBackAnalyze)(unsigned int msgid,void *content,unsigned int contentlen),
					void (*pCallBackError)(void *pdat,unsigned int len));






#line 12 "..\\Source\\main\\../apps/apps.h"

#line 1 "..\\Source\\main\\../apps/./SysParam/SysParam.h"











#line 19 "..\\Source\\main\\../apps/./SysParam/SysParam.h"














































typedef enum tagEngineType
{
	EngineType_Compatible = 0,	
	EngineType_YC,		
	EngineType_HL,		
	EngineType_JH,		
	EngineType_SKNY,	
	EngineType_DGM,		
	EngineType_BCZK, 	
	EngineType_WOW,		
	EngineType_DML, 	

	EngineType_XZZG, 	

	EngineType_MAX,
}EngineType;

typedef struct tagDate
{
	INT8U year;
	INT8U month;
	INT8U day;
	INT8U hour;
	INT8U min;
	INT8U sec;
}Date;

typedef enum tagUpdateResult
{
	UPDATE_OK = 0,
	UPDATE_FALSE
}UpdateResult;

typedef enum tagUpdateStatus
{
	UPDATE_STATUS_NO = 0x12,			
	UPDATE_STATUS_START = 0x34,			
	UPDATE_STATUS_FILE_OK = 0x56,		
	UPDATE_STATUS_UPDATE_OK = 0x78,		
										
	UPDATE_STATUS_UPDATE_FAIL = 0x90,	
}UpdateStatus;





typedef struct tagUpdateInfo
{
	UpdateStatus eUpdateStatus;						
	INT8U ucUpdateWay;						
	INT32U ulStartAddr;						
	INT32U ulEndAddr;						
	INT32U ulTotalBytes;					
	INT16U usTotalPackCnt;						
	Date stStartTime;				
	INT32U ulStartTime;				
	Date stEndTime;					
	INT32U ulEndTime;				
	INT32U ulTakeTimes;				
	INT8S szReportPhone[20];
	INT8S szServerAddr[32];
	INT16U usServerPort;
	INT8S szUpdateFileName[32];
}UpdateInfo;






typedef void (*dbg_usart_data_arrive_callback)(void *pdat,unsigned int rlen);

typedef void (*gps_usart_data_arrive_callback)(void *pdat,unsigned int rlen);

typedef void (*server_data_arrive_callback)(unsigned char channel,void *pdat,unsigned int rlen);
typedef void (*linux_cmd_ack_data_arrive_callback)(void *pdat,unsigned int rlen);
typedef void (*cache_data_arrive_callback)(unsigned char cache_data_type_id,void *pdat,unsigned int rlen);
typedef void (*main_power_off_callback)(void *parg);

typedef void (*easy_change_param_arrive_callback)(void *pdat,unsigned int rlen);

typedef void (*file_data_arrive_callback)(unsigned int file_type,unsigned int offset,void *pdat,unsigned int rlen);
typedef void (*user_msg_arrive_callback)(unsigned int msgid,void *pdat,unsigned int rlen);
typedef void (*sms_msg_arrive_callback)(unsigned char *ptime,void *phone_num,void *sms_content,unsigned int sms_content_len);

typedef void (*timer_one_ms_func)(void);

extern unsigned char *get_beian_msg_body_with_sign_ptr(void);

extern unsigned char *get_jiami_chip_id_ptr(void);
extern unsigned char *get_public_key_ptr(void);
extern unsigned short get_gps_ant_ad_val(unsigned char idx);
extern void add_gps_ant_ad_val_to_list(unsigned short val);

extern INT16U *get_main_power_ad_val_ptr(void);
extern unsigned short get_main_power_ad_val(unsigned char idx);
extern void add_main_power_ad_val_to_list(unsigned short val);


extern void set_net_link_status(unsigned char channel,unsigned char val);
extern unsigned char get_net_link_status(unsigned char channel);
extern unsigned char get_sim_signal_strength(void);
extern void set_sim_signal_strength(unsigned char val);

extern void set_gps_ant_status(unsigned char val);
extern void set_gprs_ant_status(unsigned char val);
extern void set_can_status(unsigned char channel,unsigned char val);
extern void set_acc_status(unsigned char val);
extern unsigned char get_can_status(unsigned char channel);
extern unsigned char get_acc_status(void);
extern unsigned char get_gsenser_chip_status(void);
extern void set_gsenser_chip_status(unsigned char val);
extern unsigned char get_at24c08_chip_status(void);
extern void set_at24c08_chip_status(unsigned char val);
extern unsigned char get_gps_module_status(void);
extern void set_gps_module_status(unsigned char val);
extern unsigned char get_collect_cache_data_flag(void);
extern void set_collect_cache_data_flag(unsigned char val);
extern INT8U get_power_supply_mode(void);
extern void set_power_supply_mode(INT8U val);


extern unsigned int get_mcu_status1(void);
extern void set_mcu_status1(unsigned int val);


extern unsigned char get_emmc_chip_status(void);
extern unsigned char get_jiami_chip_status(void);
extern unsigned char get_wifi_status(void);
extern unsigned int get_mpu_status1(void);
extern void set_mpu_status1(unsigned int val);

extern unsigned int get_mpu_uart_bps(void);
extern void set_mpu_uart_bps(unsigned int val);

extern unsigned char get_mpu_heart_flag(void);
extern void set_mpu_heart_flag(unsigned char val);
extern unsigned char get_report_mcu_status_flag(void);
extern void set_report_mcu_status_flag(unsigned char val);


extern unsigned int get_no_mpu_msg_time(void);
extern void set_no_mpu_msg_time(unsigned int val);

extern char *get_imei_ptr(void);
extern char *get_iccid_ptr(void);

extern unsigned char *get_rtc_time(void);
extern void set_rtc_time(unsigned char t[6]);


extern void set_open_ec20_flag(INT8U val);

extern INT8U get_open_ec20_flag(void);


extern void set_heart_beat_sw(INT8U val);
extern INT8U get_heart_beat_sw(void);

extern char *get_app_ver_ptr(void);

extern char *get_mpu_ver_ptr(void);
extern unsigned int get_mpu_ver(void *pOut,unsigned int outbuflen);
extern void set_mpu_ver(void *ptr,unsigned int len);



extern easy_change_param_arrive_callback get_easy_change_param_arrive_callback_ptr(void);
extern void reg_easy_change_param_arrive_callback(void (*dat_arrive_callback)(void *,unsigned int));

extern file_data_arrive_callback get_file_data_arrive_callback_ptr(void);
extern void reg_file_data_arrive_callback(file_data_arrive_callback cb);


extern user_msg_arrive_callback get_user_msg_arrive_callback_ptr(void);
extern void reg_user_msg_arrive_callback(user_msg_arrive_callback cb);

extern sms_msg_arrive_callback get_sms_msg_arrive_callback_ptr(void);
extern void reg_sms_msg_arrive_callback(sms_msg_arrive_callback cb);


extern main_power_off_callback get_main_power_off_callback_ptr(void);
extern void reg_main_power_off_callback(main_power_off_callback pf);

extern timer_one_ms_func get_timer_one_ms_func_ptr(void);

extern void reg_timer_one_ms_func_callback(timer_one_ms_func func);


extern dbg_usart_data_arrive_callback get_dbg_usart_data_arrive_callback_ptr(void);
extern void reg_dbg_usart_data_arrive_callback(void (*dat_arrive_callback)(void *,unsigned int));


extern gps_usart_data_arrive_callback get_gps_usart_data_arrive_callback_ptr(void);

extern void reg_gps_usart_data_arrive_callback(void (*dat_arrive_callback)(void *,unsigned int));


extern void reg_server_data_arrive_callback(void (*dat_arrive_callback)(unsigned char,void *,unsigned int));

extern server_data_arrive_callback get_server_data_arrive_callback_ptr(void);


extern linux_cmd_ack_data_arrive_callback get_linux_cmd_ack_data_arrive_callback_ptr(void);

extern void reg_linux_cmd_ack_data_arrive_callback(linux_cmd_ack_data_arrive_callback pf);



extern cache_data_arrive_callback get_cache_data_arrive_callback_ptr(void);
extern void reg_cache_data_arrive_callback(cache_data_arrive_callback pf);


extern void SetCanToUsbFlag(INT8U val);

extern INT8U GetCanToUsbFlag(void);


extern unsigned char is_mdm_dbg_mode(void);

extern void set_mdm_dbg_mode(unsigned char val);


extern unsigned long GetRunTime(void);


extern void RunTimeAdd(void);



extern unsigned int get_main_power_vol(void);

extern void set_main_power_vol(unsigned int val);

extern unsigned int get_bat_power_vol(void);

extern void set_bat_power_vol(unsigned int val);


extern void SetStartTest(INT8U val);

extern INT8U GetStartTest(void);


extern void SetModemExistFlag(INT8U ucFlag);
extern INT8U GetModemExistFlag(void);
extern void SetGPSExistFlag(INT8U ucFlag);
extern INT8U GetGPSExistFlag(void);

extern INT8U GetReportStatus(void);

extern void SetReportStatus(INT8U ucStatus);


extern INT8U GetSystemRestart(void);

extern void SetSystemRestart(INT8U ucFlag);


extern INT8U GetServerChangeFlag(INT8U idx);
extern void SetServerChangeFlag(INT8U idx,INT8U ucFlag);


extern INT8U GetEmptyStoreBlockFlag(void);
extern void SetEmptyStoreBlockFlag(INT8U ucFlag);
extern INT16U GetEmpyStoreBlockNo(void);
extern void SetEmpyStoreBlockNo(INT16U ucFlag);



typedef struct tagSysParam
{
	INT16U usInitFlag;								
	INT8S szServerAddr[8][32];		
	INT16U ausPort[8];				
	INT8U ucSocketType[8];							

	
	INT8S szFtpServerAddr[48];					
	INT16U usFtpServerPort;						
	INT8S szFtpUsername[32];
	INT8S szFtpPassword[32];
	INT8S szFtpDownloadFileName[48];			
	INT8U ftp_file_type;
	INT8U ftp_trans_mode;
	INT8S szFtpAutoUpdateCfgFile[32];			


	INT8U ucAutoUpdateSw;					

	
	INT8S szEmailSendUser[32];			
	INT8S szEmailSendPsw[32];			

	INT8S szApn[32];
	INT8S szApnUsername[32];
	INT8S szApnPassword[32];

	INT8U ucIsFirstPlatCN6;						
	INT32U ulReportInv6;						
	INT32U ulReportInv5;						

	INT32U ulDbgUsartBps;					
	INT8U ucDbgUsartParity;					

	INT32U ulModemUsartBps;					
	INT8U ucModemUsartParity;

	INT32U ulGpsUsartBps;					
	INT8U ucGpsUsartParity;

	INT32U ulWifiUsartBps;					
	INT8U ucWifiUsartParity;

	INT32U ulBtUsartBps;					
	INT8U ucBtUsartParity;

	INT32U ulSensorUsartBps;				
	INT8U ucSensorUsartParity;

	INT32U ulPeriUsartBps;					
	INT8U ucPeriUsartParity;

	unsigned int aeCanBaudRate[3];			

	
	INT8U ucCN6_Ver;
	INT8U ucCN6_Way;

	INT8S szVIN[17 + 1];
	INT8S szSN[32 + 1];

	INT8U BCDPhoneNo[6];				
	INT8U ucEncryptionMethod;			

	INT16U usProviceID;					
	INT16U usCityID;					
	INT8U aucManufacturerID[5];			
	INT8U aucTerminalModel[8];			
	INT8U aucTerminalID[7];				
	INT8U ucLicensePlateColor;			
	INT8S szLicensePlate[32];			

	INT8S aucAuthenticationCode[41];	

	 
	INT16U usMainPowerThreshold;

	 
	INT8U ucLimitSpeed;

	EngineType stEngineType;		
	unsigned char ucCanChannel;
	
}SysParam;






extern INT16U GetSysParamSize(void);


extern void LoadUserParam(void);
extern void UserParamDefault(void);
extern void SaveSysParam(void);

extern INT8U GetDefaultFlag(void);

extern void SetDefaultFlag(INT8U val);

extern void SetReportInv6(INT32U ulValue);
extern INT32U GetReportInv6(void);
extern void SetReportInv5(INT32U ulValue);
extern INT32U GetReportInv5(void);

extern INT8U IsFirstPlatCN6(void);
extern void SetFirstPlatCN6(INT8U ucFlag);


extern INT32U GetModemBps(void);

extern INT8U GetAutoUpdateSw(void);

extern INT32U GetGpsBps(void);

extern INT32U GetPeriBps(void);

extern INT32U GetDbgBps(void);

extern INT8U GetDbgParity(void);

extern INT8U GetModemParity(void);

extern INT8U GetGpsParity(void);

extern INT8U GetPeriParity(void);

extern INT32U SetDbgBps(INT32U bps);

extern void SetAutoUpdateSw(INT8U sw);

extern INT32U SetModemBps(INT32U bps);
extern INT32U SetGpsBps(INT32U bps);
extern INT32U SetPeriBps(INT32U bps);

extern INT8U SetDbgParity(INT8U ucParity);

extern INT8U SetModemParity(INT8U ucParity);

extern INT8U SetGpsParity(INT8U ucParity);

extern INT8U SetPeriParity(INT8U ucParity);

extern unsigned int GetCan0Bps(void);

extern void SetCan0Bps(unsigned int canbps);

extern unsigned int GetCan1Bps(void);

extern void SetCan1Bps(unsigned int canbps);

extern unsigned int GetCan2Bps(void);

extern void SetCan2Bps(unsigned int canbps);


extern char *GetFtpServerAddr(void);

extern void SetFtpServerAddr(char *szServerAddr);

extern char *GetFtpUsername(void);

extern void SetFtpUsername(char *username);

extern char *GetFtpPassword(void);

extern void SetFtpPassword(char *psd);

extern INT16U GetFtpServerPort(void);

extern void SetFtpServerPort(INT16U usPort);

extern char *GetFtpDownloadFileName(void);

extern void SetFtpDownloadFileName(char *szFtpDownloadFileName);

extern void SetFtpTransMode(INT8U val);

extern void SetFtpFileType(INT8U val);

extern INT8U GetFtpFileType(void);
extern INT8U GetFtpTransMode(void);

extern INT8S *GetFtpAutoUpdateCfgFile(void);

void SetFtpAutoUpdateCfgFile(char *szFileName);


extern void SPSetApn(unsigned char idx,char *szApn);
extern void SPSetApnUsername(unsigned char idx,char *str);
extern void SPSetApnPassword(unsigned char idx,char *str);

extern char *SPGetApn(unsigned char idx);
extern char *SPGetApnUsername(unsigned char idx);
extern char *SPGetApnPassword(unsigned char idx);


extern void SPSetServerAddr(INT8U idx,void *szAddr);
extern char *SPGetServerAddr(INT8U idx);
extern void SPSetServerPort(INT8U idx,INT16U usPort);
extern INT16U SPGetServerPort(INT8U idx);


extern INT8U GetSocketType(unsigned char idx);
extern INT8U ServerLinkIsTcp(unsigned char idx);

extern void SetSocketType(unsigned char idx,char is_tcp);


extern void SetSN(void *szSN);
extern INT8S *GetSN(void);
extern void SetVIN(void *szVIN);
extern INT8S *GetVIN(void);
extern INT8U *GetEncryptionMethodPtr(void);
extern INT8U GetEncryptionMethod(void);

extern INT8U *GetBCDPhoneNo(void);
extern void SetBCDPhoneNo(INT8U bcd[6]);

extern INT8U *CN6_GetVerPtr(void);
extern INT8U *CN6_GetWayPtr(void);
extern void CN6_SetWay(INT8U ucWay);
extern void CN6_SetVer(INT8U ucVer);


extern INT8S *GetAuthenticationCode(void);
extern void SetAuthenticationCode(void *ptr);
extern INT8S *GetLicensePlate(void);
extern void SetLicensePlate(void *ptr);
extern INT8U *GetTerminalModel(void);
extern void SetTerminalModel(void *ptr);
extern INT8U *GetTerminalID(void);
extern void SetTerminalID(void *ptr);
extern void SetPlateColor(INT8U val);
extern INT8U GetPlateColor(void);
extern INT8U *GetManufacturerID(void);
extern void SetManufacturerID(void *ptr);
extern INT16U GetProviceID(void);
extern void SetProviceID(INT16U usID);
extern INT16U GetCityID(void);
extern void SetCityID(INT16U usID);

extern void SetEmailSendUser(void *ptr);
extern INT8S *GetEmailSendUser(void);
extern void SetEmailSendPsw(void *ptr);
extern INT8S *GetEmailSendPsw(void);

extern INT16U GetMainPowerThreshold(void);
extern void SetMainPowerThreshold(INT16U val);

extern void SetLimitSpeed(INT8U val);

extern INT8U GetLimitSpeed(void);

extern EngineType get_engine_type(void);
extern void set_engine_type(EngineType st);
extern char *get_engine_type_str(EngineType st);

extern void SetCanChannel(INT8U val);
extern INT8U GetCanChannel(void);



extern UpdateInfo *get_update_info_ptr(void);
extern void set_update_way(INT8U val);
extern INT8U get_update_way(void);
extern UpdateStatus get_update_status(void);
extern void set_update_status(UpdateStatus eStatus);
extern INT32U get_update_start_time(void);
extern void set_update_start_time(INT32U val);
extern void set_update_start_date(Date *pstdate);
extern void set_update_end_date(Date *pstdate);
extern void get_update_start_date(Date *pstdate);
extern void get_update_end_date(Date *pstdate);
extern void set_update_end_time(INT32U val);
extern void set_update_take_times(INT32U val);
extern INT32U get_update_take_times(void);
extern void set_update_start_addr(unsigned int val);
extern void set_update_total_bytes(unsigned int val);
extern void save_update_info(void);
extern char *get_update_reportphone(void);
extern void set_update_reportphone(void *szPhone);
extern void set_update_server(void *szAddr,INT16U usPort);
extern void set_update_download_file_name(void *ptr);
extern char *get_update_download_file_name(void);
extern char *get_update_server_addr(void);
extern INT16U get_update_server_port(void);
extern void disp_update_info(void);
extern void update_info_default(void);
extern void check_update_status(void);



extern unsigned int disp_ftp_param(void *pOut,unsigned int outbuflen);

extern unsigned int disp_sysparam(void *pOut,unsigned int outbuflen);








#line 14 "..\\Source\\main\\../apps/apps.h"

#line 1 "..\\Source\\main\\../apps/./init/init.h"








extern void bsp_init(void);











#line 16 "..\\Source\\main\\../apps/apps.h"

#line 1 "..\\Source\\main\\../apps/./gps/gps.h"










 
typedef enum _GpsAntStateE
{
	E_GPS_ANT_NORMAL = 0,				 
	E_GPS_ANT_SHORT,					 
	E_GPS_ANT_OPEN,						 
} GpsAntStateE;

typedef struct tagGPS
{
	INT8U ucGpsMode;		
	INT8U ucPositionStatus;	
	INT32U position_time_cnt;		

	INT32U ulLat;		
	INT8U ucNS;		
	INT32U ulLong;		
	INT8U ucEW;		
	INT16U usGpsSpeed;	
	INT16U usAngle;		
	INT16U usGaodu;		

	INT8U start_num;		

	INT8U gsv_star_num;		
	INT8U gsv_star_no[32];		
	INT8U gsv_star_yj[32];		
	INT16U gsv_star_fwj[32];		
	INT8U gsv_star_xzb[32];		

	GpsAntStateE eAntStatus;	

	INT16U usPDOP;		
	INT16U usHDOP;		
	INT16U usVDOP;		

	INT8U year;		
	INT8U month;	
	INT8U day;		
	INT8U hour;		
	INT8U min;		
	INT8U sec;		
}GPS;



typedef void (*gps_calibration_time_callback)(unsigned char year,unsigned char month,unsigned char day,unsigned char hour,unsigned char min,unsigned char sec);


extern int GPS_Init(int bps,int iParity);

extern void reg_gps_calibration_time_callback_func(gps_calibration_time_callback pfunc);

extern int GPS_Analyze(void *buf);

extern void DispGpsInfo(void);



extern char IsPosition(void);

extern GpsAntStateE gps_get_ant_status(void);
extern void gps_set_ant_status(GpsAntStateE val);


extern INT8U GetStartNum(void);


extern INT16U GetGpsSpeed(void);
extern void SetGpsSpeed(INT16U val);

extern INT16U GetAngle(void);
extern void SetAngle(INT16U val);
extern INT16U GetGaoDu(void);
extern void SetGaoDu(INT16U val);


extern INT8U GetEW(void);
extern INT8U GetNS(void);


extern INT32U GetLong(void);

extern INT32U GetLat(void);


extern void SetLong(INT32U val);


extern void SetLat(INT32U val);


extern GPS *get_gps_info_ptr(void);


extern void test_utc_to_btc(void);


extern void gps_get_time(unsigned char time[6]);






#line 18 "..\\Source\\main\\../apps/apps.h"
#line 1 "..\\Source\\main\\../apps/./update/update.h"












extern void ota_start(unsigned char update_way);
extern void ota_write(void *buf,unsigned int len);
extern void ota_download_finish(void);
extern void ota_stop(void);

extern unsigned int get_ota_file_size(void);










#line 19 "..\\Source\\main\\../apps/apps.h"

#line 1 "..\\Source\\main\\../apps/./task/task.h"









extern void start_os(void);











#line 21 "..\\Source\\main\\../apps/apps.h"

#line 1 "..\\Source\\main\\../apps/./mpu/mpu.h"











extern char is_update_mode(void);


extern void analyze_mpu_data(unsigned int msgid,void * content,unsigned int contentlen);


extern void update_status_indicator_proc(void);

extern void mcu_modify_server(unsigned char channel,void *ip,unsigned int port);
extern void mcu_modify_jiami_chip_id(void *chip_id,unsigned int chip_id_len);

extern void mcu_send_msg_to_mpu(unsigned int msgid,void *pcontent,unsigned int contentlen);

extern void send_shutdown_signal_to_mpu(void);

extern void report_mcu_status(void);








#line 23 "..\\Source\\main\\../apps/apps.h"

#line 1 "..\\Source\\main\\../apps/./usercmd/usercmd.h"










extern unsigned int analyze_usercmd(void *ptr,unsigned int len,void *pOut,unsigned int outbuflen);


extern unsigned int get_test_val(void);

extern void set_test_val(unsigned int val);











#line 25 "..\\Source\\main\\../apps/apps.h"

#line 1 "..\\Source\\main\\../apps/./export_api/export_api.h"










typedef struct tagDRVFILE
{
	void *filename;
	void *pbuf;
	INT32U buflen;
	INT32U attri;			
	INT32U seek_offset;		
	INT32U want_read_len;	
}DRVFILE;


typedef enum tagHOOK_MSG_TYPE
{
	HOOK_MSG_ONE_MS = 0,							
	HOOK_MSG_100US, 								
	HOOK_MSG_10US, 									

	HOOK_MSG_CAN0_DATA_ARRIVE, 						
	HOOK_MSG_CAN1_DATA_ARRIVE,						
	HOOK_MSG_CAN2_DATA_ARRIVE,						
	HOOK_MSG_CAN3_DATA_ARRIVE,						


	HOOK_MSG_MAX,
}HOOK_MSG_TYPE;

typedef enum tagCALLBACK_MSG_TYPE
{
	CB_MSG_REBOOT_OK = 0,							
	CB_MSG_OTA_SUCCESS,								
	CB_MSG_OTA_FALSE,								

	CB_MSG_KEY_MENU_DOWN,							
	CB_MSG_KEY_OK_DOWN,								
	CB_MSG_KEY_CANCLE_DOWN,							
	CB_MSG_KEY_UP_DOWN,								
	CB_MSG_KEY_DOWN_DOWN,							

	CB_MSG_KEY_PRINT_CHANGAN,						

	CB_MSG_IC_CARD_INSERT,							
	CB_MSG_IC_CARD_TAKEOUT,							

	CB_MSG_MAIN_POWER_OFF,							

	CB_MSG_SOS_TRIGGER,								

	CB_MSG_SPEED_PULSE_ARRIVE,						

	CB_MSG_SEC_INT_ARRIVE,							

	CB_MSG_CEFAN_HAPPEN,							
	CB_MSG_CEFAN_JIECHU,							

	CB_MSG_PENGZHUANG_HAPPEN,						
	CB_MSG_NINE_AXIS_VALUE,							

	CB_MSG_GPS_JS_OK,								

	CB_MSG_RING_IS_COMMING,							
	CB_MSG_RING_IS_BEIGUADUAN,						

	CB_MSG_NETWORK_JS_OK,							
	CB_MSG_ZK_FILE_DOWNLOAD_OK,						
	
	CB_MSG_KEY_OK_CHANGAN,							

	CB_MSG_READ_RECORD_FILE_FINISH,					

	CB_MSG_CONNECT_SERVER_OK,
	CB_MSG_SERVER_DISCONNECT,
	CB_MSG_DBG_UART_DATA_ARRIVE,
	CB_MSG_SERVER_DATA_ARRIVE,
	CB_MSG_LINUX_CMD_ACK_ARRIVE,
	CB_MSG_CACHE_DATA_ARRIVE,
	CB_MSG_EASY_CHANGE_PARAM_ARRIVE,
	CB_MSG_FILE_DATA_ARRIVE,
	CB_MSG_USER_MPU_MSG_ARRIVE,
	CB_MSG_SMS_ARRIVE,								

	CB_MSG_MAX
}CALLBACK_MSG_TYPE;

typedef enum tagS_MSG_TYPE
{
	S_MSG_DIAL = 0,									
	S_MSG_SEND_SMS,									
	S_MSG_GET_CPU_TYPE,								
	S_MSG_GET_MDM_TYPE,								
	S_MSG_GET_GPS_TYPE,								

	S_MSG_JIETING_RING,								
	S_MSG_GUADUAN_RING,								

	S_MSG_SET_SOUND_VOLUME,							

	S_MSG_TRIGGER_BOHAOANJIAN_SOUND,				
	S_MSG_TRIGGER_TONE,								

	S_MSG_GET_NETWORK_NAME,							
	S_MSG_GPS_POWER_CTRL,							
	S_MSG_GPRS_POWER_CTRL,							
	S_MSG_SCREEN_POWER_CTRL,						
	S_MSG_PRINTER_POWER_CTRL,						
	S_MSG_CPU_INT_CTRL,								
	S_MSG_OIL_CTRL,									
	S_MSG_ELEC_CTRL,								
	S_MSG_DOOR_CTRL,								

	S_MSG_LOUDSPEAKER_POWER_CTRL,					
	S_MSG_LISTEN_DIAL,								

	
	S_MSG_EXTERNAL_STORAGE_TOTAL_CAP,				
	S_MSG_EXTERNAL_STORAGE_USED, 					
	S_MSG_EXTERNAL_STORAGE_FREE, 					

	S_MSG_EXTERNAL_STORAGE_WRITE_FILE, 				
	S_MSG_EXTERNAL_STORAGE_READ_FILE,				
	S_MSG_EXTERNAL_STORAGE_DEL_FILE,				

	S_MSG_EXTERNAL_STORAGE_RSV1,					
	S_MSG_EXTERNAL_STORAGE_RSV2,					
	S_MSG_EXTERNAL_STORAGE_RSV3,					
	S_MSG_EXTERNAL_STORAGE_RSV4,					

	S_MSG_BEEP_CTRL,								
	S_MSG_CPU_CLOCK,								

	S_MSG_START_RECORD_INSIDE,						
	S_MSG_STOP_RECORD_INSIDE,						
	S_MSG_PLAY_RECORD_INSIDE,						
	S_MSG_DEL_RECORD_FILE_INSIDE,					
	S_MSG_READ_RECORD_FILE_INSIDE,					
	S_MSG_IS_READ_RECORD_FILE_FINISH_INSIDE,		

	S_MSG_SYS_LED_CTRL,								
	S_MSG_GPS_LED_CTRL,
	S_MSG_CAN_LED_CTRL,
	S_MSG_SEND_TO_SERVER,							

	S_MSG_GET_RTC_TIME,
	S_MSG_GET_LON,
	S_MSG_GET_LAT,
	S_MSG_GET_VIN,

	S_MSG_SEND_PARAM_TO_MPU,
	S_MSG_EXECUTE_DRV_CMD,

	S_MSG_GET_ICCID,
	S_MSG_GET_IMEI,
	S_MSG_GET_GPS_ANT_STATUS,
	S_MSG_GET_GPS_STAR_NUM,
	S_MSG_GET_SIM_CSQ,

	S_MSG_STORE_CAN_DATA,
	S_MSG_GET_MAIN_VOL,
	S_MSG_GET_BAT_VOL,
	S_MSG_GET_ACC_STATUS,

	S_MSG_GET_MPU_SOFTWARE_VERSION,		
	S_MSG_GET_GPS_SPEED,				
	S_MSG_GET_GAODU,					
	S_MSG_GET_ANGLE,					

	S_MSG_GET_SERVER_ADDR,
	S_MSG_GET_SERVER_PORT,

	S_MSG_READ_PARAM,
	S_MSG_WRITE_PARAM,

	S_MSG_GET_GSENSOR_CHIP_STATUS,
	S_MSG_GET_FLASH_CHIP_STATUS,
	S_MSG_GET_EMMC_CHIP_STATUS,			
	S_MSG_GET_JIAMI_CHIP_STATUS,		

	S_MSG_ENTER_SLEEP_MODE,				

	S_MSG_GET_GPS_MODULE_STATUS,		
	S_MSG_GET_PUBLIC_KEY,				

	S_MSG_STORE_CACHE_DATA,				
	S_MSG_GET_CACHE_DATA,				

	S_MSG_OUT_IO_CTRL,

	S_MSG_GET_JIAMI_CHIP_ID,			
	S_MSG_SET_JIAMI_CHIP_ID,			

	S_MSG_SET_SERVER_ADDR,
	S_MSG_SET_SERVER_PORT,
	S_MSG_SET_SERVER_IP_PORT,
	S_MSG_GET_BEIAN_MSG_BODY_WITH_SIGN,

	S_MSG_GET_POWER_SUPPLY_MODE,		

	S_MSG_DBG_DISP,						
	S_MSG_GET_GPS_LOCAL_STATUS,			

	S_MSG_WRITE_EASY_CHANGE_PARAM,		
	S_MSG_SAVE_MCU_LOG,					

	S_MSG_GET_FILE_DATA,				

	S_MSG_SET_STORE_CACHE_DATA_FLAG,	
	S_MSG_GET_HARDWARE_VERSION,			
	S_MSG_GET_WIFI_MODULE_STATUS,		
	S_MSG_GET_CAN0_STATUS,				
	S_MSG_GET_CAN1_STATUS,				
	S_MSG_GET_CAN2_STATUS,				
	S_MSG_GET_GPS,
	S_MSG_GET_MPU_STATUS,
	S_MSG_REBOOT_TO_MPU,				
	S_MSG_GET_TBOX_STATUS,
	S_MSG_MAX,
}S_MSG_TYPE;



typedef void (*callback_func)(void *);


extern callback_func get_connect_server_ok_func_ptr(void);
extern callback_func get_disconnect_server_func_ptr(void);


extern void *send_msg(S_MSG_TYPE msgtype,void *param,void *lparam,void *wparam);


extern void install_hook_msg(HOOK_MSG_TYPE msgtype,void *pf);


extern void reg_callback_msg(CALLBACK_MSG_TYPE msgtype,void *pf);
















#line 27 "..\\Source\\main\\../apps/apps.h"
#line 1 "..\\Source\\main\\../apps/./export_api/api_map.h"









extern void * const api_func_address[];













#line 28 "..\\Source\\main\\../apps/apps.h"














#line 25 "..\\Source\\main\\includes.h"

	
	
	
	
	
	


#line 10 "..\\Source\\drivers\\drivers.h"

#line 1 "..\\Source\\drivers\\./RTT/SEGGER_RTT_Conf.h"
































































 













 
























 





























 
#line 203 "..\\Source\\drivers\\./RTT/SEGGER_RTT_Conf.h"




 
#line 230 "..\\Source\\drivers\\./RTT/SEGGER_RTT_Conf.h"




 
#line 244 "..\\Source\\drivers\\./RTT/SEGGER_RTT_Conf.h"




 
#line 258 "..\\Source\\drivers\\./RTT/SEGGER_RTT_Conf.h"




 
#line 285 "..\\Source\\drivers\\./RTT/SEGGER_RTT_Conf.h"










 
#line 318 "..\\Source\\drivers\\./RTT/SEGGER_RTT_Conf.h"




 









 
#line 12 "..\\Source\\drivers\\drivers.h"
#line 1 "..\\Source\\drivers\\./RTT/SEGGER_RTT.h"
































































 




#line 71 "..\\Source\\drivers\\./RTT/SEGGER_RTT.h"






 






 





typedef struct {
  const     char*    sName;         
            char*    pBuffer;       
            unsigned SizeOfBuffer;  
            unsigned WrOff;         
  volatile  unsigned RdOff;         
            unsigned Flags;         
} SEGGER_RTT_BUFFER_UP;





typedef struct {
  const     char*    sName;         
            char*    pBuffer;       
            unsigned SizeOfBuffer;  
  volatile  unsigned WrOff;         
            unsigned RdOff;         
            unsigned Flags;         
} SEGGER_RTT_BUFFER_DOWN;






typedef struct {
  char                    acID[16];                                 
  int                     MaxNumUpBuffers;                          
  int                     MaxNumDownBuffers;                        
  SEGGER_RTT_BUFFER_UP    aUp[(3)];       
  SEGGER_RTT_BUFFER_DOWN  aDown[(3)];   
} SEGGER_RTT_CB;






 
extern SEGGER_RTT_CB _SEGGER_RTT;






 



int          SEGGER_RTT_AllocDownBuffer         (const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags);
int          SEGGER_RTT_AllocUpBuffer           (const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags);
int          SEGGER_RTT_ConfigUpBuffer          (unsigned BufferIndex, const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags);
int          SEGGER_RTT_ConfigDownBuffer        (unsigned BufferIndex, const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags);
int          SEGGER_RTT_GetKey                  (void);
unsigned     SEGGER_RTT_HasData                 (unsigned BufferIndex);
int          SEGGER_RTT_HasKey                  (void);
void         SEGGER_RTT_Init                    (void);
unsigned     SEGGER_RTT_Read                    (unsigned BufferIndex,       void* pBuffer, unsigned BufferSize);
unsigned     SEGGER_RTT_ReadNoLock              (unsigned BufferIndex,       void* pData,   unsigned BufferSize);
int          SEGGER_RTT_SetNameDownBuffer       (unsigned BufferIndex, const char* sName);
int          SEGGER_RTT_SetNameUpBuffer         (unsigned BufferIndex, const char* sName);
int          SEGGER_RTT_SetFlagsDownBuffer      (unsigned BufferIndex, unsigned Flags);
int          SEGGER_RTT_SetFlagsUpBuffer        (unsigned BufferIndex, unsigned Flags);
int          SEGGER_RTT_WaitKey                 (void);
unsigned     SEGGER_RTT_Write                   (unsigned BufferIndex, const void* pBuffer, unsigned NumBytes);
unsigned     SEGGER_RTT_WriteNoLock             (unsigned BufferIndex, const void* pBuffer, unsigned NumBytes);
unsigned     SEGGER_RTT_WriteSkipNoLock         (unsigned BufferIndex, const void* pBuffer, unsigned NumBytes);
unsigned     SEGGER_RTT_WriteString             (unsigned BufferIndex, const char* s);
void         SEGGER_RTT_WriteWithOverwriteNoLock(unsigned BufferIndex, const void* pBuffer, unsigned NumBytes);
unsigned     SEGGER_RTT_PutChar                 (unsigned BufferIndex, char c);
unsigned     SEGGER_RTT_PutCharSkip             (unsigned BufferIndex, char c);
unsigned     SEGGER_RTT_PutCharSkipNoLock       (unsigned BufferIndex, char c);










 
int     SEGGER_RTT_SetTerminal        (char TerminalId);
int     SEGGER_RTT_TerminalOut        (char TerminalId, const char* s);






 
int SEGGER_RTT_printf(unsigned BufferIndex, const char * sFormat, ...);









 
















#line 220 "..\\Source\\drivers\\./RTT/SEGGER_RTT.h"

#line 229 "..\\Source\\drivers\\./RTT/SEGGER_RTT.h"

#line 238 "..\\Source\\drivers\\./RTT/SEGGER_RTT.h"

#line 247 "..\\Source\\drivers\\./RTT/SEGGER_RTT.h"




 
#line 13 "..\\Source\\drivers\\drivers.h"


#line 1 "..\\Source\\drivers\\./DBG/DBG.h"








#line 19 "..\\Source\\drivers\\./DBG/DBG.h"









typedef void (*DBGUsartInit)(unsigned long bps,char cParity);
typedef unsigned int (*DBGUsartSend_unlock)(void *buf,unsigned int len);
typedef unsigned int (*DBGUsartRead)(void *buf,unsigned int ulBufSize,unsigned int ulTimeoutMs);














 
extern int DBG_Init(unsigned char num,
				DBGUsartInit pDBGUsartInitFunc,
				unsigned long bps,char cParity,
				void (*create_sem_func)(void),
				void (*wait_sem_func)(void),
				void (*post_sem_func)(void),
				DBGUsartSend_unlock pDBGUsartSend_unlock,
				DBGUsartRead pDBGUsartRead
				);

extern unsigned int ReadDBGUsart(unsigned char DBG_PortNum,void *buf,
					   				   unsigned int ulBufSize,unsigned int ulTimeoutMs);

extern void DBG_ChangeParam(unsigned char num,unsigned long bps,char cParity);


extern void Set_DBG_Level(int iLevel);

extern int Get_DBG_Level(void);

extern int DBG_Print(int iLevel,void *str,...);

extern void DBG_PrintBuf(int iLevel,void *tip,void *str,unsigned int length);

extern unsigned char DBG_SendChar(unsigned char ch);

extern void DBG_SendData(void *pdat,unsigned int len);










#line 16 "..\\Source\\drivers\\drivers.h"


#line 1 "..\\Source\\drivers\\./func/func.h"






#line 8 "..\\Source\\drivers\\./func/func.h"
#line 9 "..\\Source\\drivers\\./func/func.h"
#line 10 "..\\Source\\drivers\\./func/func.h"




extern INT16U get_avg_by_throw_away_big_val(INT16U *psrc,INT16U src_cnt,INT16U throw_away_cnt);

extern char is_bcd_time_format_ok(INT8U bcd_time[6]);

extern char is_time_format_ok(INT8U time[6]);

extern int timecmp(INT8U time1[6],INT8U time2[6]);



extern char is_between_time(INT8U desTime[6],INT8U start_time[6],INT8U end_time[6]);


extern unsigned int two_time_inv(INT8U start_time[6],INT8U end_time[6]);


extern int IsObjNULL(void *pdat,INT32U len);
extern INT8U XOR_Check(INT8U *pdat,INT32U len);
extern INT8U CommSumCheckCode(void *pdat,INT32U len);

extern char *GetSubString(char *str,char *pSubStr1,char *pSubStr2,char *pOutBuf,unsigned int outbuflen);
extern void *ReverseFindSubStr(void *pSrc,int ulSrcLen,void *pDes,int ulDesLen);

extern int HexStrToArray(INT8U *str,INT8U *pdat,INT32U pdatlen);

extern INT16U byte_to_u16(INT8U D0,INT8U D1);
extern INT32U byte_to_u32(INT8U D0,INT8U D1,INT8U D2,INT8U D3);












 
extern int CreateQueue(int Qnum,void *ptr,INT32U ulOneUnitDataSize,INT32U cnt);










 
extern int QueueIn(INT8U Qnum,void *buf);


extern INT32U GetQueueElementCnt(INT8U Qnum);


extern int QueueOut(INT8U Qnum,void *buf);

extern void *QueueGetCurMsg(INT8U Qnum);

extern int QueueMsgDealOk(INT8U Qnum);












#line 19 "..\\Source\\drivers\\drivers.h"


#line 1 "..\\Source\\drivers\\./stm32lib/misc.h"




















 

 







 
#line 1 "..\\Source\\device\\stm32f10x.h"







































 



 



 
    








  


 
  


 


         
        
         
        

        
         
   



















 










 









            


extern unsigned int HSE_VALUE;






 






 
#line 142 "..\\Source\\device\\stm32f10x.h"



 



 



 
#line 161 "..\\Source\\device\\stm32f10x.h"




 
typedef enum IRQn
{
 
  NonMaskableInt_IRQn         = -14,     
  MemoryManagement_IRQn       = -12,     
  BusFault_IRQn               = -11,     
  UsageFault_IRQn             = -10,     
  SVCall_IRQn                 = -5,      
  DebugMonitor_IRQn           = -4,      
  PendSV_IRQn                 = -2,      
  SysTick_IRQn                = -1,      

 
  WWDG_IRQn                   = 0,       
  PVD_IRQn                    = 1,       
  TAMPER_IRQn                 = 2,       
  RTC_IRQn                    = 3,       
  FLASH_IRQn                  = 4,       
  RCC_IRQn                    = 5,       
  EXTI0_IRQn                  = 6,       
  EXTI1_IRQn                  = 7,       
  EXTI2_IRQn                  = 8,       
  EXTI3_IRQn                  = 9,       
  EXTI4_IRQn                  = 10,      
  DMA1_Channel1_IRQn          = 11,      
  DMA1_Channel2_IRQn          = 12,      
  DMA1_Channel3_IRQn          = 13,      
  DMA1_Channel4_IRQn          = 14,      
  DMA1_Channel5_IRQn          = 15,      
  DMA1_Channel6_IRQn          = 16,      
  DMA1_Channel7_IRQn          = 17,      

#line 220 "..\\Source\\device\\stm32f10x.h"

#line 241 "..\\Source\\device\\stm32f10x.h"

#line 269 "..\\Source\\device\\stm32f10x.h"

#line 295 "..\\Source\\device\\stm32f10x.h"


  ADC1_2_IRQn                 = 18,      
  USB_HP_CAN1_TX_IRQn         = 19,      
  USB_LP_CAN1_RX0_IRQn        = 20,      
  CAN1_RX1_IRQn               = 21,      
  CAN1_SCE_IRQn               = 22,      
  EXTI9_5_IRQn                = 23,      
  TIM1_BRK_IRQn               = 24,      
  TIM1_UP_IRQn                = 25,      
  TIM1_TRG_COM_IRQn           = 26,      
  TIM1_CC_IRQn                = 27,      
  TIM2_IRQn                   = 28,      
  TIM3_IRQn                   = 29,      
  TIM4_IRQn                   = 30,      
  I2C1_EV_IRQn                = 31,      
  I2C1_ER_IRQn                = 32,      
  I2C2_EV_IRQn                = 33,      
  I2C2_ER_IRQn                = 34,      
  SPI1_IRQn                   = 35,      
  SPI2_IRQn                   = 36,      
  USART1_IRQn                 = 37,      
  USART2_IRQn                 = 38,      
  USART3_IRQn                 = 39,      
  EXTI15_10_IRQn              = 40,      
  RTCAlarm_IRQn               = 41,      
  USBWakeUp_IRQn              = 42,      
  TIM8_BRK_IRQn               = 43,      
  TIM8_UP_IRQn                = 44,      
  TIM8_TRG_COM_IRQn           = 45,      
  TIM8_CC_IRQn                = 46,      
  ADC3_IRQn                   = 47,      
  FSMC_IRQn                   = 48,      
  SDIO_IRQn                   = 49,      
  TIM5_IRQn                   = 50,      
  SPI3_IRQn                   = 51,      
  UART4_IRQn                  = 52,      
  UART5_IRQn                  = 53,      
  TIM6_IRQn                   = 54,      
  TIM7_IRQn                   = 55,      
  DMA2_Channel1_IRQn          = 56,      
  DMA2_Channel2_IRQn          = 57,      
  DMA2_Channel3_IRQn          = 58,      
  DMA2_Channel4_5_IRQn        = 59,       

	ETH_IRQn					= 61,	   
	ETH_WKUP_IRQn				= 62,	   
	CAN2_TX_IRQn				= 63,	   
	CAN2_RX0_IRQn				= 64,	   
	CAN2_RX1_IRQn				= 65,	   
	CAN2_SCE_IRQn				= 66,	   
	OTG_FS_IRQn 				= 67,	   

	UART6_IRQn 					= 71,	    
	UART7_IRQn					= 82,	    
	UART8_IRQn					= 83,	    




#line 394 "..\\Source\\device\\stm32f10x.h"

#line 439 "..\\Source\\device\\stm32f10x.h"

#line 485 "..\\Source\\device\\stm32f10x.h"
} IRQn_Type;



 

#line 1 "..\\Source\\device\\core_cm3.h"
 




















 





































 

 
 
 
 
 
 
 
 








 











#line 1 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
 
 





 









     
#line 27 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
     











#line 46 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"





 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     




typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;


     
typedef   signed     long long intmax_t;
typedef unsigned     long long uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     






     






     






     

     


     


     


     

     
#line 216 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     



     






     
    
 



#line 241 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     







     










     











#line 305 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"






 
#line 91 "..\\Source\\device\\core_cm3.h"

















 

#line 117 "..\\Source\\device\\core_cm3.h"





 


 





 
typedef struct
{
  volatile uint32_t ISER[8];                       
       uint32_t RESERVED0[24];                                   
  volatile uint32_t ICER[8];                       
       uint32_t RSERVED1[24];                                    
  volatile uint32_t ISPR[8];                       
       uint32_t RESERVED2[24];                                   
  volatile uint32_t ICPR[8];                       
       uint32_t RESERVED3[24];                                   
  volatile uint32_t IABR[8];                       
       uint32_t RESERVED4[56];                                   
  volatile uint8_t  IP[240];                       
       uint32_t RESERVED5[644];                                  
  volatile  uint32_t STIR;                          
}  NVIC_Type;                                               
   





 
typedef struct
{
  volatile const  uint32_t CPUID;                         
  volatile uint32_t ICSR;                          
  volatile uint32_t VTOR;                          
  volatile uint32_t AIRCR;                         
  volatile uint32_t SCR;                           
  volatile uint32_t CCR;                           
  volatile uint8_t  SHP[12];                       
  volatile uint32_t SHCSR;                         
  volatile uint32_t CFSR;                          
  volatile uint32_t HFSR;                          
  volatile uint32_t DFSR;                          
  volatile uint32_t MMFAR;                         
  volatile uint32_t BFAR;                          
  volatile uint32_t AFSR;                          
  volatile const  uint32_t PFR[2];                        
  volatile const  uint32_t DFR;                           
  volatile const  uint32_t ADR;                           
  volatile const  uint32_t MMFR[4];                       
  volatile const  uint32_t ISAR[5];                       
} SCB_Type;                                                

 












 






























 






 





















 









 


















 
































                                     









 









 









 














   





 
typedef struct
{
  volatile uint32_t CTRL;                          
  volatile uint32_t LOAD;                          
  volatile uint32_t VAL;                           
  volatile const  uint32_t CALIB;                         
} SysTick_Type;

 












 



 



 








   





 
typedef struct
{
  volatile  union  
  {
    volatile  uint8_t    u8;                        
    volatile  uint16_t   u16;                       
    volatile  uint32_t   u32;                       
  }  PORT [32];                                
       uint32_t RESERVED0[864];                                 
  volatile uint32_t TER;                           
       uint32_t RESERVED1[15];                                  
  volatile uint32_t TPR;                           
       uint32_t RESERVED2[15];                                  
  volatile uint32_t TCR;                           
       uint32_t RESERVED3[29];                                  
  volatile uint32_t IWR;                           
  volatile uint32_t IRR;                           
  volatile uint32_t IMCR;                          
       uint32_t RESERVED4[43];                                  
  volatile uint32_t LAR;                           
  volatile uint32_t LSR;                           
       uint32_t RESERVED5[6];                                   
  volatile const  uint32_t PID4;                          
  volatile const  uint32_t PID5;                          
  volatile const  uint32_t PID6;                          
  volatile const  uint32_t PID7;                          
  volatile const  uint32_t PID0;                          
  volatile const  uint32_t PID1;                          
  volatile const  uint32_t PID2;                          
  volatile const  uint32_t PID3;                          
  volatile const  uint32_t CID0;                          
  volatile const  uint32_t CID1;                          
  volatile const  uint32_t CID2;                          
  volatile const  uint32_t CID3;                          
} ITM_Type;                                                

 



 
























 



 



 



 








   





 
typedef struct
{
       uint32_t RESERVED0;
  volatile const  uint32_t ICTR;                          



       uint32_t RESERVED1;

} InterruptType_Type;

 



 








   


#line 614 "..\\Source\\device\\core_cm3.h"





 
typedef struct
{
  volatile uint32_t DHCSR;                         
  volatile  uint32_t DCRSR;                         
  volatile uint32_t DCRDR;                         
  volatile uint32_t DEMCR;                         
} CoreDebug_Type;

 




































 






 






































   


 
#line 721 "..\\Source\\device\\core_cm3.h"

#line 728 "..\\Source\\device\\core_cm3.h"






   




 





#line 758 "..\\Source\\device\\core_cm3.h"


 


 




#line 783 "..\\Source\\device\\core_cm3.h"


 
 
 
 








 
extern uint32_t __get_PSP(void);








 
extern void __set_PSP(uint32_t topOfProcStack);








 
extern uint32_t __get_MSP(void);








 
extern void __set_MSP(uint32_t topOfMainStack);








 
extern uint32_t __REV16(uint16_t value);








 
extern int32_t __REVSH(int16_t value);


#line 933 "..\\Source\\device\\core_cm3.h"





 








 
static __inline uint32_t  __get_BASEPRI(void)
{
  register uint32_t __regBasePri         __asm("basepri");
  return(__regBasePri);
}







 
static __inline void __set_BASEPRI(uint32_t basePri)
{
  register uint32_t __regBasePri         __asm("basepri");
  __regBasePri = (basePri & 0xff);
}







 
static __inline uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __asm("primask");
  return(__regPriMask);
}







 
static __inline void __set_PRIMASK(uint32_t priMask)
{
  register uint32_t __regPriMask         __asm("primask");
  __regPriMask = (priMask);
}







 
static __inline uint32_t __get_FAULTMASK(void)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  return(__regFaultMask);
}







 
static __inline void __set_FAULTMASK(uint32_t faultMask)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  __regFaultMask = (faultMask & 1);
}







 
static __inline uint32_t __get_CONTROL(void)
{
  register uint32_t __regControl         __asm("control");
  return(__regControl);
}







 
static __inline void __set_CONTROL(uint32_t control)
{
  register uint32_t __regControl         __asm("control");
  __regControl = control;
}





#line 1445 "..\\Source\\device\\core_cm3.h"







 
 

 











 
static __inline void NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);                          
  
  reg_value  =  ((SCB_Type *) ((0xE000E000) + 0x0D00))->AIRCR;                                                    
  reg_value &= ~((0xFFFFul << 16) | (7ul << 8));              
  reg_value  =  (reg_value                       |
                (0x5FA << 16) | 
                (PriorityGroupTmp << 8));                                      
  ((SCB_Type *) ((0xE000E000) + 0x0D00))->AIRCR =  reg_value;
}








 
static __inline uint32_t NVIC_GetPriorityGrouping(void)
{
  return ((((SCB_Type *) ((0xE000E000) + 0x0D00))->AIRCR & (7ul << 8)) >> 8);    
}








 
static __inline void NVIC_EnableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000) + 0x0100))->ISER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}








 
static __inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000) + 0x0100))->ICER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}









 
static __inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  return((uint32_t) ((((NVIC_Type *) ((0xE000E000) + 0x0100))->ISPR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));  
}








 
static __inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000) + 0x0100))->ISPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}








 
static __inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000) + 0x0100))->ICPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}









 
static __inline uint32_t NVIC_GetActive(IRQn_Type IRQn)
{
  return((uint32_t)((((NVIC_Type *) ((0xE000E000) + 0x0100))->IABR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));  
}












 
static __inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if(IRQn < 0) {
    ((SCB_Type *) ((0xE000E000) + 0x0D00))->SHP[((uint32_t)(IRQn) & 0xF)-4] = ((priority << (8 - 4)) & 0xff); }  
  else {
    ((NVIC_Type *) ((0xE000E000) + 0x0100))->IP[(uint32_t)(IRQn)] = ((priority << (8 - 4)) & 0xff);    }         
}















 
static __inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if(IRQn < 0) {
    return((uint32_t)(((SCB_Type *) ((0xE000E000) + 0x0D00))->SHP[((uint32_t)(IRQn) & 0xF)-4] >> (8 - 4)));  }  
  else {
    return((uint32_t)(((NVIC_Type *) ((0xE000E000) + 0x0100))->IP[(uint32_t)(IRQn)]           >> (8 - 4)));  }  
}
















 
static __inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);           
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7 - PriorityGroupTmp) > 4) ? 4 : 7 - PriorityGroupTmp;
  SubPriorityBits     = ((PriorityGroupTmp + 4) < 7) ? 0 : PriorityGroupTmp - 7 + 4;
 
  return (
           ((PreemptPriority & ((1 << (PreemptPriorityBits)) - 1)) << SubPriorityBits) |
           ((SubPriority     & ((1 << (SubPriorityBits    )) - 1)))
         );
}
















 
static __inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* pPreemptPriority, uint32_t* pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);           
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7 - PriorityGroupTmp) > 4) ? 4 : 7 - PriorityGroupTmp;
  SubPriorityBits     = ((PriorityGroupTmp + 4) < 7) ? 0 : PriorityGroupTmp - 7 + 4;
  
  *pPreemptPriority = (Priority >> SubPriorityBits) & ((1 << (PreemptPriorityBits)) - 1);
  *pSubPriority     = (Priority                   ) & ((1 << (SubPriorityBits    )) - 1);
}



 












 
static __inline uint32_t SysTick_Config(uint32_t ticks)
{ 
  if (ticks > (0xFFFFFFul << 0))  return (1);             
                                                               
  ((SysTick_Type *) ((0xE000E000) + 0x0010))->LOAD  = (ticks & (0xFFFFFFul << 0)) - 1;       
  NVIC_SetPriority (SysTick_IRQn, (1<<4) - 1);   
  ((SysTick_Type *) ((0xE000E000) + 0x0010))->VAL   = 0;                                           
  ((SysTick_Type *) ((0xE000E000) + 0x0010))->CTRL  = (1ul << 2) | 
                   (1ul << 1)   | 
                   (1ul << 0);                     
  return (0);                                                   
}






 





 
static __inline void NVIC_SystemReset(void)
{
  ((SCB_Type *) ((0xE000E000) + 0x0D00))->AIRCR  = ((0x5FA << 16)      | 
                 (((SCB_Type *) ((0xE000E000) + 0x0D00))->AIRCR & (7ul << 8)) | 
                 (1ul << 2));                    
  __dsb(0);                                                                    
  while(1);                                                     
}

   



 






 
 

extern volatile int ITM_RxBuffer;                     












 
static __inline uint32_t ITM_SendChar (uint32_t ch)
{
  if ((((CoreDebug_Type *) (0xE000EDF0))->DEMCR & (1ul << 24))  &&       
      (((ITM_Type *) (0xE0000000))->TCR & (1ul << 0))                  &&       
      (((ITM_Type *) (0xE0000000))->TER & (1ul << 0)        )                    )      
  {
    while (((ITM_Type *) (0xE0000000))->PORT[0].u32 == 0);
    ((ITM_Type *) (0xE0000000))->PORT[0].u8 = (uint8_t) ch;
  }  
  return (ch);
}










 
static __inline int ITM_ReceiveChar (void) {
  int ch = -1;                                

  if (ITM_RxBuffer != 0x5AA55AA5) {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = 0x5AA55AA5;        
  }
  
  return (ch); 
}









 
static __inline int ITM_CheckChar (void) {

  if (ITM_RxBuffer == 0x5AA55AA5) {
    return (0);                                  
  } else {
    return (1);                                  
  }
}

   






   



 
#line 492 "..\\Source\\device\\stm32f10x.h"

#line 494 "..\\Source\\device\\stm32f10x.h"



   

 
typedef int32_t  s32;
typedef int16_t s16;
typedef int8_t  s8;

typedef const int32_t sc32;   
typedef const int16_t sc16;   
typedef const int8_t sc8;    

typedef volatile int32_t  vs32;
typedef volatile int16_t  vs16;
typedef volatile int8_t   vs8;

typedef volatile const int32_t vsc32;   
typedef volatile const int16_t vsc16;   
typedef volatile const int8_t vsc8;    

typedef uint32_t  u32;
typedef uint16_t u16;
typedef uint8_t  u8;

typedef const uint32_t uc32;   
typedef const uint16_t uc16;   
typedef const uint8_t uc8;    

typedef volatile uint32_t  vu32;
typedef volatile uint16_t vu16;
typedef volatile uint8_t  vu8;

typedef volatile const uint32_t vuc32;   
typedef volatile const uint16_t vuc16;   
typedef volatile const uint8_t vuc8;    

typedef enum {RESET = 0, SET = !RESET} FlagStatus, ITStatus;

typedef enum {DISABLE = 0, ENABLE = !DISABLE} FunctionalState;


typedef enum {ERROR = 0, SUCCESS = !ERROR} ErrorStatus;

 





 



    



 

typedef struct
{
  volatile uint32_t SR;
  volatile uint32_t CR1;
  volatile uint32_t CR2;
  volatile uint32_t SMPR1;
  volatile uint32_t SMPR2;
  volatile uint32_t JOFR1;
  volatile uint32_t JOFR2;
  volatile uint32_t JOFR3;
  volatile uint32_t JOFR4;
  volatile uint32_t HTR;
  volatile uint32_t LTR;
  volatile uint32_t SQR1;
  volatile uint32_t SQR2;
  volatile uint32_t SQR3;
  volatile uint32_t JSQR;
  volatile uint32_t JDR1;
  volatile uint32_t JDR2;
  volatile uint32_t JDR3;
  volatile uint32_t JDR4;
  volatile uint32_t DR;
} ADC_TypeDef;



 

typedef struct
{
  uint32_t  RESERVED0;
  volatile uint16_t DR1;
  uint16_t  RESERVED1;
  volatile uint16_t DR2;
  uint16_t  RESERVED2;
  volatile uint16_t DR3;
  uint16_t  RESERVED3;
  volatile uint16_t DR4;
  uint16_t  RESERVED4;
  volatile uint16_t DR5;
  uint16_t  RESERVED5;
  volatile uint16_t DR6;
  uint16_t  RESERVED6;
  volatile uint16_t DR7;
  uint16_t  RESERVED7;
  volatile uint16_t DR8;
  uint16_t  RESERVED8;
  volatile uint16_t DR9;
  uint16_t  RESERVED9;
  volatile uint16_t DR10;
  uint16_t  RESERVED10; 
  volatile uint16_t RTCCR;
  uint16_t  RESERVED11;
  volatile uint16_t CR;
  uint16_t  RESERVED12;
  volatile uint16_t CSR;
  uint16_t  RESERVED13[5];
  volatile uint16_t DR11;
  uint16_t  RESERVED14;
  volatile uint16_t DR12;
  uint16_t  RESERVED15;
  volatile uint16_t DR13;
  uint16_t  RESERVED16;
  volatile uint16_t DR14;
  uint16_t  RESERVED17;
  volatile uint16_t DR15;
  uint16_t  RESERVED18;
  volatile uint16_t DR16;
  uint16_t  RESERVED19;
  volatile uint16_t DR17;
  uint16_t  RESERVED20;
  volatile uint16_t DR18;
  uint16_t  RESERVED21;
  volatile uint16_t DR19;
  uint16_t  RESERVED22;
  volatile uint16_t DR20;
  uint16_t  RESERVED23;
  volatile uint16_t DR21;
  uint16_t  RESERVED24;
  volatile uint16_t DR22;
  uint16_t  RESERVED25;
  volatile uint16_t DR23;
  uint16_t  RESERVED26;
  volatile uint16_t DR24;
  uint16_t  RESERVED27;
  volatile uint16_t DR25;
  uint16_t  RESERVED28;
  volatile uint16_t DR26;
  uint16_t  RESERVED29;
  volatile uint16_t DR27;
  uint16_t  RESERVED30;
  volatile uint16_t DR28;
  uint16_t  RESERVED31;
  volatile uint16_t DR29;
  uint16_t  RESERVED32;
  volatile uint16_t DR30;
  uint16_t  RESERVED33; 
  volatile uint16_t DR31;
  uint16_t  RESERVED34;
  volatile uint16_t DR32;
  uint16_t  RESERVED35;
  volatile uint16_t DR33;
  uint16_t  RESERVED36;
  volatile uint16_t DR34;
  uint16_t  RESERVED37;
  volatile uint16_t DR35;
  uint16_t  RESERVED38;
  volatile uint16_t DR36;
  uint16_t  RESERVED39;
  volatile uint16_t DR37;
  uint16_t  RESERVED40;
  volatile uint16_t DR38;
  uint16_t  RESERVED41;
  volatile uint16_t DR39;
  uint16_t  RESERVED42;
  volatile uint16_t DR40;
  uint16_t  RESERVED43;
  volatile uint16_t DR41;
  uint16_t  RESERVED44;
  volatile uint16_t DR42;
  uint16_t  RESERVED45;    
} BKP_TypeDef;
  


 

typedef struct
{
  volatile uint32_t TIR;
  volatile uint32_t TDTR;
  volatile uint32_t TDLR;
  volatile uint32_t TDHR;
} CAN_TxMailBox_TypeDef;



 
  
typedef struct
{
  volatile uint32_t RIR;
  volatile uint32_t RDTR;
  volatile uint32_t RDLR;
  volatile uint32_t RDHR;
} CAN_FIFOMailBox_TypeDef;



 
  
typedef struct
{
  volatile uint32_t FR1;
  volatile uint32_t FR2;
} CAN_FilterRegister_TypeDef;



 
  
typedef struct
{
  volatile uint32_t MCR;
  volatile uint32_t MSR;
  volatile uint32_t TSR;
  volatile uint32_t RF0R;
  volatile uint32_t RF1R;
  volatile uint32_t IER;
  volatile uint32_t ESR;
  volatile uint32_t BTR;
  uint32_t  RESERVED0[88];
  CAN_TxMailBox_TypeDef sTxMailBox[3];
  CAN_FIFOMailBox_TypeDef sFIFOMailBox[2];
  uint32_t  RESERVED1[12];
  volatile uint32_t FMR;
  volatile uint32_t FM1R;
  uint32_t  RESERVED2;
  volatile uint32_t FS1R;
  uint32_t  RESERVED3;
  volatile uint32_t FFA1R;
  uint32_t  RESERVED4;
  volatile uint32_t FA1R;
  uint32_t  RESERVED5[8];

  CAN_FilterRegister_TypeDef sFilterRegister[14];



} CAN_TypeDef;



 
typedef struct
{
  volatile uint32_t CFGR;
  volatile uint32_t OAR;
  volatile uint32_t PRES;
  volatile uint32_t ESR;
  volatile uint32_t CSR;
  volatile uint32_t TXD;
  volatile uint32_t RXD;  
} CEC_TypeDef;



 

typedef struct
{
  volatile uint32_t DR;
  volatile uint8_t  IDR;
  uint8_t   RESERVED0;
  uint16_t  RESERVED1;
  volatile uint32_t CR;
} CRC_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t SWTRIGR;
  volatile uint32_t DHR12R1;
  volatile uint32_t DHR12L1;
  volatile uint32_t DHR8R1;
  volatile uint32_t DHR12R2;
  volatile uint32_t DHR12L2;
  volatile uint32_t DHR8R2;
  volatile uint32_t DHR12RD;
  volatile uint32_t DHR12LD;
  volatile uint32_t DHR8RD;
  volatile uint32_t DOR1;
  volatile uint32_t DOR2;



} DAC_TypeDef;



 

typedef struct
{
  volatile uint32_t IDCODE;
  volatile uint32_t CR;	
}DBGMCU_TypeDef;



 

typedef struct
{
  volatile uint32_t CCR;
  volatile uint32_t CNDTR;
  volatile uint32_t CPAR;
  volatile uint32_t CMAR;
} DMA_Channel_TypeDef;

typedef struct
{
  volatile uint32_t ISR;
  volatile uint32_t IFCR;
} DMA_TypeDef;



 

typedef struct
{
  volatile uint32_t MACCR;
  volatile uint32_t MACFFR;
  volatile uint32_t MACHTHR;
  volatile uint32_t MACHTLR;
  volatile uint32_t MACMIIAR;
  volatile uint32_t MACMIIDR;
  volatile uint32_t MACFCR;
  volatile uint32_t MACVLANTR;              
       uint32_t RESERVED0[2];
  volatile uint32_t MACRWUFFR;              
  volatile uint32_t MACPMTCSR;
       uint32_t RESERVED1[2];
  volatile uint32_t MACSR;                  
  volatile uint32_t MACIMR;
  volatile uint32_t MACA0HR;
  volatile uint32_t MACA0LR;
  volatile uint32_t MACA1HR;
  volatile uint32_t MACA1LR;
  volatile uint32_t MACA2HR;
  volatile uint32_t MACA2LR;
  volatile uint32_t MACA3HR;
  volatile uint32_t MACA3LR;                
       uint32_t RESERVED2[40];
  volatile uint32_t MMCCR;                  
  volatile uint32_t MMCRIR;
  volatile uint32_t MMCTIR;
  volatile uint32_t MMCRIMR;
  volatile uint32_t MMCTIMR;                
       uint32_t RESERVED3[14];
  volatile uint32_t MMCTGFSCCR;             
  volatile uint32_t MMCTGFMSCCR;
       uint32_t RESERVED4[5];
  volatile uint32_t MMCTGFCR;
       uint32_t RESERVED5[10];
  volatile uint32_t MMCRFCECR;
  volatile uint32_t MMCRFAECR;
       uint32_t RESERVED6[10];
  volatile uint32_t MMCRGUFCR;
       uint32_t RESERVED7[334];
  volatile uint32_t PTPTSCR;
  volatile uint32_t PTPSSIR;
  volatile uint32_t PTPTSHR;
  volatile uint32_t PTPTSLR;
  volatile uint32_t PTPTSHUR;
  volatile uint32_t PTPTSLUR;
  volatile uint32_t PTPTSAR;
  volatile uint32_t PTPTTHR;
  volatile uint32_t PTPTTLR;
       uint32_t RESERVED8[567];
  volatile uint32_t DMABMR;
  volatile uint32_t DMATPDR;
  volatile uint32_t DMARPDR;
  volatile uint32_t DMARDLAR;
  volatile uint32_t DMATDLAR;
  volatile uint32_t DMASR;
  volatile uint32_t DMAOMR;
  volatile uint32_t DMAIER;
  volatile uint32_t DMAMFBOCR;
       uint32_t RESERVED9[9];
  volatile uint32_t DMACHTDR;
  volatile uint32_t DMACHRDR;
  volatile uint32_t DMACHTBAR;
  volatile uint32_t DMACHRBAR;
} ETH_TypeDef;



 

typedef struct
{
  volatile uint32_t IMR;
  volatile uint32_t EMR;
  volatile uint32_t RTSR;
  volatile uint32_t FTSR;
  volatile uint32_t SWIER;
  volatile uint32_t PR;
} EXTI_TypeDef;



 

typedef struct
{
  volatile uint32_t ACR;
  volatile uint32_t KEYR;
  volatile uint32_t OPTKEYR;
  volatile uint32_t SR;
  volatile uint32_t CR;
  volatile uint32_t AR;
  volatile uint32_t RESERVED;
  volatile uint32_t OBR;
  volatile uint32_t WRPR;
#line 933 "..\\Source\\device\\stm32f10x.h"
} FLASH_TypeDef;



 
  
typedef struct
{
  volatile uint16_t RDP;
  volatile uint16_t USER;
  volatile uint16_t Data0;
  volatile uint16_t Data1;
  volatile uint16_t WRP0;
  volatile uint16_t WRP1;
  volatile uint16_t WRP2;
  volatile uint16_t WRP3;
} OB_TypeDef;



 

typedef struct
{
  volatile uint32_t BTCR[8];   
} FSMC_Bank1_TypeDef; 



 
  
typedef struct
{
  volatile uint32_t BWTR[7];
} FSMC_Bank1E_TypeDef;



 
  
typedef struct
{
  volatile uint32_t PCR2;
  volatile uint32_t SR2;
  volatile uint32_t PMEM2;
  volatile uint32_t PATT2;
  uint32_t  RESERVED0;   
  volatile uint32_t ECCR2; 
} FSMC_Bank2_TypeDef;  



 
  
typedef struct
{
  volatile uint32_t PCR3;
  volatile uint32_t SR3;
  volatile uint32_t PMEM3;
  volatile uint32_t PATT3;
  uint32_t  RESERVED0;   
  volatile uint32_t ECCR3; 
} FSMC_Bank3_TypeDef; 



 
  
typedef struct
{
  volatile uint32_t PCR4;
  volatile uint32_t SR4;
  volatile uint32_t PMEM4;
  volatile uint32_t PATT4;
  volatile uint32_t PIO4; 
} FSMC_Bank4_TypeDef; 



 

typedef struct
{
  volatile uint32_t CRL;
  volatile uint32_t CRH;
  volatile uint32_t IDR;
  volatile uint32_t ODR;
  volatile uint32_t BSRR;
  volatile uint32_t BRR;
  volatile uint32_t LCKR;
} GPIO_TypeDef;



 

typedef struct
{
  volatile uint32_t EVCR;
  volatile uint32_t MAPR;
  volatile uint32_t EXTICR[4];
  uint32_t RESERVED0;
  volatile uint32_t MAPR2;  
} AFIO_TypeDef;


 

typedef struct
{
  volatile uint16_t CR1;
  uint16_t  RESERVED0;
  volatile uint16_t CR2;
  uint16_t  RESERVED1;
  volatile uint16_t OAR1;
  uint16_t  RESERVED2;
  volatile uint16_t OAR2;
  uint16_t  RESERVED3;
  volatile uint16_t DR;
  uint16_t  RESERVED4;
  volatile uint16_t SR1;
  uint16_t  RESERVED5;
  volatile uint16_t SR2;
  uint16_t  RESERVED6;
  volatile uint16_t CCR;
  uint16_t  RESERVED7;
  volatile uint16_t TRISE;
  uint16_t  RESERVED8;
} I2C_TypeDef;



 

typedef struct
{
  volatile uint32_t KR;
  volatile uint32_t PR;
  volatile uint32_t RLR;
  volatile uint32_t SR;
} IWDG_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CSR;
} PWR_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CFGR;
  volatile uint32_t CIR;
  volatile uint32_t APB2RSTR;
  volatile uint32_t APB1RSTR;
  volatile uint32_t AHBENR;
  volatile uint32_t APB2ENR;
  volatile uint32_t APB1ENR;
  volatile uint32_t BDCR;
  volatile uint32_t CSR;


  volatile uint32_t AHBRSTR;
  volatile uint32_t CFGR2;






} RCC_TypeDef;



 

typedef struct
{
  volatile uint16_t CRH;
  uint16_t  RESERVED0;
  volatile uint16_t CRL;
  uint16_t  RESERVED1;
  volatile uint16_t PRLH;
  uint16_t  RESERVED2;
  volatile uint16_t PRLL;
  uint16_t  RESERVED3;
  volatile uint16_t DIVH;
  uint16_t  RESERVED4;
  volatile uint16_t DIVL;
  uint16_t  RESERVED5;
  volatile uint16_t CNTH;
  uint16_t  RESERVED6;
  volatile uint16_t CNTL;
  uint16_t  RESERVED7;
  volatile uint16_t ALRH;
  uint16_t  RESERVED8;
  volatile uint16_t ALRL;
  uint16_t  RESERVED9;
} RTC_TypeDef;



 

typedef struct
{
  volatile uint32_t POWER;
  volatile uint32_t CLKCR;
  volatile uint32_t ARG;
  volatile uint32_t CMD;
  volatile const uint32_t RESPCMD;
  volatile const uint32_t RESP1;
  volatile const uint32_t RESP2;
  volatile const uint32_t RESP3;
  volatile const uint32_t RESP4;
  volatile uint32_t DTIMER;
  volatile uint32_t DLEN;
  volatile uint32_t DCTRL;
  volatile const uint32_t DCOUNT;
  volatile const uint32_t STA;
  volatile uint32_t ICR;
  volatile uint32_t MASK;
  uint32_t  RESERVED0[2];
  volatile const uint32_t FIFOCNT;
  uint32_t  RESERVED1[13];
  volatile uint32_t FIFO;
} SDIO_TypeDef;



 

typedef struct
{
  volatile uint16_t CR1;
  uint16_t  RESERVED0;
  volatile uint16_t CR2;
  uint16_t  RESERVED1;
  volatile uint16_t SR;
  uint16_t  RESERVED2;
  volatile uint16_t DR;
  uint16_t  RESERVED3;
  volatile uint16_t CRCPR;
  uint16_t  RESERVED4;
  volatile uint16_t RXCRCR;
  uint16_t  RESERVED5;
  volatile uint16_t TXCRCR;
  uint16_t  RESERVED6;
  volatile uint16_t I2SCFGR;
  uint16_t  RESERVED7;
  volatile uint16_t I2SPR;
  uint16_t  RESERVED8;  
} SPI_TypeDef;



 

typedef struct
{
  volatile uint16_t CR1;
  uint16_t  RESERVED0;
  volatile uint16_t CR2;
  uint16_t  RESERVED1;
  volatile uint16_t SMCR;
  uint16_t  RESERVED2;
  volatile uint16_t DIER;
  uint16_t  RESERVED3;
  volatile uint16_t SR;
  uint16_t  RESERVED4;
  volatile uint16_t EGR;
  uint16_t  RESERVED5;
  volatile uint16_t CCMR1;
  uint16_t  RESERVED6;
  volatile uint16_t CCMR2;
  uint16_t  RESERVED7;
  volatile uint16_t CCER;
  uint16_t  RESERVED8;
  volatile uint16_t CNT;
  uint16_t  RESERVED9;
  volatile uint16_t PSC;
  uint16_t  RESERVED10;
  volatile uint16_t ARR;
  uint16_t  RESERVED11;
  volatile uint16_t RCR;
  uint16_t  RESERVED12;
  volatile uint16_t CCR1;
  uint16_t  RESERVED13;
  volatile uint16_t CCR2;
  uint16_t  RESERVED14;
  volatile uint16_t CCR3;
  uint16_t  RESERVED15;
  volatile uint16_t CCR4;
  uint16_t  RESERVED16;
  volatile uint16_t BDTR;
  uint16_t  RESERVED17;
  volatile uint16_t DCR;
  uint16_t  RESERVED18;
  volatile uint16_t DMAR;
  uint16_t  RESERVED19;
} TIM_TypeDef;



 
 
typedef struct
{
  volatile uint16_t SR;
  uint16_t  RESERVED0;
  volatile uint16_t DR;
  uint16_t  RESERVED1;
  volatile uint16_t BRR;
  uint16_t  RESERVED2;
  volatile uint16_t CR1;
  uint16_t  RESERVED3;
  volatile uint16_t CR2;
  uint16_t  RESERVED4;
  volatile uint16_t CR3;
  uint16_t  RESERVED5;
  volatile uint16_t GTPR;
  uint16_t  RESERVED6;
} USART_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CFR;
  volatile uint32_t SR;
} WWDG_TypeDef;



 
  


 











 




#line 1317 "..\\Source\\device\\stm32f10x.h"




#line 1329 "..\\Source\\device\\stm32f10x.h"

#line 1353 "..\\Source\\device\\stm32f10x.h"



#line 1372 "..\\Source\\device\\stm32f10x.h"




















 
  


   

#line 1416 "..\\Source\\device\\stm32f10x.h"





#line 1477 "..\\Source\\device\\stm32f10x.h"



 



 
  
  

 
    
 
 
 

 
 
 
 
 

 



 



 


 
 
 
 
 

 











 
#line 1538 "..\\Source\\device\\stm32f10x.h"




 





 
 
 
 
 

 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 





 



 






 
 
 
 
 

 
#line 1714 "..\\Source\\device\\stm32f10x.h"








 
 








 








 






#line 1757 "..\\Source\\device\\stm32f10x.h"

 











 











 













 






#line 1873 "..\\Source\\device\\stm32f10x.h"




#line 1893 "..\\Source\\device\\stm32f10x.h"

 





#line 1906 "..\\Source\\device\\stm32f10x.h"

 
#line 1925 "..\\Source\\device\\stm32f10x.h"

#line 1934 "..\\Source\\device\\stm32f10x.h"

 
#line 1942 "..\\Source\\device\\stm32f10x.h"



















#line 1967 "..\\Source\\device\\stm32f10x.h"












 













#line 1999 "..\\Source\\device\\stm32f10x.h"





#line 2013 "..\\Source\\device\\stm32f10x.h"

#line 2020 "..\\Source\\device\\stm32f10x.h"

#line 2030 "..\\Source\\device\\stm32f10x.h"











 


















#line 2066 "..\\Source\\device\\stm32f10x.h"

 
#line 2074 "..\\Source\\device\\stm32f10x.h"



















#line 2099 "..\\Source\\device\\stm32f10x.h"












 













#line 2131 "..\\Source\\device\\stm32f10x.h"





#line 2145 "..\\Source\\device\\stm32f10x.h"

#line 2152 "..\\Source\\device\\stm32f10x.h"

#line 2162 "..\\Source\\device\\stm32f10x.h"











 








 








   
#line 2201 "..\\Source\\device\\stm32f10x.h"

#line 2296 "..\\Source\\device\\stm32f10x.h"

#line 2323 "..\\Source\\device\\stm32f10x.h"
 
 
 
 
 
 

 




































































 




































































 
#line 2485 "..\\Source\\device\\stm32f10x.h"

 
#line 2503 "..\\Source\\device\\stm32f10x.h"

 
#line 2521 "..\\Source\\device\\stm32f10x.h"

#line 2538 "..\\Source\\device\\stm32f10x.h"

 
#line 2556 "..\\Source\\device\\stm32f10x.h"

 
#line 2575 "..\\Source\\device\\stm32f10x.h"

 

 






 
#line 2602 "..\\Source\\device\\stm32f10x.h"






 








 









 








 








 









 










 




#line 2677 "..\\Source\\device\\stm32f10x.h"

 










#line 2708 "..\\Source\\device\\stm32f10x.h"

 





 
#line 2723 "..\\Source\\device\\stm32f10x.h"

 
#line 2732 "..\\Source\\device\\stm32f10x.h"

   
#line 2741 "..\\Source\\device\\stm32f10x.h"

 
#line 2750 "..\\Source\\device\\stm32f10x.h"

 





 
#line 2765 "..\\Source\\device\\stm32f10x.h"

 
#line 2774 "..\\Source\\device\\stm32f10x.h"

   
#line 2783 "..\\Source\\device\\stm32f10x.h"

 
#line 2792 "..\\Source\\device\\stm32f10x.h"

 





 
#line 2807 "..\\Source\\device\\stm32f10x.h"

 
#line 2816 "..\\Source\\device\\stm32f10x.h"

   
#line 2825 "..\\Source\\device\\stm32f10x.h"

 
#line 2834 "..\\Source\\device\\stm32f10x.h"

 





 
#line 2849 "..\\Source\\device\\stm32f10x.h"

 
#line 2858 "..\\Source\\device\\stm32f10x.h"

   
#line 2867 "..\\Source\\device\\stm32f10x.h"

 
#line 2876 "..\\Source\\device\\stm32f10x.h"

#line 2885 "..\\Source\\device\\stm32f10x.h"

#line 2894 "..\\Source\\device\\stm32f10x.h"

#line 2904 "..\\Source\\device\\stm32f10x.h"

 
 
 
 
 

 





 


 


 




 
 
 
 
 

 
#line 2968 "..\\Source\\device\\stm32f10x.h"

 
#line 3003 "..\\Source\\device\\stm32f10x.h"

 
#line 3038 "..\\Source\\device\\stm32f10x.h"

 
#line 3073 "..\\Source\\device\\stm32f10x.h"

 
#line 3108 "..\\Source\\device\\stm32f10x.h"

 





 





 





 





 





 





 





 





 






 
#line 3175 "..\\Source\\device\\stm32f10x.h"

 



 









 
#line 3199 "..\\Source\\device\\stm32f10x.h"




 




 
#line 3215 "..\\Source\\device\\stm32f10x.h"

 





 
#line 3237 "..\\Source\\device\\stm32f10x.h"

 
 





 
#line 3252 "..\\Source\\device\\stm32f10x.h"
 
#line 3259 "..\\Source\\device\\stm32f10x.h"

 




 






 


 


 


 
 
 
 
 

 
#line 3308 "..\\Source\\device\\stm32f10x.h"

 
#line 3330 "..\\Source\\device\\stm32f10x.h"

 
#line 3352 "..\\Source\\device\\stm32f10x.h"

 
#line 3374 "..\\Source\\device\\stm32f10x.h"

 
#line 3396 "..\\Source\\device\\stm32f10x.h"

 
#line 3418 "..\\Source\\device\\stm32f10x.h"

 
 
 
 
 

 
#line 3454 "..\\Source\\device\\stm32f10x.h"

 
#line 3484 "..\\Source\\device\\stm32f10x.h"

 
#line 3494 "..\\Source\\device\\stm32f10x.h"















 
#line 3518 "..\\Source\\device\\stm32f10x.h"















 
#line 3542 "..\\Source\\device\\stm32f10x.h"















 
#line 3566 "..\\Source\\device\\stm32f10x.h"















 
#line 3590 "..\\Source\\device\\stm32f10x.h"















 
#line 3614 "..\\Source\\device\\stm32f10x.h"















 
#line 3638 "..\\Source\\device\\stm32f10x.h"















 


 


 


 


 


 


 


 


 


 



 


 


 



 


 


 


 



 


 


 


 


 
 
 
 
 

 






 
#line 3739 "..\\Source\\device\\stm32f10x.h"

#line 3748 "..\\Source\\device\\stm32f10x.h"















  
 
#line 3771 "..\\Source\\device\\stm32f10x.h"


















 








































 


















































 


 


 


 


 


 


 
#line 3906 "..\\Source\\device\\stm32f10x.h"

#line 3913 "..\\Source\\device\\stm32f10x.h"

#line 3920 "..\\Source\\device\\stm32f10x.h"

#line 3927 "..\\Source\\device\\stm32f10x.h"







 
#line 3941 "..\\Source\\device\\stm32f10x.h"

#line 3948 "..\\Source\\device\\stm32f10x.h"

#line 3955 "..\\Source\\device\\stm32f10x.h"

#line 3962 "..\\Source\\device\\stm32f10x.h"

#line 3969 "..\\Source\\device\\stm32f10x.h"

#line 3976 "..\\Source\\device\\stm32f10x.h"

 
#line 3984 "..\\Source\\device\\stm32f10x.h"

#line 3991 "..\\Source\\device\\stm32f10x.h"

#line 3998 "..\\Source\\device\\stm32f10x.h"

#line 4005 "..\\Source\\device\\stm32f10x.h"

#line 4012 "..\\Source\\device\\stm32f10x.h"

#line 4019 "..\\Source\\device\\stm32f10x.h"

 
#line 4027 "..\\Source\\device\\stm32f10x.h"

#line 4034 "..\\Source\\device\\stm32f10x.h"

#line 4041 "..\\Source\\device\\stm32f10x.h"

#line 4048 "..\\Source\\device\\stm32f10x.h"





 


 


 


 


 



 
 
 
 
 

 









































 



 


 


 


 


 


 


 



 



 



 


 


 



 
 
 
 
 
 





 






 


 
#line 4190 "..\\Source\\device\\stm32f10x.h"

 
#line 4200 "..\\Source\\device\\stm32f10x.h"

 


 


 
 
 
 
 

 
















 









#line 4248 "..\\Source\\device\\stm32f10x.h"

 

























 
#line 4291 "..\\Source\\device\\stm32f10x.h"

 
#line 4305 "..\\Source\\device\\stm32f10x.h"

 
#line 4315 "..\\Source\\device\\stm32f10x.h"

 




























 





















 




























 





















 
#line 4434 "..\\Source\\device\\stm32f10x.h"

 


 


 


 


 


 


 


 


 
#line 4469 "..\\Source\\device\\stm32f10x.h"





#line 4480 "..\\Source\\device\\stm32f10x.h"

 
#line 4488 "..\\Source\\device\\stm32f10x.h"

#line 4495 "..\\Source\\device\\stm32f10x.h"

 


 
 
 
 
 

 




 
#line 4517 "..\\Source\\device\\stm32f10x.h"

 


 


 


 


 


 


 


 


 
 
 
 
 

 


 





 


 



 
 
 
 
 

 
#line 4579 "..\\Source\\device\\stm32f10x.h"



 
#line 4591 "..\\Source\\device\\stm32f10x.h"







 


 
 
 
 
 

 











#line 4629 "..\\Source\\device\\stm32f10x.h"

 











#line 4652 "..\\Source\\device\\stm32f10x.h"

 











#line 4675 "..\\Source\\device\\stm32f10x.h"

 











#line 4698 "..\\Source\\device\\stm32f10x.h"

 








































 








































 








































 








































 


































 


































 


































 


































 



























 



























 



























 
#line 5095 "..\\Source\\device\\stm32f10x.h"

 
#line 5104 "..\\Source\\device\\stm32f10x.h"

 
#line 5113 "..\\Source\\device\\stm32f10x.h"

 
#line 5124 "..\\Source\\device\\stm32f10x.h"

#line 5134 "..\\Source\\device\\stm32f10x.h"

#line 5144 "..\\Source\\device\\stm32f10x.h"

#line 5154 "..\\Source\\device\\stm32f10x.h"

 
#line 5165 "..\\Source\\device\\stm32f10x.h"

#line 5175 "..\\Source\\device\\stm32f10x.h"

#line 5185 "..\\Source\\device\\stm32f10x.h"

#line 5195 "..\\Source\\device\\stm32f10x.h"

 
#line 5206 "..\\Source\\device\\stm32f10x.h"

#line 5216 "..\\Source\\device\\stm32f10x.h"

#line 5226 "..\\Source\\device\\stm32f10x.h"

#line 5236 "..\\Source\\device\\stm32f10x.h"

 
#line 5247 "..\\Source\\device\\stm32f10x.h"

#line 5257 "..\\Source\\device\\stm32f10x.h"

#line 5267 "..\\Source\\device\\stm32f10x.h"

#line 5277 "..\\Source\\device\\stm32f10x.h"

 
#line 5288 "..\\Source\\device\\stm32f10x.h"

#line 5298 "..\\Source\\device\\stm32f10x.h"

#line 5308 "..\\Source\\device\\stm32f10x.h"

#line 5318 "..\\Source\\device\\stm32f10x.h"

 
#line 5329 "..\\Source\\device\\stm32f10x.h"

#line 5339 "..\\Source\\device\\stm32f10x.h"

#line 5349 "..\\Source\\device\\stm32f10x.h"

#line 5359 "..\\Source\\device\\stm32f10x.h"

 
#line 5370 "..\\Source\\device\\stm32f10x.h"

#line 5380 "..\\Source\\device\\stm32f10x.h"

#line 5390 "..\\Source\\device\\stm32f10x.h"

#line 5400 "..\\Source\\device\\stm32f10x.h"

 


 


 
 
 
 
 

 




 












 


 






#line 5448 "..\\Source\\device\\stm32f10x.h"

 


 


 


 


 


 


 


 


 
















 


 
#line 5518 "..\\Source\\device\\stm32f10x.h"

 
#line 5533 "..\\Source\\device\\stm32f10x.h"

 
#line 5559 "..\\Source\\device\\stm32f10x.h"

 


 


 
 
 
 
 

 
 























 























 























 























 























 























 























 























 
 
#line 5780 "..\\Source\\device\\stm32f10x.h"

 
#line 5792 "..\\Source\\device\\stm32f10x.h"

 






 
#line 5809 "..\\Source\\device\\stm32f10x.h"



     


 
 


 


 


 


 


 


 


 


 

 


 


 


 


 


 


 


 


 

 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 

 


 


 


 


 


 


 


 


 

 


#line 5953 "..\\Source\\device\\stm32f10x.h"



 


#line 5965 "..\\Source\\device\\stm32f10x.h"



 


#line 5977 "..\\Source\\device\\stm32f10x.h"



 


#line 5989 "..\\Source\\device\\stm32f10x.h"



 


#line 6001 "..\\Source\\device\\stm32f10x.h"



 


#line 6013 "..\\Source\\device\\stm32f10x.h"



 


#line 6025 "..\\Source\\device\\stm32f10x.h"



 


#line 6037 "..\\Source\\device\\stm32f10x.h"



 

 


#line 6051 "..\\Source\\device\\stm32f10x.h"



 


#line 6063 "..\\Source\\device\\stm32f10x.h"



 


#line 6075 "..\\Source\\device\\stm32f10x.h"



 


#line 6087 "..\\Source\\device\\stm32f10x.h"



 


#line 6099 "..\\Source\\device\\stm32f10x.h"



 


#line 6111 "..\\Source\\device\\stm32f10x.h"



 


#line 6123 "..\\Source\\device\\stm32f10x.h"



 


#line 6135 "..\\Source\\device\\stm32f10x.h"



 


#line 6147 "..\\Source\\device\\stm32f10x.h"



 


#line 6159 "..\\Source\\device\\stm32f10x.h"



 


#line 6171 "..\\Source\\device\\stm32f10x.h"



 


#line 6183 "..\\Source\\device\\stm32f10x.h"



 


#line 6195 "..\\Source\\device\\stm32f10x.h"



 


#line 6207 "..\\Source\\device\\stm32f10x.h"



 


#line 6219 "..\\Source\\device\\stm32f10x.h"



 


#line 6231 "..\\Source\\device\\stm32f10x.h"



 
 
 
 
 

 
 
#line 6251 "..\\Source\\device\\stm32f10x.h"

 
#line 6262 "..\\Source\\device\\stm32f10x.h"

 
#line 6280 "..\\Source\\device\\stm32f10x.h"











 





 





 
#line 6318 "..\\Source\\device\\stm32f10x.h"

 












 
#line 6339 "..\\Source\\device\\stm32f10x.h"

 
 






 




 





 





 






 




 





 





 






   




 





 





 





 




 





 





 





 




 





 





 
 


 
#line 6479 "..\\Source\\device\\stm32f10x.h"

 
#line 6496 "..\\Source\\device\\stm32f10x.h"

 
#line 6513 "..\\Source\\device\\stm32f10x.h"

 
#line 6530 "..\\Source\\device\\stm32f10x.h"

 
#line 6564 "..\\Source\\device\\stm32f10x.h"

 
#line 6598 "..\\Source\\device\\stm32f10x.h"

 
#line 6632 "..\\Source\\device\\stm32f10x.h"

 
#line 6666 "..\\Source\\device\\stm32f10x.h"

 
#line 6700 "..\\Source\\device\\stm32f10x.h"

 
#line 6734 "..\\Source\\device\\stm32f10x.h"

 
#line 6768 "..\\Source\\device\\stm32f10x.h"

 
#line 6802 "..\\Source\\device\\stm32f10x.h"

 
#line 6836 "..\\Source\\device\\stm32f10x.h"

 
#line 6870 "..\\Source\\device\\stm32f10x.h"

 
#line 6904 "..\\Source\\device\\stm32f10x.h"

 
#line 6938 "..\\Source\\device\\stm32f10x.h"

 
#line 6972 "..\\Source\\device\\stm32f10x.h"

 
#line 7006 "..\\Source\\device\\stm32f10x.h"

 
#line 7040 "..\\Source\\device\\stm32f10x.h"

 
#line 7074 "..\\Source\\device\\stm32f10x.h"

 
#line 7108 "..\\Source\\device\\stm32f10x.h"

 
#line 7142 "..\\Source\\device\\stm32f10x.h"

 
#line 7176 "..\\Source\\device\\stm32f10x.h"

 
#line 7210 "..\\Source\\device\\stm32f10x.h"

 
#line 7244 "..\\Source\\device\\stm32f10x.h"

 
#line 7278 "..\\Source\\device\\stm32f10x.h"

 
#line 7312 "..\\Source\\device\\stm32f10x.h"

 
#line 7346 "..\\Source\\device\\stm32f10x.h"

 
#line 7380 "..\\Source\\device\\stm32f10x.h"

 
#line 7414 "..\\Source\\device\\stm32f10x.h"

 
#line 7448 "..\\Source\\device\\stm32f10x.h"

 
#line 7482 "..\\Source\\device\\stm32f10x.h"

 
 
 
 
 

 









#line 7509 "..\\Source\\device\\stm32f10x.h"

 
#line 7517 "..\\Source\\device\\stm32f10x.h"

 
#line 7527 "..\\Source\\device\\stm32f10x.h"

 


 


 


 


 





















 




 
 
 
 
 

 
#line 7588 "..\\Source\\device\\stm32f10x.h"

 
#line 7597 "..\\Source\\device\\stm32f10x.h"







 



#line 7618 "..\\Source\\device\\stm32f10x.h"



 



 


 
#line 7643 "..\\Source\\device\\stm32f10x.h"

 
#line 7653 "..\\Source\\device\\stm32f10x.h"

 




 


 
 
 
 
 

 
#line 7679 "..\\Source\\device\\stm32f10x.h"

 


 



 
#line 7703 "..\\Source\\device\\stm32f10x.h"

 
#line 7712 "..\\Source\\device\\stm32f10x.h"







 
#line 7732 "..\\Source\\device\\stm32f10x.h"

 
#line 7743 "..\\Source\\device\\stm32f10x.h"



 
 
 
 
 

 


#line 7772 "..\\Source\\device\\stm32f10x.h"

 









#line 7806 "..\\Source\\device\\stm32f10x.h"

 
 
 
 
 

 









 


 


 





 
#line 7846 "..\\Source\\device\\stm32f10x.h"

 


 









 


 

 



 



 



 



 



 



 



 



#line 8310 "..\\Source\\device\\stm32f10x.h"



 

 

  


  




 

















 









 

  

 

 
#line 33 "..\\Source\\drivers\\./stm32lib/misc.h"



 



 



 



 

typedef struct
{
  uint8_t NVIC_IRQChannel;                    


 

  uint8_t NVIC_IRQChannelPreemptionPriority;  

 

  uint8_t NVIC_IRQChannelSubPriority;         

 

  FunctionalState NVIC_IRQChannelCmd;         

    
} NVIC_InitTypeDef;
 


 



 
























 



 



 



 







 



 

#line 133 "..\\Source\\drivers\\./stm32lib/misc.h"


 



 

#line 151 "..\\Source\\drivers\\./stm32lib/misc.h"















 



 







 



 



 



 



 

void NVIC_PriorityGroupConfig(uint32_t NVIC_PriorityGroup);
void NVIC_Init(NVIC_InitTypeDef* NVIC_InitStruct);
void NVIC_SetVectorTable(uint32_t NVIC_VectTab, uint32_t Offset);
void NVIC_SystemLPConfig(uint8_t LowPowerMode, FunctionalState NewState);
void SysTick_CLKSourceConfig(uint32_t SysTick_CLKSource);









 



 



 

 
#line 22 "..\\Source\\drivers\\drivers.h"

#line 1 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.h"




















 

 







 
#line 33 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.h"



 



 



 

typedef struct
{
  uint32_t SYSCLK_Frequency;   
  uint32_t HCLK_Frequency;     
  uint32_t PCLK1_Frequency;    
  uint32_t PCLK2_Frequency;    
  uint32_t ADCCLK_Frequency;   
}RCC_ClocksTypeDef;



 



 



 









  



 



#line 94 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.h"



  



 
#line 126 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.h"

#line 141 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.h"


 



 
#line 175 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.h"


 




 
#line 196 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.h"


 

#line 283 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.h"




 

#line 295 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.h"


 



 

#line 317 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.h"


  



 

#line 333 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.h"


 



 

#line 347 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.h"

#line 364 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.h"




 




 








 
#line 396 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.h"


#line 423 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.h"
  



 

#line 435 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.h"


 



 








 



 

#line 462 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.h"


 



 







#line 489 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.h"


 



 

#line 518 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.h"




  



 

#line 553 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.h"
 




 



 







#line 586 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.h"



 



 

#line 606 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.h"

#line 625 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.h"




 



 



 



 



 

void RCC_DeInit(void);
void RCC_HSEConfig(uint32_t RCC_HSE);
ErrorStatus RCC_WaitForHSEStartUp(void);
void RCC_AdjustHSICalibrationValue(uint8_t HSICalibrationValue);
void RCC_HSICmd(FunctionalState NewState);
void RCC_PLLConfig(uint32_t RCC_PLLSource, uint32_t RCC_PLLMul);
void RCC_PLLCmd(FunctionalState NewState);





#line 666 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.h"

void RCC_SYSCLKConfig(uint32_t RCC_SYSCLKSource);
uint8_t RCC_GetSYSCLKSource(void);
void RCC_HCLKConfig(uint32_t RCC_SYSCLK);
void RCC_PCLK1Config(uint32_t RCC_HCLK);
void RCC_PCLK2Config(uint32_t RCC_HCLK);
void RCC_ITConfig(uint8_t RCC_IT, FunctionalState NewState);


 void RCC_USBCLKConfig(uint32_t RCC_USBCLKSource);




void RCC_ADCCLKConfig(uint32_t RCC_PCLK2);






void RCC_LSEConfig(uint8_t RCC_LSE);
void RCC_LSICmd(FunctionalState NewState);
void RCC_RTCCLKConfig(uint32_t RCC_RTCCLKSource);
void RCC_RTCCLKCmd(FunctionalState NewState);
void RCC_GetClocksFreq(RCC_ClocksTypeDef* RCC_Clocks);
void RCC_AHBPeriphClockCmd(uint32_t RCC_AHBPeriph, FunctionalState NewState);
void RCC_APB2PeriphClockCmd(uint32_t RCC_APB2Periph, FunctionalState NewState);
void RCC_APB1PeriphClockCmd(uint32_t RCC_APB1Periph, FunctionalState NewState);





void RCC_APB2PeriphResetCmd(uint32_t RCC_APB2Periph, FunctionalState NewState);
void RCC_APB1PeriphResetCmd(uint32_t RCC_APB1Periph, FunctionalState NewState);
void RCC_BackupResetCmd(FunctionalState NewState);
void RCC_ClockSecuritySystemCmd(FunctionalState NewState);
void RCC_MCOConfig(uint8_t RCC_MCO);
FlagStatus RCC_GetFlagStatus(uint8_t RCC_FLAG);
void RCC_ClearFlag(void);
ITStatus RCC_GetITStatus(uint8_t RCC_IT);
void RCC_ClearITPendingBit(uint8_t RCC_IT);








 



 



  

 
#line 24 "..\\Source\\drivers\\drivers.h"

#line 1 "..\\Source\\drivers\\./stm32lib/stm32f10x_pwr.h"




















 

 







 
#line 33 "..\\Source\\drivers\\./stm32lib/stm32f10x_pwr.h"



 



  



  



  



  



  

#line 70 "..\\Source\\drivers\\./stm32lib/stm32f10x_pwr.h"


 



 







 



 




 


 



 










 



 



 



 



 

void PWR_DeInit(void);
void PWR_BackupAccessCmd(FunctionalState NewState);
void PWR_PVDCmd(FunctionalState NewState);
void PWR_PVDLevelConfig(uint32_t PWR_PVDLevel);
void PWR_WakeUpPinCmd(FunctionalState NewState);
void PWR_EnterSTOPMode(uint32_t PWR_Regulator, uint8_t PWR_STOPEntry);
void PWR_EnterSTANDBYMode(void);
FlagStatus PWR_GetFlagStatus(uint32_t PWR_FLAG);
void PWR_ClearFlag(uint32_t PWR_FLAG);








 



 



 

 
#line 26 "..\\Source\\drivers\\drivers.h"

#line 1 "..\\Source\\drivers\\./stm32lib/stm32f10x_gpio.h"




















 

 







 
#line 33 "..\\Source\\drivers\\./stm32lib/stm32f10x_gpio.h"



 



 



 

#line 53 "..\\Source\\drivers\\./stm32lib/stm32f10x_gpio.h"
                                     


 

typedef enum
{ 
  GPIO_Speed_10MHz = 1,
  GPIO_Speed_2MHz, 
  GPIO_Speed_50MHz
}GPIOSpeed_TypeDef;





 

typedef enum
{ GPIO_Mode_AIN = 0x0,
  GPIO_Mode_IN_FLOATING = 0x04,
  GPIO_Mode_IPD = 0x28,
  GPIO_Mode_IPU = 0x48,
  GPIO_Mode_Out_OD = 0x14,
  GPIO_Mode_Out_PP = 0x10,
  GPIO_Mode_AF_OD = 0x1C,
  GPIO_Mode_AF_PP = 0x18
}GPIOMode_TypeDef;








 

typedef struct
{
  uint16_t GPIO_Pin;             
 

  GPIOSpeed_TypeDef GPIO_Speed;  
 

  GPIOMode_TypeDef GPIO_Mode;    
 
}GPIO_InitTypeDef;




 

typedef enum
{ Bit_RESET = 0,
  Bit_SET
}BitAction;





 



 



 

#line 144 "..\\Source\\drivers\\./stm32lib/stm32f10x_gpio.h"



#line 163 "..\\Source\\drivers\\./stm32lib/stm32f10x_gpio.h"



 



 

#line 204 "..\\Source\\drivers\\./stm32lib/stm32f10x_gpio.h"







#line 217 "..\\Source\\drivers\\./stm32lib/stm32f10x_gpio.h"






#line 245 "..\\Source\\drivers\\./stm32lib/stm32f10x_gpio.h"
                              


  



 

#line 266 "..\\Source\\drivers\\./stm32lib/stm32f10x_gpio.h"

#line 274 "..\\Source\\drivers\\./stm32lib/stm32f10x_gpio.h"



 



 

#line 299 "..\\Source\\drivers\\./stm32lib/stm32f10x_gpio.h"

#line 316 "..\\Source\\drivers\\./stm32lib/stm32f10x_gpio.h"



 



  








                                                 


 



 



 



 

void GPIO_DeInit(GPIO_TypeDef* GPIOx);
void GPIO_AFIODeInit(void);
void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_InitTypeDef* GPIO_InitStruct);
void GPIO_StructInit(GPIO_InitTypeDef* GPIO_InitStruct);
uint8_t GPIO_ReadInputDataBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
uint16_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx);
uint8_t GPIO_ReadOutputDataBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
uint16_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx);
void GPIO_SetBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void GPIO_ResetBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void GPIO_WriteBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, BitAction BitVal);
void GPIO_Write(GPIO_TypeDef* GPIOx, uint16_t PortVal);
void GPIO_PinLockConfig(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void GPIO_EventOutputConfig(uint8_t GPIO_PortSource, uint8_t GPIO_PinSource);
void GPIO_EventOutputCmd(FunctionalState NewState);
void GPIO_PinRemapConfig(uint32_t GPIO_Remap, FunctionalState NewState);
void GPIO_EXTILineConfig(uint8_t GPIO_PortSource, uint8_t GPIO_PinSource);
void GPIO_ETH_MediaInterfaceConfig(uint32_t GPIO_ETH_MediaInterface);








 



 



 

 
#line 28 "..\\Source\\drivers\\drivers.h"

#line 1 "..\\Source\\drivers\\./stm32lib/stm32f10x_adc.h"




















 

 







 
#line 33 "..\\Source\\drivers\\./stm32lib/stm32f10x_adc.h"



 



 



 



 

typedef struct
{
  uint32_t ADC_Mode;                      

 

  FunctionalState ADC_ScanConvMode;       

 

  FunctionalState ADC_ContinuousConvMode; 

 

  uint32_t ADC_ExternalTrigConv;          

 

  uint32_t ADC_DataAlign;                 
 

  uint8_t ADC_NbrOfChannel;               

 
}ADC_InitTypeDef;


 



 










 

#line 104 "..\\Source\\drivers\\./stm32lib/stm32f10x_adc.h"

#line 115 "..\\Source\\drivers\\./stm32lib/stm32f10x_adc.h"


 



 

#line 129 "..\\Source\\drivers\\./stm32lib/stm32f10x_adc.h"




#line 139 "..\\Source\\drivers\\./stm32lib/stm32f10x_adc.h"

#line 154 "..\\Source\\drivers\\./stm32lib/stm32f10x_adc.h"


 



 







 



 

#line 192 "..\\Source\\drivers\\./stm32lib/stm32f10x_adc.h"




#line 205 "..\\Source\\drivers\\./stm32lib/stm32f10x_adc.h"


 



 

#line 229 "..\\Source\\drivers\\./stm32lib/stm32f10x_adc.h"


 



 

















#line 266 "..\\Source\\drivers\\./stm32lib/stm32f10x_adc.h"


 



 

#line 282 "..\\Source\\drivers\\./stm32lib/stm32f10x_adc.h"


 



 

#line 297 "..\\Source\\drivers\\./stm32lib/stm32f10x_adc.h"

#line 305 "..\\Source\\drivers\\./stm32lib/stm32f10x_adc.h"


 



 











 



 

#line 338 "..\\Source\\drivers\\./stm32lib/stm32f10x_adc.h"


 



 





 



 





 



 





 



 





  




 




 



 





 



 





 



 



 



 



 

void ADC_DeInit(ADC_TypeDef* ADCx);
void ADC_Init(ADC_TypeDef* ADCx, ADC_InitTypeDef* ADC_InitStruct);
void ADC_StructInit(ADC_InitTypeDef* ADC_InitStruct);
void ADC_Cmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_DMACmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_ITConfig(ADC_TypeDef* ADCx, uint16_t ADC_IT, FunctionalState NewState);
void ADC_ResetCalibration(ADC_TypeDef* ADCx);
FlagStatus ADC_GetResetCalibrationStatus(ADC_TypeDef* ADCx);
void ADC_StartCalibration(ADC_TypeDef* ADCx);
FlagStatus ADC_GetCalibrationStatus(ADC_TypeDef* ADCx);
void ADC_SoftwareStartConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
FlagStatus ADC_GetSoftwareStartConvStatus(ADC_TypeDef* ADCx);
void ADC_DiscModeChannelCountConfig(ADC_TypeDef* ADCx, uint8_t Number);
void ADC_DiscModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_RegularChannelConfig(ADC_TypeDef* ADCx, uint8_t ADC_Channel, uint8_t Rank, uint8_t ADC_SampleTime);
void ADC_ExternalTrigConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
uint16_t ADC_GetConversionValue(ADC_TypeDef* ADCx);
uint32_t ADC_GetDualModeConversionValue(void);
void ADC_AutoInjectedConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_InjectedDiscModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_ExternalTrigInjectedConvConfig(ADC_TypeDef* ADCx, uint32_t ADC_ExternalTrigInjecConv);
void ADC_ExternalTrigInjectedConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_SoftwareStartInjectedConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
FlagStatus ADC_GetSoftwareStartInjectedConvCmdStatus(ADC_TypeDef* ADCx);
void ADC_InjectedChannelConfig(ADC_TypeDef* ADCx, uint8_t ADC_Channel, uint8_t Rank, uint8_t ADC_SampleTime);
void ADC_InjectedSequencerLengthConfig(ADC_TypeDef* ADCx, uint8_t Length);
void ADC_SetInjectedOffset(ADC_TypeDef* ADCx, uint8_t ADC_InjectedChannel, uint16_t Offset);
uint16_t ADC_GetInjectedConversionValue(ADC_TypeDef* ADCx, uint8_t ADC_InjectedChannel);
void ADC_AnalogWatchdogCmd(ADC_TypeDef* ADCx, uint32_t ADC_AnalogWatchdog);
void ADC_AnalogWatchdogThresholdsConfig(ADC_TypeDef* ADCx, uint16_t HighThreshold, uint16_t LowThreshold);
void ADC_AnalogWatchdogSingleChannelConfig(ADC_TypeDef* ADCx, uint8_t ADC_Channel);
void ADC_TempSensorVrefintCmd(FunctionalState NewState);
FlagStatus ADC_GetFlagStatus(ADC_TypeDef* ADCx, uint8_t ADC_FLAG);
void ADC_ClearFlag(ADC_TypeDef* ADCx, uint8_t ADC_FLAG);
ITStatus ADC_GetITStatus(ADC_TypeDef* ADCx, uint16_t ADC_IT);
void ADC_ClearITPendingBit(ADC_TypeDef* ADCx, uint16_t ADC_IT);









 



 



 

 
#line 30 "..\\Source\\drivers\\drivers.h"

#line 1 "..\\Source\\drivers\\./stm32lib/stm32f10x_usart.h"




















 

 







 
#line 33 "..\\Source\\drivers\\./stm32lib/stm32f10x_usart.h"



 



  



  



  
  
typedef struct
{
  uint32_t USART_BaudRate;            


 

  uint16_t USART_WordLength;          
 

  uint16_t USART_StopBits;            
 

  uint16_t USART_Parity;              




 
 
  uint16_t USART_Mode;                
 

  uint16_t USART_HardwareFlowControl; 

 
} USART_InitTypeDef;



  
  
typedef struct
{

  uint16_t USART_Clock;   
 

  uint16_t USART_CPOL;    
 

  uint16_t USART_CPHA;    
 

  uint16_t USART_LastBit; 

 
} USART_ClockInitTypeDef;



  



  
  
#line 115 "..\\Source\\drivers\\./stm32lib/stm32f10x_usart.h"











  
  


                                    




  



  
  
#line 149 "..\\Source\\drivers\\./stm32lib/stm32f10x_usart.h"


  



  
  
#line 163 "..\\Source\\drivers\\./stm32lib/stm32f10x_usart.h"


  



  
  





  



  
#line 190 "..\\Source\\drivers\\./stm32lib/stm32f10x_usart.h"


  



  






  



 
  






  



 







 



 







  



 
  
#line 267 "..\\Source\\drivers\\./stm32lib/stm32f10x_usart.h"


 



 







  



 







 



 
  







 



 







  



 

#line 339 "..\\Source\\drivers\\./stm32lib/stm32f10x_usart.h"
                              
#line 347 "..\\Source\\drivers\\./stm32lib/stm32f10x_usart.h"



  



  



  



  



 

void USART_DeInit(USART_TypeDef* USARTx);
void USART_Init(USART_TypeDef* USARTx, USART_InitTypeDef* USART_InitStruct);
void USART_StructInit(USART_InitTypeDef* USART_InitStruct);
void USART_ClockInit(USART_TypeDef* USARTx, USART_ClockInitTypeDef* USART_ClockInitStruct);
void USART_ClockStructInit(USART_ClockInitTypeDef* USART_ClockInitStruct);
void USART_Cmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_ITConfig(USART_TypeDef* USARTx, uint16_t USART_IT, FunctionalState NewState);
void USART_DMACmd(USART_TypeDef* USARTx, uint16_t USART_DMAReq, FunctionalState NewState);
void USART_SetAddress(USART_TypeDef* USARTx, uint8_t USART_Address);
void USART_WakeUpConfig(USART_TypeDef* USARTx, uint16_t USART_WakeUp);
void USART_ReceiverWakeUpCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_LINBreakDetectLengthConfig(USART_TypeDef* USARTx, uint16_t USART_LINBreakDetectLength);
void USART_LINCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_SendData(USART_TypeDef* USARTx, uint16_t Data);
uint16_t USART_ReceiveData(USART_TypeDef* USARTx);
void USART_SendBreak(USART_TypeDef* USARTx);
void USART_SetGuardTime(USART_TypeDef* USARTx, uint8_t USART_GuardTime);
void USART_SetPrescaler(USART_TypeDef* USARTx, uint8_t USART_Prescaler);
void USART_SmartCardCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_SmartCardNACKCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_HalfDuplexCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_OverSampling8Cmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_OneBitMethodCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_IrDAConfig(USART_TypeDef* USARTx, uint16_t USART_IrDAMode);
void USART_IrDACmd(USART_TypeDef* USARTx, FunctionalState NewState);
FlagStatus USART_GetFlagStatus(USART_TypeDef* USARTx, uint16_t USART_FLAG);
void USART_ClearFlag(USART_TypeDef* USARTx, uint16_t USART_FLAG);
ITStatus USART_GetITStatus(USART_TypeDef* USARTx, uint16_t USART_IT);
void USART_ClearITPendingBit(USART_TypeDef* USARTx, uint16_t USART_IT);








  



  



  

 
#line 32 "..\\Source\\drivers\\drivers.h"

#line 1 "..\\Source\\drivers\\./stm32lib/stm32f10x_spi.h"




















 

 







 
#line 33 "..\\Source\\drivers\\./stm32lib/stm32f10x_spi.h"



 



  



 



 

typedef struct
{
  uint16_t SPI_Direction;           
 

  uint16_t SPI_Mode;                
 

  uint16_t SPI_DataSize;            
 

  uint16_t SPI_CPOL;                
 

  uint16_t SPI_CPHA;                
 

  uint16_t SPI_NSS;                 

 
 
  uint16_t SPI_BaudRatePrescaler;   



 

  uint16_t SPI_FirstBit;            
 

  uint16_t SPI_CRCPolynomial;        
}SPI_InitTypeDef;



 

typedef struct
{

  uint16_t I2S_Mode;         
 

  uint16_t I2S_Standard;     
 

  uint16_t I2S_DataFormat;   
 

  uint16_t I2S_MCLKOutput;   
 

  uint32_t I2S_AudioFreq;    
 

  uint16_t I2S_CPOL;         
 
}I2S_InitTypeDef;



 



 










 
  
#line 136 "..\\Source\\drivers\\./stm32lib/stm32f10x_spi.h"


 



 







 



 







  



 







 



 







 



 







  



 

#line 220 "..\\Source\\drivers\\./stm32lib/stm32f10x_spi.h"


  



 







 



 

#line 248 "..\\Source\\drivers\\./stm32lib/stm32f10x_spi.h"


 



 

#line 266 "..\\Source\\drivers\\./stm32lib/stm32f10x_spi.h"


 



 

#line 282 "..\\Source\\drivers\\./stm32lib/stm32f10x_spi.h"


  



 







 



 

#line 312 "..\\Source\\drivers\\./stm32lib/stm32f10x_spi.h"






  



 







 



 






 



 







 



 






 



 







 



 

#line 396 "..\\Source\\drivers\\./stm32lib/stm32f10x_spi.h"


 



 

#line 417 "..\\Source\\drivers\\./stm32lib/stm32f10x_spi.h"


 



 




 



 



 



 



 

void SPI_I2S_DeInit(SPI_TypeDef* SPIx);
void SPI_Init(SPI_TypeDef* SPIx, SPI_InitTypeDef* SPI_InitStruct);
void I2S_Init(SPI_TypeDef* SPIx, I2S_InitTypeDef* I2S_InitStruct);
void SPI_StructInit(SPI_InitTypeDef* SPI_InitStruct);
void I2S_StructInit(I2S_InitTypeDef* I2S_InitStruct);
void SPI_Cmd(SPI_TypeDef* SPIx, FunctionalState NewState);
void I2S_Cmd(SPI_TypeDef* SPIx, FunctionalState NewState);
void SPI_I2S_ITConfig(SPI_TypeDef* SPIx, uint8_t SPI_I2S_IT, FunctionalState NewState);
void SPI_I2S_DMACmd(SPI_TypeDef* SPIx, uint16_t SPI_I2S_DMAReq, FunctionalState NewState);
void SPI_I2S_SendData(SPI_TypeDef* SPIx, uint16_t Data);
uint16_t SPI_I2S_ReceiveData(SPI_TypeDef* SPIx);
void SPI_NSSInternalSoftwareConfig(SPI_TypeDef* SPIx, uint16_t SPI_NSSInternalSoft);
void SPI_SSOutputCmd(SPI_TypeDef* SPIx, FunctionalState NewState);
void SPI_DataSizeConfig(SPI_TypeDef* SPIx, uint16_t SPI_DataSize);
void SPI_TransmitCRC(SPI_TypeDef* SPIx);
void SPI_CalculateCRC(SPI_TypeDef* SPIx, FunctionalState NewState);
uint16_t SPI_GetCRC(SPI_TypeDef* SPIx, uint8_t SPI_CRC);
uint16_t SPI_GetCRCPolynomial(SPI_TypeDef* SPIx);
void SPI_BiDirectionalLineConfig(SPI_TypeDef* SPIx, uint16_t SPI_Direction);
FlagStatus SPI_I2S_GetFlagStatus(SPI_TypeDef* SPIx, uint16_t SPI_I2S_FLAG);
void SPI_I2S_ClearFlag(SPI_TypeDef* SPIx, uint16_t SPI_I2S_FLAG);
ITStatus SPI_I2S_GetITStatus(SPI_TypeDef* SPIx, uint8_t SPI_I2S_IT);
void SPI_I2S_ClearITPendingBit(SPI_TypeDef* SPIx, uint8_t SPI_I2S_IT);








 



 



 

 
#line 34 "..\\Source\\drivers\\drivers.h"

#line 1 "..\\Source\\drivers\\./stm32lib/stm32f10x_flash.h"




















 

 







 
#line 33 "..\\Source\\drivers\\./stm32lib/stm32f10x_flash.h"



 



 



 



 

typedef enum
{ 
  FLASH_BUSY = 1,
  FLASH_ERROR_PG,
  FLASH_ERROR_WRP,
  FLASH_COMPLETE,
  FLASH_TIMEOUT
}FLASH_Status;



 



 



 

#line 77 "..\\Source\\drivers\\./stm32lib/stm32f10x_flash.h"


 



 







 



 







 



 

 
#line 118 "..\\Source\\drivers\\./stm32lib/stm32f10x_flash.h"

 
#line 144 "..\\Source\\drivers\\./stm32lib/stm32f10x_flash.h"

 
#line 211 "..\\Source\\drivers\\./stm32lib/stm32f10x_flash.h"











 



 







 



 







 



 





#line 270 "..\\Source\\drivers\\./stm32lib/stm32f10x_flash.h"


 


 
#line 291 "..\\Source\\drivers\\./stm32lib/stm32f10x_flash.h"






 



 
#line 333 "..\\Source\\drivers\\./stm32lib/stm32f10x_flash.h"





 
#line 346 "..\\Source\\drivers\\./stm32lib/stm32f10x_flash.h"



 



 



 



 



 

 
void FLASH_SetLatency(uint32_t FLASH_Latency);
void FLASH_HalfCycleAccessCmd(uint32_t FLASH_HalfCycleAccess);
void FLASH_PrefetchBufferCmd(uint32_t FLASH_PrefetchBuffer);
void FLASH_Unlock(void);
void FLASH_Lock(void);
FLASH_Status FLASH_ErasePage(uint32_t Page_Address);
FLASH_Status FLASH_EraseAllPages(void);
FLASH_Status FLASH_EraseOptionBytes(void);
FLASH_Status FLASH_ProgramWord(uint32_t Address, uint32_t Data);
FLASH_Status FLASH_ProgramHalfWord(uint32_t Address, uint16_t Data);
FLASH_Status FLASH_ProgramOptionByteData(uint32_t Address, uint8_t Data);
FLASH_Status FLASH_EnableWriteProtection(uint32_t FLASH_Pages);
FLASH_Status FLASH_ReadOutProtection(FunctionalState NewState);
FLASH_Status FLASH_UserOptionByteConfig(uint16_t OB_IWDG, uint16_t OB_STOP, uint16_t OB_STDBY);
uint32_t FLASH_GetUserOptionByte(void);
uint32_t FLASH_GetWriteProtectionOptionByte(void);
FlagStatus FLASH_GetReadOutProtectionStatus(void);
FlagStatus FLASH_GetPrefetchBufferStatus(void);
void FLASH_ITConfig(uint32_t FLASH_IT, FunctionalState NewState);
FlagStatus FLASH_GetFlagStatus(uint32_t FLASH_FLAG);
void FLASH_ClearFlag(uint32_t FLASH_FLAG);
FLASH_Status FLASH_GetStatus(void);
FLASH_Status FLASH_WaitForLastOperation(uint32_t Timeout);

 
void FLASH_UnlockBank1(void);
void FLASH_LockBank1(void);
FLASH_Status FLASH_EraseAllBank1Pages(void);
FLASH_Status FLASH_GetBank1Status(void);
FLASH_Status FLASH_WaitForLastBank1Operation(uint32_t Timeout);

#line 408 "..\\Source\\drivers\\./stm32lib/stm32f10x_flash.h"








 



 



 

 
#line 36 "..\\Source\\drivers\\drivers.h"

#line 1 "..\\Source\\drivers\\./stm32lib/stm32f10x_exti.h"




















 

 







 
#line 33 "..\\Source\\drivers\\./stm32lib/stm32f10x_exti.h"



 



 



 



 

typedef enum
{
  EXTI_Mode_Interrupt = 0x00,
  EXTI_Mode_Event = 0x04
}EXTIMode_TypeDef;





 

typedef enum
{
  EXTI_Trigger_Rising = 0x08,
  EXTI_Trigger_Falling = 0x0C,  
  EXTI_Trigger_Rising_Falling = 0x10
}EXTITrigger_TypeDef;






 

typedef struct
{
  uint32_t EXTI_Line;               
 
   
  EXTIMode_TypeDef EXTI_Mode;       
 

  EXTITrigger_TypeDef EXTI_Trigger; 
 

  FunctionalState EXTI_LineCmd;     
  
}EXTI_InitTypeDef;



 



 



 

#line 124 "..\\Source\\drivers\\./stm32lib/stm32f10x_exti.h"
                                          
#line 136 "..\\Source\\drivers\\./stm32lib/stm32f10x_exti.h"

                    


 



 



 



 



 

void EXTI_DeInit(void);
void EXTI_Init(EXTI_InitTypeDef* EXTI_InitStruct);
void EXTI_StructInit(EXTI_InitTypeDef* EXTI_InitStruct);
void EXTI_GenerateSWInterrupt(uint32_t EXTI_Line);
FlagStatus EXTI_GetFlagStatus(uint32_t EXTI_Line);
void EXTI_ClearFlag(uint32_t EXTI_Line);
ITStatus EXTI_GetITStatus(uint32_t EXTI_Line);
void EXTI_ClearITPendingBit(uint32_t EXTI_Line);








 



 



 

 
#line 38 "..\\Source\\drivers\\drivers.h"

#line 1 "..\\Source\\drivers\\./stm32lib/stm32f10x_can.h"




















 

 







 
#line 33 "..\\Source\\drivers\\./stm32lib/stm32f10x_can.h"



 



 



 






 

typedef struct
{
  uint16_t CAN_Prescaler;   
 
  
  uint8_t CAN_Mode;         

 

  uint8_t CAN_SJW;          



 

  uint8_t CAN_BS1;          

 

  uint8_t CAN_BS2;          


 
  
  FunctionalState CAN_TTCM; 

 
  
  FunctionalState CAN_ABOM;  

 

  FunctionalState CAN_AWUM;  

 

  FunctionalState CAN_NART;  

 

  FunctionalState CAN_RFLM;  

 

  FunctionalState CAN_TXFP;  

 
} CAN_InitTypeDef;



 

typedef struct
{
  uint16_t CAN_FilterIdHigh;         

 

  uint16_t CAN_FilterIdLow;          

 

  uint16_t CAN_FilterMaskIdHigh;     


 

  uint16_t CAN_FilterMaskIdLow;      


 

  uint16_t CAN_FilterFIFOAssignment; 
 
  
  uint8_t CAN_FilterNumber;           

  uint8_t CAN_FilterMode;            
 

  uint8_t CAN_FilterScale;           
 

  FunctionalState CAN_FilterActivation; 
 
} CAN_FilterInitTypeDef;



 

typedef struct
{
  uint32_t StdId;  
 

  uint32_t ExtId;  
 

  uint8_t IDE;     

 

  uint8_t RTR;     

 

  uint8_t DLC;     

 

  uint8_t Data[8]; 
 
} CanTxMsg;



 

typedef struct
{
  uint32_t StdId;  
 

  uint32_t ExtId;  
 

  uint8_t IDE;     

 

  uint8_t RTR;     

 

  uint8_t DLC;     
 

  uint8_t Data[8]; 
 

  uint8_t FMI;     

 
} CanRxMsg;



 



 



 






 



 












 





   










 
  



   







 



 










 



 

#line 301 "..\\Source\\drivers\\./stm32lib/stm32f10x_can.h"




 



 

#line 319 "..\\Source\\drivers\\./stm32lib/stm32f10x_can.h"





 



 





 



 







 



 








 



 









 



 







 



 



 



 








 



 







 



 







 



 








 



 








 



 






 



 






 




   
                                                                
#line 493 "..\\Source\\drivers\\./stm32lib/stm32f10x_can.h"




 



 

 
 

 




 
#line 518 "..\\Source\\drivers\\./stm32lib/stm32f10x_can.h"

 



 

 





#line 539 "..\\Source\\drivers\\./stm32lib/stm32f10x_can.h"








 

  


 


  


 
#line 565 "..\\Source\\drivers\\./stm32lib/stm32f10x_can.h"

 



 






 





#line 590 "..\\Source\\drivers\\./stm32lib/stm32f10x_can.h"

#line 597 "..\\Source\\drivers\\./stm32lib/stm32f10x_can.h"



 



 
#line 621 "..\\Source\\drivers\\./stm32lib/stm32f10x_can.h"



 



 



 



 



 
  
void CAN_DeInit(CAN_TypeDef* CANx);

  
uint8_t CAN_Init(CAN_TypeDef* CANx, CAN_InitTypeDef* CAN_InitStruct);
void CAN_FilterInit(CAN_FilterInitTypeDef* CAN_FilterInitStruct);
void CAN_StructInit(CAN_InitTypeDef* CAN_InitStruct);
void CAN_SlaveStartBank(uint8_t CAN_BankNumber); 
void CAN_DBGFreeze(CAN_TypeDef* CANx, FunctionalState NewState);
void CAN_TTComModeCmd(CAN_TypeDef* CANx, FunctionalState NewState);

 
uint8_t CAN_Transmit(CAN_TypeDef* CANx, CanTxMsg* TxMessage);
uint8_t CAN_TransmitStatus(CAN_TypeDef* CANx, uint8_t TransmitMailbox);
void CAN_CancelTransmit(CAN_TypeDef* CANx, uint8_t Mailbox);

 
void CAN_Receive(CAN_TypeDef* CANx, uint8_t FIFONumber, CanRxMsg* RxMessage);
void CAN_FIFORelease(CAN_TypeDef* CANx, uint8_t FIFONumber);
uint8_t CAN_MessagePending(CAN_TypeDef* CANx, uint8_t FIFONumber);


 
uint8_t CAN_OperatingModeRequest(CAN_TypeDef* CANx, uint8_t CAN_OperatingMode);
uint8_t CAN_Sleep(CAN_TypeDef* CANx);
uint8_t CAN_WakeUp(CAN_TypeDef* CANx);

 
uint8_t CAN_GetLastErrorCode(CAN_TypeDef* CANx);
uint8_t CAN_GetReceiveErrorCounter(CAN_TypeDef* CANx);
uint8_t CAN_GetLSBTransmitErrorCounter(CAN_TypeDef* CANx);

 
void CAN_ITConfig(CAN_TypeDef* CANx, uint32_t CAN_IT, FunctionalState NewState);
FlagStatus CAN_GetFlagStatus(CAN_TypeDef* CANx, uint32_t CAN_FLAG);
void CAN_ClearFlag(CAN_TypeDef* CANx, uint32_t CAN_FLAG);
ITStatus CAN_GetITStatus(CAN_TypeDef* CANx, uint32_t CAN_IT);
void CAN_ClearITPendingBit(CAN_TypeDef* CANx, uint32_t CAN_IT);








 



 



 

 
#line 40 "..\\Source\\drivers\\drivers.h"

#line 1 "..\\Source\\drivers\\./stm32lib/stm32f10x_rtc.h"




















 

 







 
#line 33 "..\\Source\\drivers\\./stm32lib/stm32f10x_rtc.h"



 



  



  



  



 



 

#line 64 "..\\Source\\drivers\\./stm32lib/stm32f10x_rtc.h"


  



 

#line 82 "..\\Source\\drivers\\./stm32lib/stm32f10x_rtc.h"



 



 



 



 



 

void RTC_ITConfig(uint16_t RTC_IT, FunctionalState NewState);
void RTC_EnterConfigMode(void);
void RTC_ExitConfigMode(void);
uint32_t  RTC_GetCounter(void);
void RTC_SetCounter(uint32_t CounterValue);
void RTC_SetPrescaler(uint32_t PrescalerValue);
void RTC_SetAlarm(uint32_t AlarmValue);
uint32_t  RTC_GetDivider(void);
void RTC_WaitForLastTask(void);
void RTC_WaitForSynchro(void);
FlagStatus RTC_GetFlagStatus(uint16_t RTC_FLAG);
void RTC_ClearFlag(uint16_t RTC_FLAG);
ITStatus RTC_GetITStatus(uint16_t RTC_IT);
void RTC_ClearITPendingBit(uint16_t RTC_IT);








 



 



 

 
#line 42 "..\\Source\\drivers\\drivers.h"

#line 1 "..\\Source\\drivers\\./stm32lib/stm32f10x_bkp.h"




















 

 







 
#line 33 "..\\Source\\drivers\\./stm32lib/stm32f10x_bkp.h"



 



 



 



 



 



 







 



 

#line 78 "..\\Source\\drivers\\./stm32lib/stm32f10x_bkp.h"


 



 

#line 128 "..\\Source\\drivers\\./stm32lib/stm32f10x_bkp.h"

#line 143 "..\\Source\\drivers\\./stm32lib/stm32f10x_bkp.h"




 



 



 



 



 

void BKP_DeInit(void);
void BKP_TamperPinLevelConfig(uint16_t BKP_TamperPinLevel);
void BKP_TamperPinCmd(FunctionalState NewState);
void BKP_ITConfig(FunctionalState NewState);
void BKP_RTCOutputConfig(uint16_t BKP_RTCOutputSource);
void BKP_SetRTCCalibrationValue(uint8_t CalibrationValue);
void BKP_WriteBackupRegister(uint16_t BKP_DR, uint16_t Data);
uint16_t BKP_ReadBackupRegister(uint16_t BKP_DR);
FlagStatus BKP_GetFlagStatus(void);
void BKP_ClearFlag(void);
ITStatus BKP_GetITStatus(void);
void BKP_ClearITPendingBit(void);








 



 



 

 
#line 44 "..\\Source\\drivers\\drivers.h"

#line 1 "..\\Source\\drivers\\./stm32lib/stm32f10x_dma.h"




















 

 







 
#line 33 "..\\Source\\drivers\\./stm32lib/stm32f10x_dma.h"



 



 



 



 

typedef struct
{
  uint32_t DMA_PeripheralBaseAddr;  

  uint32_t DMA_MemoryBaseAddr;      

  uint32_t DMA_DIR;                
 

  uint32_t DMA_BufferSize;         

 

  uint32_t DMA_PeripheralInc;      
 

  uint32_t DMA_MemoryInc;          
 

  uint32_t DMA_PeripheralDataSize; 
 

  uint32_t DMA_MemoryDataSize;     
 

  uint32_t DMA_Mode;               


 

  uint32_t DMA_Priority;           
 

  uint32_t DMA_M2M;                
 
}DMA_InitTypeDef;



 



 

#line 107 "..\\Source\\drivers\\./stm32lib/stm32f10x_dma.h"



 







 



 







 



 







 



 

#line 154 "..\\Source\\drivers\\./stm32lib/stm32f10x_dma.h"


 



 

#line 168 "..\\Source\\drivers\\./stm32lib/stm32f10x_dma.h"


 



 






 



 

#line 195 "..\\Source\\drivers\\./stm32lib/stm32f10x_dma.h"


 



 







 



 






#line 248 "..\\Source\\drivers\\./stm32lib/stm32f10x_dma.h"

#line 269 "..\\Source\\drivers\\./stm32lib/stm32f10x_dma.h"



#line 296 "..\\Source\\drivers\\./stm32lib/stm32f10x_dma.h"



 



 
#line 332 "..\\Source\\drivers\\./stm32lib/stm32f10x_dma.h"

#line 353 "..\\Source\\drivers\\./stm32lib/stm32f10x_dma.h"



#line 380 "..\\Source\\drivers\\./stm32lib/stm32f10x_dma.h"


 



 





 



 



 



 



 

void DMA_DeInit(DMA_Channel_TypeDef* DMAy_Channelx);
void DMA_Init(DMA_Channel_TypeDef* DMAy_Channelx, DMA_InitTypeDef* DMA_InitStruct);
void DMA_StructInit(DMA_InitTypeDef* DMA_InitStruct);
void DMA_Cmd(DMA_Channel_TypeDef* DMAy_Channelx, FunctionalState NewState);
void DMA_ITConfig(DMA_Channel_TypeDef* DMAy_Channelx, uint32_t DMA_IT, FunctionalState NewState);
void DMA_SetCurrDataCounter(DMA_Channel_TypeDef* DMAy_Channelx, uint16_t DataNumber); 
uint16_t DMA_GetCurrDataCounter(DMA_Channel_TypeDef* DMAy_Channelx);
FlagStatus DMA_GetFlagStatus(uint32_t DMAy_FLAG);
void DMA_ClearFlag(uint32_t DMAy_FLAG);
ITStatus DMA_GetITStatus(uint32_t DMAy_IT);
void DMA_ClearITPendingBit(uint32_t DMAy_IT);








 



 



 

 
#line 46 "..\\Source\\drivers\\drivers.h"

#line 1 "..\\Source\\drivers\\./stm32lib/stm32f10x_sdio.h"




















 

 







 
#line 33 "..\\Source\\drivers\\./stm32lib/stm32f10x_sdio.h"



 



 



 

typedef struct
{
  uint32_t SDIO_ClockEdge;            
 

  uint32_t SDIO_ClockBypass;          

 

  uint32_t SDIO_ClockPowerSave;       

 

  uint32_t SDIO_BusWide;              
 

  uint32_t SDIO_HardwareFlowControl;  
 

  uint8_t SDIO_ClockDiv;              
 
                                           
} SDIO_InitTypeDef;

typedef struct
{
  uint32_t SDIO_Argument;  


 

  uint32_t SDIO_CmdIndex;   

  uint32_t SDIO_Response;  
 

  uint32_t SDIO_Wait;      
 

  uint32_t SDIO_CPSM;      

 
} SDIO_CmdInitTypeDef;

typedef struct
{
  uint32_t SDIO_DataTimeOut;     

  uint32_t SDIO_DataLength;      
 
  uint32_t SDIO_DataBlockSize;  
 
 
  uint32_t SDIO_TransferDir;    

 
 
  uint32_t SDIO_TransferMode;   
 
 
  uint32_t SDIO_DPSM;           

 
} SDIO_DataInitTypeDef;



  



 



 







 



 







  



 







 



 









 



 







 



 






  




 

#line 222 "..\\Source\\drivers\\./stm32lib/stm32f10x_sdio.h"


  



 




 



 

#line 245 "..\\Source\\drivers\\./stm32lib/stm32f10x_sdio.h"


 



 








 



 






  



 

#line 283 "..\\Source\\drivers\\./stm32lib/stm32f10x_sdio.h"


 



 




 



 

#line 330 "..\\Source\\drivers\\./stm32lib/stm32f10x_sdio.h"


 



 







 



 







 



 






 



 

#line 421 "..\\Source\\drivers\\./stm32lib/stm32f10x_sdio.h"



#line 448 "..\\Source\\drivers\\./stm32lib/stm32f10x_sdio.h"





 



 







 



 



 



 



 

void SDIO_DeInit(void);
void SDIO_Init(SDIO_InitTypeDef* SDIO_InitStruct);
void SDIO_StructInit(SDIO_InitTypeDef* SDIO_InitStruct);
void SDIO_ClockCmd(FunctionalState NewState);
void SDIO_SetPowerState(uint32_t SDIO_PowerState);
uint32_t SDIO_GetPowerState(void);
void SDIO_ITConfig(uint32_t SDIO_IT, FunctionalState NewState);
void SDIO_DMACmd(FunctionalState NewState);
void SDIO_SendCommand(SDIO_CmdInitTypeDef *SDIO_CmdInitStruct);
void SDIO_CmdStructInit(SDIO_CmdInitTypeDef* SDIO_CmdInitStruct);
uint8_t SDIO_GetCommandResponse(void);
uint32_t SDIO_GetResponse(uint32_t SDIO_RESP);
void SDIO_DataConfig(SDIO_DataInitTypeDef* SDIO_DataInitStruct);
void SDIO_DataStructInit(SDIO_DataInitTypeDef* SDIO_DataInitStruct);
uint32_t SDIO_GetDataCounter(void);
uint32_t SDIO_ReadData(void);
void SDIO_WriteData(uint32_t Data);
uint32_t SDIO_GetFIFOCount(void);
void SDIO_StartSDIOReadWait(FunctionalState NewState);
void SDIO_StopSDIOReadWait(FunctionalState NewState);
void SDIO_SetSDIOReadWaitMode(uint32_t SDIO_ReadWaitMode);
void SDIO_SetSDIOOperation(FunctionalState NewState);
void SDIO_SendSDIOSuspendCmd(FunctionalState NewState);
void SDIO_CommandCompletionCmd(FunctionalState NewState);
void SDIO_CEATAITCmd(FunctionalState NewState);
void SDIO_SendCEATACmd(FunctionalState NewState);
FlagStatus SDIO_GetFlagStatus(uint32_t SDIO_FLAG);
void SDIO_ClearFlag(uint32_t SDIO_FLAG);
ITStatus SDIO_GetITStatus(uint32_t SDIO_IT);
void SDIO_ClearITPendingBit(uint32_t SDIO_IT);








 



 



 

 
#line 48 "..\\Source\\drivers\\drivers.h"

#line 1 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.h"




















 

 







 
#line 33 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.h"



 



  



  




 

typedef struct
{
  uint16_t TIM_Prescaler;         
 

  uint16_t TIM_CounterMode;       
 

  uint16_t TIM_Period;            

  

  uint16_t TIM_ClockDivision;     
 

  uint8_t TIM_RepetitionCounter;  






 
} TIM_TimeBaseInitTypeDef;       



 

typedef struct
{
  uint16_t TIM_OCMode;        
 

  uint16_t TIM_OutputState;   
 

  uint16_t TIM_OutputNState;  

 

  uint16_t TIM_Pulse;         
 

  uint16_t TIM_OCPolarity;    
 

  uint16_t TIM_OCNPolarity;   

 

  uint16_t TIM_OCIdleState;   

 

  uint16_t TIM_OCNIdleState;  

 
} TIM_OCInitTypeDef;



 

typedef struct
{

  uint16_t TIM_Channel;      
 

  uint16_t TIM_ICPolarity;   
 

  uint16_t TIM_ICSelection;  
 

  uint16_t TIM_ICPrescaler;  
 

  uint16_t TIM_ICFilter;     
 
} TIM_ICInitTypeDef;




 

typedef struct
{

  uint16_t TIM_OSSRState;        
 

  uint16_t TIM_OSSIState;        
 

  uint16_t TIM_LOCKLevel;        
  

  uint16_t TIM_DeadTime;         

 

  uint16_t TIM_Break;            
 

  uint16_t TIM_BreakPolarity;    
 

  uint16_t TIM_AutomaticOutput;  
 
} TIM_BDTRInitTypeDef;



 

#line 186 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.h"

 



 






 
#line 205 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.h"
									                                 
 
#line 216 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.h"

                                             
#line 225 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.h"

 
#line 236 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.h"

 
#line 249 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.h"

                                         
#line 266 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.h"

 
#line 279 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.h"
                                                                                                                                                                                                                          


  



 

#line 308 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.h"


 



 







  



 

#line 341 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.h"


  



 

#line 355 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.h"


 



 

#line 373 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.h"


  



 







 



 
  






 



 







  



 







  



 







  



 







  



 







  



 







  



 







  



 

#line 497 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.h"


  



 







 



 







  



 







  



 







  



 

#line 561 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.h"


  



 

#line 577 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.h"


  



 

#line 593 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.h"


  



 

#line 610 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.h"

#line 619 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.h"


  



 

#line 665 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.h"


  



 

#line 709 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.h"


  



 

#line 725 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.h"



  



 

#line 742 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.h"


  



 

#line 770 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.h"


  



 

#line 784 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.h"


  



  






 



 







  



 







  



 

#line 833 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.h"


  




 

#line 851 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.h"



  



 

#line 866 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.h"


  



 







  



 





                                     


  



 







  



 

#line 927 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.h"


  



 

#line 943 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.h"


  



 







  



 

#line 987 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.h"
                               
                               



  



 




  



 




  



 

#line 1034 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.h"


 



 



 



  



 

void TIM_DeInit(TIM_TypeDef* TIMx);
void TIM_TimeBaseInit(TIM_TypeDef* TIMx, TIM_TimeBaseInitTypeDef* TIM_TimeBaseInitStruct);
void TIM_OC1Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OC2Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OC3Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OC4Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_ICInit(TIM_TypeDef* TIMx, TIM_ICInitTypeDef* TIM_ICInitStruct);
void TIM_PWMIConfig(TIM_TypeDef* TIMx, TIM_ICInitTypeDef* TIM_ICInitStruct);
void TIM_BDTRConfig(TIM_TypeDef* TIMx, TIM_BDTRInitTypeDef *TIM_BDTRInitStruct);
void TIM_TimeBaseStructInit(TIM_TimeBaseInitTypeDef* TIM_TimeBaseInitStruct);
void TIM_OCStructInit(TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_ICStructInit(TIM_ICInitTypeDef* TIM_ICInitStruct);
void TIM_BDTRStructInit(TIM_BDTRInitTypeDef* TIM_BDTRInitStruct);
void TIM_Cmd(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_CtrlPWMOutputs(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_ITConfig(TIM_TypeDef* TIMx, uint16_t TIM_IT, FunctionalState NewState);
void TIM_GenerateEvent(TIM_TypeDef* TIMx, uint16_t TIM_EventSource);
void TIM_DMAConfig(TIM_TypeDef* TIMx, uint16_t TIM_DMABase, uint16_t TIM_DMABurstLength);
void TIM_DMACmd(TIM_TypeDef* TIMx, uint16_t TIM_DMASource, FunctionalState NewState);
void TIM_InternalClockConfig(TIM_TypeDef* TIMx);
void TIM_ITRxExternalClockConfig(TIM_TypeDef* TIMx, uint16_t TIM_InputTriggerSource);
void TIM_TIxExternalClockConfig(TIM_TypeDef* TIMx, uint16_t TIM_TIxExternalCLKSource,
                                uint16_t TIM_ICPolarity, uint16_t ICFilter);
void TIM_ETRClockMode1Config(TIM_TypeDef* TIMx, uint16_t TIM_ExtTRGPrescaler, uint16_t TIM_ExtTRGPolarity,
                             uint16_t ExtTRGFilter);
void TIM_ETRClockMode2Config(TIM_TypeDef* TIMx, uint16_t TIM_ExtTRGPrescaler, 
                             uint16_t TIM_ExtTRGPolarity, uint16_t ExtTRGFilter);
void TIM_ETRConfig(TIM_TypeDef* TIMx, uint16_t TIM_ExtTRGPrescaler, uint16_t TIM_ExtTRGPolarity,
                   uint16_t ExtTRGFilter);
void TIM_PrescalerConfig(TIM_TypeDef* TIMx, uint16_t Prescaler, uint16_t TIM_PSCReloadMode);
void TIM_CounterModeConfig(TIM_TypeDef* TIMx, uint16_t TIM_CounterMode);
void TIM_SelectInputTrigger(TIM_TypeDef* TIMx, uint16_t TIM_InputTriggerSource);
void TIM_EncoderInterfaceConfig(TIM_TypeDef* TIMx, uint16_t TIM_EncoderMode,
                                uint16_t TIM_IC1Polarity, uint16_t TIM_IC2Polarity);
void TIM_ForcedOC1Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_ForcedOC2Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_ForcedOC3Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_ForcedOC4Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_ARRPreloadConfig(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_SelectCOM(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_SelectCCDMA(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_CCPreloadControl(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_OC1PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC2PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC3PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC4PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC1FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_OC2FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_OC3FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_OC4FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_ClearOC1Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_ClearOC2Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_ClearOC3Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_ClearOC4Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_OC1PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_OC1NPolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCNPolarity);
void TIM_OC2PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_OC2NPolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCNPolarity);
void TIM_OC3PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_OC3NPolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCNPolarity);
void TIM_OC4PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_CCxCmd(TIM_TypeDef* TIMx, uint16_t TIM_Channel, uint16_t TIM_CCx);
void TIM_CCxNCmd(TIM_TypeDef* TIMx, uint16_t TIM_Channel, uint16_t TIM_CCxN);
void TIM_SelectOCxM(TIM_TypeDef* TIMx, uint16_t TIM_Channel, uint16_t TIM_OCMode);
void TIM_UpdateDisableConfig(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_UpdateRequestConfig(TIM_TypeDef* TIMx, uint16_t TIM_UpdateSource);
void TIM_SelectHallSensor(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_SelectOnePulseMode(TIM_TypeDef* TIMx, uint16_t TIM_OPMode);
void TIM_SelectOutputTrigger(TIM_TypeDef* TIMx, uint16_t TIM_TRGOSource);
void TIM_SelectSlaveMode(TIM_TypeDef* TIMx, uint16_t TIM_SlaveMode);
void TIM_SelectMasterSlaveMode(TIM_TypeDef* TIMx, uint16_t TIM_MasterSlaveMode);
void TIM_SetCounter(TIM_TypeDef* TIMx, uint16_t Counter);
void TIM_SetAutoreload(TIM_TypeDef* TIMx, uint16_t Autoreload);
void TIM_SetCompare1(TIM_TypeDef* TIMx, uint16_t Compare1);
void TIM_SetCompare2(TIM_TypeDef* TIMx, uint16_t Compare2);
void TIM_SetCompare3(TIM_TypeDef* TIMx, uint16_t Compare3);
void TIM_SetCompare4(TIM_TypeDef* TIMx, uint16_t Compare4);
void TIM_SetIC1Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);
void TIM_SetIC2Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);
void TIM_SetIC3Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);
void TIM_SetIC4Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);
void TIM_SetClockDivision(TIM_TypeDef* TIMx, uint16_t TIM_CKD);
uint16_t TIM_GetCapture1(TIM_TypeDef* TIMx);
uint16_t TIM_GetCapture2(TIM_TypeDef* TIMx);
uint16_t TIM_GetCapture3(TIM_TypeDef* TIMx);
uint16_t TIM_GetCapture4(TIM_TypeDef* TIMx);
uint16_t TIM_GetCounter(TIM_TypeDef* TIMx);
uint16_t TIM_GetPrescaler(TIM_TypeDef* TIMx);
FlagStatus TIM_GetFlagStatus(TIM_TypeDef* TIMx, uint16_t TIM_FLAG);
void TIM_ClearFlag(TIM_TypeDef* TIMx, uint16_t TIM_FLAG);
ITStatus TIM_GetITStatus(TIM_TypeDef* TIMx, uint16_t TIM_IT);
void TIM_ClearITPendingBit(TIM_TypeDef* TIMx, uint16_t TIM_IT);








  



  



 

 
#line 50 "..\\Source\\drivers\\drivers.h"

#line 1 "..\\Source\\drivers\\cortex_m3.h"







extern void _delay(unsigned int t);

extern void cpu_ts_init(void);
extern unsigned int cpu_clock(void);


extern unsigned int get_sp(void);
extern void set_sp(unsigned int val);


#line 42 "..\\Source\\drivers\\cortex_m3.h"



#line 52 "..\\Source\\drivers\\drivers.h"


#line 1 "..\\Source\\drivers\\./Stm32Flash/Stm32Flash.h"
















extern void Stm32FlashWriteTest(void);

extern void Stm32FlashReadTest(void);

extern void stm32_flash_disp(unsigned long ulStartAddr,unsigned long ulEndAddr);


extern int IAP_ProgramInit(unsigned int StartAddress,unsigned int EndAddress);

extern int IAP_ProgramWrite(void *pdat,unsigned int ulDatLen);


extern int Stm32FlashWritePage(uint32_t StartAddress,void *pdat);


extern void stm32_flash_write(unsigned long addr,void *buf,unsigned int len);
extern void stm32_flash_read(unsigned long addr,unsigned int wantToReadBytes,void *buf,unsigned int bufsize);
extern void stm32_flash_erase_sector(unsigned long sector_id);










#line 55 "..\\Source\\drivers\\drivers.h"


#line 1 "..\\Source\\drivers\\./gpio/gpio.h"







extern void _gpio_init(uint32_t rcc,GPIO_TypeDef* port,uint16_t pin,GPIOMode_TypeDef mode);

extern void pin_low(uint32_t rcc,GPIO_TypeDef* port,uint16_t pin);

extern void pin_high(uint32_t rcc,GPIO_TypeDef* port,uint16_t pin);

extern void pin_toggle(uint32_t rcc,GPIO_TypeDef* port,uint16_t pin);


extern unsigned char pin_read_in(uint32_t rcc,GPIO_TypeDef* port,uint16_t pin);









#line 58 "..\\Source\\drivers\\drivers.h"
#line 1 "..\\Source\\drivers\\./usart/usart.h"


















































#line 59 "..\\Source\\drivers\\./usart/usart.h"



typedef void (*usart_data_arrive_callback)(void *pdat,unsigned int rlen);
typedef void (*_one_dat_arrive_func)(unsigned char ch);


extern void usart_init(unsigned char channel,unsigned long bps,char iParity);
extern unsigned int usart_send_data(unsigned char channel,void *buf,unsigned int len);
extern unsigned int _usart_send_data(unsigned char channel,void *buf,unsigned int len);
extern unsigned int usart_read(unsigned char channel,void *pOut,unsigned int outbuflen,unsigned int timeout);



extern int install_usart_recv_hook(unsigned char usart_channel,void (*pf)(unsigned char ch));
extern usart_data_arrive_callback get_usart_data_arrive_callback(unsigned char channel);
extern void set_usart_data_arrive_callback(unsigned char channel,usart_data_arrive_callback pf);




extern void usart_rx_timing(unsigned char channel);












#line 59 "..\\Source\\drivers\\drivers.h"
#line 1 "..\\Source\\drivers\\./adc/adc.h"








extern void ADC1_Init(uint8_t channel);
extern void ADC2_Init(uint8_t channel);
extern void ADC3_Init(uint8_t channel);


extern uint16_t GetADCValue(ADC_TypeDef* ADCx,uint8_t channel);







#line 60 "..\\Source\\drivers\\drivers.h"
#line 1 "..\\Source\\drivers\\./can/can.h"























typedef void (*CanMsgArriveCallBack)(CanRxMsg *);


extern void CAN1_Init(unsigned int bps);

extern void CAN2_Init(unsigned int bps);

extern int CAN1_SendData(CanTxMsg* CanData);

extern int CAN2_SendData(CanTxMsg* CanData);


extern int ReadCan1Msg(CanRxMsg *pMsg);

extern int ReadCan2Msg(CanRxMsg *pMsg);


extern char IsHaveCan1Data(void);

extern char IsHaveCan2Data(void);


extern int install_can1_msg_arrive_hook(void (*pf)(CanRxMsg *));
extern int install_can2_msg_arrive_hook(void (*pf)(CanRxMsg *));
extern int install_can3_msg_arrive_hook(void (*pf)(CanRxMsg *));

extern int drv_install_can1_msg_arrive_hook(void (*pf)(CanRxMsg *));
extern int drv_install_can2_msg_arrive_hook(void (*pf)(CanRxMsg *));
extern int drv_install_can3_msg_arrive_hook(void (*pf)(CanRxMsg *));



extern unsigned long can1_recv_total_msg_cnt(void);
extern unsigned long can2_recv_total_msg_cnt(void);
extern unsigned long can3_recv_total_msg_cnt(void);


extern void can_init(unsigned char channel,unsigned int bps);
extern int can_send_data(unsigned char channel,CanTxMsg* CanData);
extern int install_can_msg_arrive_hook(unsigned char channel,void (*pf)(CanRxMsg *));
extern unsigned long can_recv_total_msg_cnt(unsigned char channel);







#line 61 "..\\Source\\drivers\\drivers.h"
#line 1 "..\\Source\\drivers\\./exti/exti.h"












extern void exit_init(uint32_t rcc,GPIO_TypeDef* port,
					uint16_t pin,GPIOMode_TypeDef mode,
					void (*handler)(void)
					);

extern void enable_pvd_monitor(void (*pvd_handler)(void));









#line 62 "..\\Source\\drivers\\drivers.h"

#line 1 "..\\Source\\drivers\\./SPI/SPI.h"






extern void SPI1_Init(void);
extern void SPI2_Init(void);







extern void SPI1_SetSpeed(u8 SPI_BaudRatePrescaler);







extern void SPI2_SetSpeed(u8 SPI_BaudRatePrescaler);




extern int SPI1_ReadWriteByte(u8 TxData);




extern int SPI2_ReadWriteByte(u8 TxData);


extern unsigned int spi_readbyte(char channel);

extern void spi_writebyte(char channel,unsigned char dat);

extern void SPI3_Init(void);

extern int SPI3_ReadWriteByte(u8 TxData);









#line 64 "..\\Source\\drivers\\drivers.h"

#line 1 "..\\Source\\drivers\\./IIC/IIC.h"







typedef void (*DelayFunc)(unsigned int);
typedef void (*SetSDAFunc)(unsigned int);
typedef void (*SetSCLFunc)(unsigned int);
typedef unsigned char (*ReadSDAFunc)(void);
typedef void (*SetSDAOutputFunc)(void);
typedef void (*SetSDAInputFunc)(void);
typedef void (*SetSCLOutputFunc)(void);


extern void IIC_Init(int num,
					DelayFunc pDelayFunc,
					SetSDAFunc pSetSDAFunc,
					SetSCLFunc pSetSCLFunc,
					ReadSDAFunc pReadSDAFunc,
					SetSDAOutputFunc pSetSDAOutputFunc,
					SetSDAInputFunc pSetSDAInputFunc,
					SetSCLOutputFunc pSetSCLOutputFunc
				);





extern void IIC_Send_Byte(int num,unsigned char txd);


extern unsigned char IIC_Read_Byte(int num,unsigned char ack);



extern void IIC_Start(int num);


extern void IIC_Stop(int num);



extern unsigned char IIC_Wait_Ack(int num);



extern unsigned int IIC_Read(int num,INT8U dev_write_addr,unsigned int intel_addr,unsigned int readlen,void *buf,unsigned int buflen);
extern unsigned char IIC_Write(int num,INT8U dev_write_addr,unsigned int addr,void *pdat,unsigned int len);








#line 66 "..\\Source\\drivers\\drivers.h"
#line 1 "..\\Source\\drivers\\./moni_spi/moni_spi.h"







typedef void (*SETFUNC)(void);
typedef unsigned char (*READFUNC)(void);
typedef void (*SETVALUEFUNC)(unsigned char);




extern int moni_spi_init(int num,
	SETFUNC pSetCLKOutputMode,
	SETFUNC pSetMOSIOutputMode,
	SETFUNC pSetMISOIutputMode,

	SETVALUEFUNC pSetCLK,
	SETVALUEFUNC pSetMOSI,

	READFUNC pReadMISO,
	char CPOL,
	char CPHA,
	char IsMSBFirst
	);


extern void moni_spi_write_byte(int num,unsigned char dat);

extern unsigned char moni_spi_read_byte(int num);








#line 67 "..\\Source\\drivers\\drivers.h"

#line 1 "..\\Source\\drivers\\./lsm6d/lsm6d.h"









#line 16 "..\\Source\\drivers\\./lsm6d/lsm6d.h"

#line 23 "..\\Source\\drivers\\./lsm6d/lsm6d.h"



extern int lsm6d_init(void);

extern int lsm6d_set_low_power_mode(void);

extern void lsm6d_read_xyz(unsigned int *p_acce_x,unsigned int *p_acce_y,unsigned int *p_acce_z,
				unsigned int *p_gyr_x,unsigned int *p_gyr_y,unsigned int *p_gyr_z);












#line 69 "..\\Source\\drivers\\drivers.h"

#line 1 "..\\Source\\drivers\\./stm32_rtc/stm32_rtc.h"









extern void stm32_rtc_set_alarm_wakeup(unsigned int wakeup_time);











#line 71 "..\\Source\\drivers\\drivers.h"

#line 1 "..\\Source\\drivers\\./hardwarecfg/hardwarecfg.h"




















































































































































































































































































































extern void gpio_init(void);

extern char read_acc_status(void);



extern unsigned int read_main_power_vol(void);
extern unsigned int read_bat_vol(void);
extern unsigned int read_bat_temperature_vol(void);
extern unsigned int read_gps_ant_vol(void);




extern void set_gps_led(char is_on);
extern void set_sys_led(char is_on);
extern void set_can_led(char is_on);
extern void set_net_led(char is_on);

extern void set_out1_led(char is_on);
extern void set_out2_led(char is_on);



extern void set_sda(unsigned int val);
extern void set_scl(unsigned int val);
extern unsigned char read_sda(void);
extern void set_sda_output(void);
extern void set_sda_input(void);
extern void set_scl_output(void);
extern void delayus(unsigned int t);



extern void update_clock_to_72mhz(void);


extern uint16_t GetCpuID(void *pOutBuf,uint16_t buflen);
extern unsigned int GetCpuFlashSize(void);









#line 73 "..\\Source\\drivers\\drivers.h"







#line 2 "..\\Source\\drivers\\drivers.c"

#line 1 "..\\Source\\drivers\\./RTT/SEGGER_RTT.c"



















































































 

#line 87 "..\\Source\\drivers\\./RTT/SEGGER_RTT.c"

#line 89 "..\\Source\\drivers\\./RTT/SEGGER_RTT.c"






 



















































#line 154 "..\\Source\\drivers\\./RTT/SEGGER_RTT.c"




















 




#line 194 "..\\Source\\drivers\\./RTT/SEGGER_RTT.c"

#line 209 "..\\Source\\drivers\\./RTT/SEGGER_RTT.c"
































 

static unsigned char _aTerminalId[16] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F' };






 



SEGGER_RTT_CB _SEGGER_RTT;

static char _acUpBuffer [(1024)];
static char _acDownBuffer[(256)];

static char _ActiveTerminal;






 









 



static void _DoInit(void) {
  SEGGER_RTT_CB* p;
  
  
  
  p = &_SEGGER_RTT;
  p->MaxNumUpBuffers    = (3);
  p->MaxNumDownBuffers  = (3);
  
  
  
  p->aUp[0].sName         = "Terminal";
  p->aUp[0].pBuffer       = _acUpBuffer;
  p->aUp[0].SizeOfBuffer  = sizeof(_acUpBuffer);
  p->aUp[0].RdOff         = 0u;
  p->aUp[0].WrOff         = 0u;
  p->aUp[0].Flags         = (0U);
  
  
  
  p->aDown[0].sName         = "Terminal";
  p->aDown[0].pBuffer       = _acDownBuffer;
  p->aDown[0].SizeOfBuffer  = sizeof(_acDownBuffer);
  p->aDown[0].RdOff         = 0u;
  p->aDown[0].WrOff         = 0u;
  p->aDown[0].Flags         = (0U);
  
  
  
  
  
  strcpy(&p->acID[7], "RTT");
  strcpy(&p->acID[0], "SEGGER");
  p->acID[6] = ' ';
}



















 
static unsigned _WriteBlocking(SEGGER_RTT_BUFFER_UP* pRing, const char* pBuffer, unsigned NumBytes) {
  unsigned NumBytesToWrite;
  unsigned NumBytesWritten;
  unsigned RdOff;
  unsigned WrOff;



  
  
  
  NumBytesWritten = 0u;
  WrOff = pRing->WrOff;
  do {
    RdOff = pRing->RdOff;                         
    if (RdOff > WrOff) {
      NumBytesToWrite = RdOff - WrOff - 1u;
    } else {
      NumBytesToWrite = pRing->SizeOfBuffer - (WrOff - RdOff + 1u);
    }
    NumBytesToWrite = (((NumBytesToWrite) < ((pRing->SizeOfBuffer - WrOff))) ? (NumBytesToWrite) : ((pRing->SizeOfBuffer - WrOff)));      
    NumBytesToWrite = (((NumBytesToWrite) < (NumBytes)) ? (NumBytesToWrite) : (NumBytes));
#line 366 "..\\Source\\drivers\\./RTT/SEGGER_RTT.c"
    memcpy((pRing->pBuffer + WrOff), (pBuffer), (NumBytesToWrite));
    NumBytesWritten += NumBytesToWrite;
    pBuffer         += NumBytesToWrite;
    NumBytes        -= NumBytesToWrite;
    WrOff           += NumBytesToWrite;

    if (WrOff == pRing->SizeOfBuffer) {
      WrOff = 0u;
    }
    pRing->WrOff = WrOff;
  } while (NumBytes);
  
  return NumBytesWritten;
}


















 
static void _WriteNoCheck(SEGGER_RTT_BUFFER_UP* pRing, const char* pData, unsigned NumBytes) {
  unsigned NumBytesAtOnce;
  unsigned WrOff;
  unsigned Rem;




  WrOff = pRing->WrOff;
  Rem = pRing->SizeOfBuffer - WrOff;
  if (Rem > NumBytes) {
    
    
    
#line 421 "..\\Source\\drivers\\./RTT/SEGGER_RTT.c"
    memcpy((pRing->pBuffer + WrOff), (pData), (NumBytes));
    pRing->WrOff = WrOff + NumBytes;

  } else {
    
    
    
#line 441 "..\\Source\\drivers\\./RTT/SEGGER_RTT.c"
    NumBytesAtOnce = Rem;
    memcpy((pRing->pBuffer + WrOff), (pData), (NumBytesAtOnce));
    NumBytesAtOnce = NumBytes - Rem;
    memcpy((pRing->pBuffer), (pData + Rem), (NumBytesAtOnce));
    pRing->WrOff = NumBytesAtOnce;

  }
}













 
static void _PostTerminalSwitch(SEGGER_RTT_BUFFER_UP* pRing, unsigned char TerminalId) {
  unsigned char ac[2];

  ac[0] = 0xFFu;
  ac[1] = _aTerminalId[TerminalId];  
  _WriteBlocking(pRing, (const char*)ac, 2u);
}














 
static unsigned _GetAvailWriteSpace(SEGGER_RTT_BUFFER_UP* pRing) {
  unsigned RdOff;
  unsigned WrOff;
  unsigned r;
  
  
  
  
  RdOff = pRing->RdOff;
  WrOff = pRing->WrOff;
  if (RdOff <= WrOff) {
    r = pRing->SizeOfBuffer - 1u - WrOff + RdOff;
  } else {
    r = RdOff - WrOff - 1u;
  }
  return r;
}






 
















 
unsigned SEGGER_RTT_ReadNoLock(unsigned BufferIndex, void* pData, unsigned BufferSize) {
  unsigned                NumBytesRem;
  unsigned                NumBytesRead;
  unsigned                RdOff;
  unsigned                WrOff;
  unsigned char*          pBuffer;
  SEGGER_RTT_BUFFER_DOWN* pRing;



  
  do { if (_SEGGER_RTT . acID[0] == '\0') { _DoInit(); } } while (0);
  pRing = &_SEGGER_RTT.aDown[BufferIndex];
  pBuffer = (unsigned char*)pData;
  RdOff = pRing->RdOff;
  WrOff = pRing->WrOff;
  NumBytesRead = 0u;
  
  
  
  if (RdOff > WrOff) {
    NumBytesRem = pRing->SizeOfBuffer - RdOff;
    NumBytesRem = (((NumBytesRem) < (BufferSize)) ? (NumBytesRem) : (BufferSize));
#line 558 "..\\Source\\drivers\\./RTT/SEGGER_RTT.c"
    memcpy((pBuffer), (pRing->pBuffer + RdOff), (NumBytesRem));
    NumBytesRead += NumBytesRem;
    pBuffer      += NumBytesRem;
    BufferSize   -= NumBytesRem;
    RdOff        += NumBytesRem;

    
    
    
    if (RdOff == pRing->SizeOfBuffer) {
      RdOff = 0u;
    }
  }
  
  
  
  NumBytesRem = WrOff - RdOff;
  NumBytesRem = (((NumBytesRem) < (BufferSize)) ? (NumBytesRem) : (BufferSize));
  if (NumBytesRem > 0u) {
#line 586 "..\\Source\\drivers\\./RTT/SEGGER_RTT.c"
    memcpy((pBuffer), (pRing->pBuffer + RdOff), (NumBytesRem));
    NumBytesRead += NumBytesRem;
    pBuffer      += NumBytesRem;
    BufferSize   -= NumBytesRem;
    RdOff        += NumBytesRem;

  }
  if (NumBytesRead) {
    pRing->RdOff = RdOff;
  }
  
  return NumBytesRead;
}
















 
unsigned SEGGER_RTT_Read(unsigned BufferIndex, void* pBuffer, unsigned BufferSize) {
  unsigned NumBytesRead;
  
  { unsigned int LockState; register unsigned char BASEPRI __asm( "basepri"); LockState = BASEPRI; BASEPRI = (0x20); __schedule_barrier();;
  
  
  
  NumBytesRead = SEGGER_RTT_ReadNoLock(BufferIndex, pBuffer, BufferSize);
  
  
  
  BASEPRI = LockState; __schedule_barrier(); };
  
  return NumBytesRead;
}























 
void SEGGER_RTT_WriteWithOverwriteNoLock(unsigned BufferIndex, const void* pBuffer, unsigned NumBytes) {
  const char*           pData;
  SEGGER_RTT_BUFFER_UP* pRing;
  unsigned              Avail;




  pData = (const char *)pBuffer;
  
  
  
  pRing = &_SEGGER_RTT.aUp[BufferIndex];
  
  
  
  if (pRing->WrOff == pRing->RdOff) {
    Avail = pRing->SizeOfBuffer - 1u;
  } else if ( pRing->WrOff < pRing->RdOff) {
    Avail = pRing->RdOff - pRing->WrOff - 1u;
  } else {
    Avail = pRing->RdOff - pRing->WrOff - 1u + pRing->SizeOfBuffer;
  }
  if (NumBytes > Avail) {
    pRing->RdOff += (NumBytes - Avail);
    while (pRing->RdOff >= pRing->SizeOfBuffer) {
      pRing->RdOff -= pRing->SizeOfBuffer;
    }
  }
  
  
  
  Avail = pRing->SizeOfBuffer - pRing->WrOff;
  do {
    if (Avail > NumBytes) {
      
      
      
#line 701 "..\\Source\\drivers\\./RTT/SEGGER_RTT.c"
      memcpy((pRing->pBuffer + pRing->WrOff), (pData), (NumBytes));
      pRing->WrOff += NumBytes;

      break;
    } else {
      
      
      
#line 717 "..\\Source\\drivers\\./RTT/SEGGER_RTT.c"
      memcpy((pRing->pBuffer + pRing->WrOff), (pData), (Avail));
      pData += Avail;
      pRing->WrOff = 0;
      NumBytes -= Avail;

      Avail = (pRing->SizeOfBuffer - 1);
    }
  } while (NumBytes);
}
























 
unsigned SEGGER_RTT_WriteSkipNoLock(unsigned BufferIndex, const void* pBuffer, unsigned NumBytes) {
  const char*           pData;
  SEGGER_RTT_BUFFER_UP* pRing;
  unsigned              Avail;
  unsigned              RdOff;
  unsigned              WrOff;
  unsigned              Rem;




  pData = (const char *)pBuffer;
  
  
  
  pRing = &_SEGGER_RTT.aUp[BufferIndex];
  RdOff = pRing->RdOff;
  WrOff = pRing->WrOff;
  
  
  
  
  
  
  
  
  
  
  
  
  
  if (RdOff <= WrOff) {
    
    
    
    Avail = pRing->SizeOfBuffer - 1u - WrOff ;
    if (Avail >= NumBytes) {
#line 796 "..\\Source\\drivers\\./RTT/SEGGER_RTT.c"
      memcpy((pRing->pBuffer + WrOff), (pData), (NumBytes));
      pRing->WrOff = WrOff + NumBytes;

      return 1;
    }
    
    
    
    Avail += RdOff;
    
    
    
    if (Avail >= NumBytes) {
      
      
      
      Rem = pRing->SizeOfBuffer - WrOff;      
      if (Rem > NumBytes) {
#line 822 "..\\Source\\drivers\\./RTT/SEGGER_RTT.c"
        memcpy((pRing->pBuffer + WrOff), (pData), (NumBytes));
        pRing->WrOff = WrOff + NumBytes;

      } else {
        
        
        
#line 842 "..\\Source\\drivers\\./RTT/SEGGER_RTT.c"
        memcpy((pRing->pBuffer + WrOff), (pData), (Rem));
        memcpy((pRing->pBuffer), (pData + Rem), (NumBytes - Rem));
        pRing->WrOff = NumBytes - Rem;

      }
      return 1;
    }
  } else {
    Avail = RdOff - WrOff - 1u;
    if (Avail >= NumBytes) {
#line 860 "..\\Source\\drivers\\./RTT/SEGGER_RTT.c"
      memcpy((pRing->pBuffer + WrOff), (pData), (NumBytes));
      pRing->WrOff = WrOff + NumBytes;

      return 1;
    }
  }
  
  
  
  return 0;
}























 
unsigned SEGGER_RTT_WriteNoLock(unsigned BufferIndex, const void* pBuffer, unsigned NumBytes) {
  unsigned              Status;
  unsigned              Avail;
  const char*           pData;
  SEGGER_RTT_BUFFER_UP* pRing;

  pData = (const char *)pBuffer;
  
  
  
  pRing = &_SEGGER_RTT.aUp[BufferIndex];
  
  
  
  switch (pRing->Flags) {
  case (0U):
    
    
    
    
    Avail = _GetAvailWriteSpace(pRing);
    if (Avail < NumBytes) {
      Status = 0u;
    } else {
      Status = NumBytes;
      _WriteNoCheck(pRing, pData, NumBytes);
    }
    break;
  case (1U):
    
    
    
    Avail = _GetAvailWriteSpace(pRing);
    Status = Avail < NumBytes ? Avail : NumBytes;
    _WriteNoCheck(pRing, pData, Status);
    break;
  case (2U):
    
    
    
    Status = _WriteBlocking(pRing, pData, NumBytes);
    break;
  default:
    Status = 0u;
    break;
  }
  
  
  
  return Status;
}



















 
unsigned SEGGER_RTT_Write(unsigned BufferIndex, const void* pBuffer, unsigned NumBytes) {
  unsigned Status;
  
  do { if (_SEGGER_RTT . acID[0] == '\0') { _DoInit(); } } while (0);
  { unsigned int LockState; register unsigned char BASEPRI __asm( "basepri"); LockState = BASEPRI; BASEPRI = (0x20); __schedule_barrier();;
  
  
  
  Status = SEGGER_RTT_WriteNoLock(BufferIndex, pBuffer, NumBytes);
  
  
  
  BASEPRI = LockState; __schedule_barrier(); };
  
  return Status;
}




















 
unsigned SEGGER_RTT_WriteString(unsigned BufferIndex, const char* s) {
  unsigned Len;

  Len = strlen((s));
  return SEGGER_RTT_Write(BufferIndex, s, Len);
}






















 

unsigned SEGGER_RTT_PutCharSkipNoLock(unsigned BufferIndex, char c) {
  SEGGER_RTT_BUFFER_UP* pRing;
  unsigned              WrOff;
  unsigned              Status;
  
  
  
  pRing = &_SEGGER_RTT.aUp[BufferIndex];
  
  
  
  WrOff = pRing->WrOff + 1;
  if (WrOff == pRing->SizeOfBuffer) {
    WrOff = 0;
  }
  
  
  
  if (WrOff != pRing->RdOff) {
    pRing->pBuffer[pRing->WrOff] = c;
    pRing->WrOff = WrOff;
    Status = 1;
  } else {
    Status = 0;
  }
  
  return Status;
}

















 

unsigned SEGGER_RTT_PutCharSkip(unsigned BufferIndex, char c) {
  SEGGER_RTT_BUFFER_UP* pRing;
  unsigned              WrOff;
  unsigned              Status;
  
  
  
  do { if (_SEGGER_RTT . acID[0] == '\0') { _DoInit(); } } while (0);
  { unsigned int LockState; register unsigned char BASEPRI __asm( "basepri"); LockState = BASEPRI; BASEPRI = (0x20); __schedule_barrier();;
  
  
  
  pRing = &_SEGGER_RTT.aUp[BufferIndex];
  
  
  
  WrOff = pRing->WrOff + 1;
  if (WrOff == pRing->SizeOfBuffer) {
    WrOff = 0;
  }
  
  
  
  if (WrOff != pRing->RdOff) {
    pRing->pBuffer[pRing->WrOff] = c;
    pRing->WrOff = WrOff;
    Status = 1;
  } else {
    Status = 0;
  }
  
  
  
  BASEPRI = LockState; __schedule_barrier(); };
  
  return Status;
}

 















 

unsigned SEGGER_RTT_PutChar(unsigned BufferIndex, char c) {
  SEGGER_RTT_BUFFER_UP* pRing;
  unsigned              WrOff;
  unsigned              Status;
  
  
  
  do { if (_SEGGER_RTT . acID[0] == '\0') { _DoInit(); } } while (0);
  { unsigned int LockState; register unsigned char BASEPRI __asm( "basepri"); LockState = BASEPRI; BASEPRI = (0x20); __schedule_barrier();;
  
  
  
  pRing = &_SEGGER_RTT.aUp[BufferIndex];
  
  
  
  WrOff = pRing->WrOff + 1;
  if (WrOff == pRing->SizeOfBuffer) {
    WrOff = 0;
  }
  
  
  
  if (pRing->Flags == (2U)) {
    while (WrOff == pRing->RdOff) {
      ;
    }
  }
  
  
  
  if (WrOff != pRing->RdOff) {
    pRing->pBuffer[pRing->WrOff] = c;
    pRing->WrOff = WrOff;
    Status = 1;
  } else {
    Status = 0;
  }
  
  
  
  BASEPRI = LockState; __schedule_barrier(); };
  
  return Status;
}















 
int SEGGER_RTT_GetKey(void) {
  char c;
  int r;

  r = (int)SEGGER_RTT_Read(0u, &c, 1u);
  if (r == 1) {
    r = (int)(unsigned char)c;
  } else {
    r = -1;
  }
  return r;
}















 
int SEGGER_RTT_WaitKey(void) {
  int r;

  do {
    r = SEGGER_RTT_GetKey();
  } while (r < 0);
  return r;
}














 
int SEGGER_RTT_HasKey(void) {
  unsigned RdOff;
  int r;

  do { if (_SEGGER_RTT . acID[0] == '\0') { _DoInit(); } } while (0);
  RdOff = _SEGGER_RTT.aDown[0].RdOff;
  if (RdOff != _SEGGER_RTT.aDown[0].WrOff) {
    r = 1;
  } else {
    r = 0;
  }
  return r;
}












 
unsigned SEGGER_RTT_HasData(unsigned BufferIndex) {
  SEGGER_RTT_BUFFER_DOWN* pRing;
  unsigned                v;

  pRing = &_SEGGER_RTT.aDown[BufferIndex];
  v = pRing->WrOff;
  return v - pRing->RdOff;
}



















 
int SEGGER_RTT_AllocDownBuffer(const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags) {
  int BufferIndex;

  do { if (_SEGGER_RTT . acID[0] == '\0') { _DoInit(); } } while (0);
  { unsigned int LockState; register unsigned char BASEPRI __asm( "basepri"); LockState = BASEPRI; BASEPRI = (0x20); __schedule_barrier();;
  BufferIndex = 0;
  do {
    if (_SEGGER_RTT.aDown[BufferIndex].pBuffer == 0) {
      break;
    }
    BufferIndex++;
  } while (BufferIndex < _SEGGER_RTT.MaxNumDownBuffers);
  if (BufferIndex < _SEGGER_RTT.MaxNumDownBuffers) {
    _SEGGER_RTT.aDown[BufferIndex].sName        = sName;
    _SEGGER_RTT.aDown[BufferIndex].pBuffer      = (char*)pBuffer;
    _SEGGER_RTT.aDown[BufferIndex].SizeOfBuffer = BufferSize;
    _SEGGER_RTT.aDown[BufferIndex].RdOff        = 0u;
    _SEGGER_RTT.aDown[BufferIndex].WrOff        = 0u;
    _SEGGER_RTT.aDown[BufferIndex].Flags        = Flags;
  } else {
    BufferIndex = -1;
  }
  BASEPRI = LockState; __schedule_barrier(); };
  return BufferIndex;
}



















 
int SEGGER_RTT_AllocUpBuffer(const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags) {
  int BufferIndex;

  do { if (_SEGGER_RTT . acID[0] == '\0') { _DoInit(); } } while (0);
  { unsigned int LockState; register unsigned char BASEPRI __asm( "basepri"); LockState = BASEPRI; BASEPRI = (0x20); __schedule_barrier();;
  BufferIndex = 0;
  do {
    if (_SEGGER_RTT.aUp[BufferIndex].pBuffer == 0) {
      break;
    }
    BufferIndex++;
  } while (BufferIndex < _SEGGER_RTT.MaxNumUpBuffers);
  if (BufferIndex < _SEGGER_RTT.MaxNumUpBuffers) {
    _SEGGER_RTT.aUp[BufferIndex].sName        = sName;
    _SEGGER_RTT.aUp[BufferIndex].pBuffer      = (char*)pBuffer;
    _SEGGER_RTT.aUp[BufferIndex].SizeOfBuffer = BufferSize;
    _SEGGER_RTT.aUp[BufferIndex].RdOff        = 0u;
    _SEGGER_RTT.aUp[BufferIndex].WrOff        = 0u;
    _SEGGER_RTT.aUp[BufferIndex].Flags        = Flags;
  } else {
    BufferIndex = -1;
  }
  BASEPRI = LockState; __schedule_barrier(); };
  return BufferIndex;
}

























 
int SEGGER_RTT_ConfigUpBuffer(unsigned BufferIndex, const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags) {
  int r;

  do { if (_SEGGER_RTT . acID[0] == '\0') { _DoInit(); } } while (0);
  if (BufferIndex < (unsigned)_SEGGER_RTT.MaxNumUpBuffers) {
    { unsigned int LockState; register unsigned char BASEPRI __asm( "basepri"); LockState = BASEPRI; BASEPRI = (0x20); __schedule_barrier();;
    if (BufferIndex > 0u) {
      _SEGGER_RTT.aUp[BufferIndex].sName        = sName;
      _SEGGER_RTT.aUp[BufferIndex].pBuffer      = (char*)pBuffer;
      _SEGGER_RTT.aUp[BufferIndex].SizeOfBuffer = BufferSize;
      _SEGGER_RTT.aUp[BufferIndex].RdOff        = 0u;
      _SEGGER_RTT.aUp[BufferIndex].WrOff        = 0u;
    }
    _SEGGER_RTT.aUp[BufferIndex].Flags          = Flags;
    BASEPRI = LockState; __schedule_barrier(); };
    r =  0;
  } else {
    r = -1;
  }
  return r;
}

























 
int SEGGER_RTT_ConfigDownBuffer(unsigned BufferIndex, const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags) {
  int r;

  do { if (_SEGGER_RTT . acID[0] == '\0') { _DoInit(); } } while (0);
  if (BufferIndex < (unsigned)_SEGGER_RTT.MaxNumDownBuffers) {
    { unsigned int LockState; register unsigned char BASEPRI __asm( "basepri"); LockState = BASEPRI; BASEPRI = (0x20); __schedule_barrier();;
    if (BufferIndex > 0u) {
      _SEGGER_RTT.aDown[BufferIndex].sName        = sName;
      _SEGGER_RTT.aDown[BufferIndex].pBuffer      = (char*)pBuffer;
      _SEGGER_RTT.aDown[BufferIndex].SizeOfBuffer = BufferSize;
      _SEGGER_RTT.aDown[BufferIndex].RdOff        = 0u;
      _SEGGER_RTT.aDown[BufferIndex].WrOff        = 0u;
    }
    _SEGGER_RTT.aDown[BufferIndex].Flags          = Flags;
    BASEPRI = LockState; __schedule_barrier(); };
    r =  0;
  } else {
    r = -1;
  }
  return r;
}
















 
int SEGGER_RTT_SetNameUpBuffer(unsigned BufferIndex, const char* sName) {
  int r;

  do { if (_SEGGER_RTT . acID[0] == '\0') { _DoInit(); } } while (0);
  if (BufferIndex < (unsigned)_SEGGER_RTT.MaxNumUpBuffers) {
    { unsigned int LockState; register unsigned char BASEPRI __asm( "basepri"); LockState = BASEPRI; BASEPRI = (0x20); __schedule_barrier();;
    _SEGGER_RTT.aUp[BufferIndex].sName = sName;
    BASEPRI = LockState; __schedule_barrier(); };
    r =  0;
  } else {
    r = -1;
  }
  return r;
}
















 
int SEGGER_RTT_SetNameDownBuffer(unsigned BufferIndex, const char* sName) {
  int r;

  do { if (_SEGGER_RTT . acID[0] == '\0') { _DoInit(); } } while (0);
  if (BufferIndex < (unsigned)_SEGGER_RTT.MaxNumDownBuffers) {
    { unsigned int LockState; register unsigned char BASEPRI __asm( "basepri"); LockState = BASEPRI; BASEPRI = (0x20); __schedule_barrier();;
    _SEGGER_RTT.aDown[BufferIndex].sName = sName;
    BASEPRI = LockState; __schedule_barrier(); };
    r =  0;
  } else {
    r = -1;
  }
  return r;
}
















 
int SEGGER_RTT_SetFlagsUpBuffer(unsigned BufferIndex, unsigned Flags) {
  int r;

  do { if (_SEGGER_RTT . acID[0] == '\0') { _DoInit(); } } while (0);
  if (BufferIndex < (unsigned)_SEGGER_RTT.MaxNumUpBuffers) {
    { unsigned int LockState; register unsigned char BASEPRI __asm( "basepri"); LockState = BASEPRI; BASEPRI = (0x20); __schedule_barrier();;
    _SEGGER_RTT.aUp[BufferIndex].Flags = Flags;
    BASEPRI = LockState; __schedule_barrier(); };
    r =  0;
  } else {
    r = -1;
  }
  return r;
}
















 
int SEGGER_RTT_SetFlagsDownBuffer(unsigned BufferIndex, unsigned Flags) {
  int r;

  do { if (_SEGGER_RTT . acID[0] == '\0') { _DoInit(); } } while (0);
  if (BufferIndex < (unsigned)_SEGGER_RTT.MaxNumDownBuffers) {
    { unsigned int LockState; register unsigned char BASEPRI __asm( "basepri"); LockState = BASEPRI; BASEPRI = (0x20); __schedule_barrier();;
    _SEGGER_RTT.aDown[BufferIndex].Flags = Flags;
    BASEPRI = LockState; __schedule_barrier(); };
    r =  0;
  } else {
    r = -1;
  }
  return r;
}









 
void SEGGER_RTT_Init (void) {
  _DoInit();
}














 
int SEGGER_RTT_SetTerminal (char TerminalId) {
  unsigned char         ac[2];
  SEGGER_RTT_BUFFER_UP* pRing;
  unsigned Avail;
  int r;
  
  do { if (_SEGGER_RTT . acID[0] == '\0') { _DoInit(); } } while (0);
  
  r = 0;
  ac[0] = 0xFFu;
  if ((unsigned char)TerminalId < (unsigned char)sizeof(_aTerminalId)) { 
    ac[1] = _aTerminalId[(unsigned char)TerminalId];
    pRing = &_SEGGER_RTT.aUp[0];    
    { unsigned int LockState; register unsigned char BASEPRI __asm( "basepri"); LockState = BASEPRI; BASEPRI = (0x20); __schedule_barrier();;    
    if ((pRing->Flags & (3U)) == (2U)) {
      _ActiveTerminal = TerminalId;
      _WriteBlocking(pRing, (const char*)ac, 2u);
    } else {                                                                            
      Avail = _GetAvailWriteSpace(pRing);
      if (Avail >= 2) {
        _ActiveTerminal = TerminalId;    
        _WriteNoCheck(pRing, (const char*)ac, 2u);
      } else {
        r = -1;
      }
    }
    BASEPRI = LockState; __schedule_barrier(); };
  } else {
    r = -1;
  }
  return r;
}

















 
int SEGGER_RTT_TerminalOut (char TerminalId, const char* s) {
  int                   Status;
  unsigned              FragLen;
  unsigned              Avail;
  SEGGER_RTT_BUFFER_UP* pRing;
  
  do { if (_SEGGER_RTT . acID[0] == '\0') { _DoInit(); } } while (0);
  
  
  
  if (TerminalId < (char)sizeof(_aTerminalId)) { 
    
    
    
    pRing = &_SEGGER_RTT.aUp[0];
    
    
    
    
    FragLen = strlen((s));
    
    
    
    { unsigned int LockState; register unsigned char BASEPRI __asm( "basepri"); LockState = BASEPRI; BASEPRI = (0x20); __schedule_barrier();;
    Avail = _GetAvailWriteSpace(pRing);
    switch (pRing->Flags & (3U)) {
    case (0U):
      
      
      
      
      if (Avail < (FragLen + 4u)) {
        Status = 0;
      } else {
        _PostTerminalSwitch(pRing, TerminalId);
        Status = (int)_WriteBlocking(pRing, s, FragLen);
        _PostTerminalSwitch(pRing, _ActiveTerminal);
      }
      break;
    case (1U):
      
      
      
      
      
      if (Avail < 4u) {
        Status = -1;
      } else {
        _PostTerminalSwitch(pRing, TerminalId);
        Status = (int)_WriteBlocking(pRing, s, (FragLen < (Avail - 4u)) ? FragLen : (Avail - 4u));
        _PostTerminalSwitch(pRing, _ActiveTerminal);
      }
      break;
    case (2U):
      
      
      
      _PostTerminalSwitch(pRing, TerminalId);
      Status = (int)_WriteBlocking(pRing, s, FragLen);
      _PostTerminalSwitch(pRing, _ActiveTerminal);
      break;
    default:
      Status = -1;
      break;
    }
    
    
    
    BASEPRI = LockState; __schedule_barrier(); };
  } else {
    Status = -1;
  }
  return Status;
}


 
#line 4 "..\\Source\\drivers\\drivers.c"

#line 1 "..\\Source\\drivers\\./DBG/DBG.c"
#line 2 "..\\Source\\drivers\\./DBG/DBG.c"
#line 3 "..\\Source\\drivers\\./DBG/DBG.c"
#line 4 "..\\Source\\drivers\\./DBG/DBG.c"
#line 5 "..\\Source\\drivers\\./DBG/DBG.c"
#line 1 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"
 
 
 





 










#line 27 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"








 

 
 
#line 57 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"
    typedef struct __va_list { void *__ap; } va_list;

   






 


   










 


   















 




   

 


   




 



   





 







#line 138 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"



#line 147 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"

 

#line 6 "..\\Source\\drivers\\./DBG/DBG.c"

static char buf[1024] = {0};
static int s_ulLevel = 0;

typedef struct tagDBGUsart
{
	DBGUsartInit pDBGUsartInitFunc;		
	DBGUsartSend_unlock pDBGUsartSend;	
	DBGUsartRead pDBGUsartRead;

	unsigned long bps;									
	char cParity;
}DBGUsart;

void (*p_dbx_create_sem_func)(void);
void (*p_dbx_wait_sem_func)(void);
void (*p_dbx_post_sem_func)(void);

DBGUsart s_astDBGUsart[4] = {0};
unsigned long s_ulDBGUsartUsedFlag = 0;

static int create_sem(void)
{

	return 0;
}

static void WaitDbgTxSemNew(void)
{
	if (p_dbx_wait_sem_func)
	{
		p_dbx_wait_sem_func();
	}
}

static void PostDbgTxSemNew(void)
{
	if (p_dbx_post_sem_func)
	{
		p_dbx_post_sem_func();
	}
}

int DBG_Init(unsigned char num,
				DBGUsartInit pDBGUsartInitFunc,
				unsigned long bps,char cParity,
				void (*create_sem_func)(void),
				void (*wait_sem_func)(void),
				void (*post_sem_func)(void),
				DBGUsartSend_unlock pDBGUsartSend_unlock,
				DBGUsartRead pDBGUsartRead
				)
{
	if (num >= 4)
	{
		return 1;
	}
	s_astDBGUsart[num].pDBGUsartInitFunc = pDBGUsartInitFunc;
	s_astDBGUsart[num].pDBGUsartSend = pDBGUsartSend_unlock;
	s_astDBGUsart[num].pDBGUsartRead = pDBGUsartRead;
	s_astDBGUsart[num].bps = bps;
	s_astDBGUsart[num].cParity = cParity;
	if (s_astDBGUsart[num].pDBGUsartInitFunc)
	{
		s_astDBGUsart[num].pDBGUsartInitFunc(bps,cParity);
		
	}

	if (num == 0)
	{
		p_dbx_create_sem_func = create_sem_func;
		p_dbx_wait_sem_func = wait_sem_func;
		p_dbx_post_sem_func = post_sem_func;
		
		if (p_dbx_create_sem_func)
		{
			p_dbx_create_sem_func();
		}
	}

	 
	s_ulDBGUsartUsedFlag |= (1 << num);
	return create_sem();
}


static void _DBG_SenDataNew(void *buf,int len)
{
	unsigned char i = 0;

	for (i = 0; i < 4; i++)
	{
		if (s_ulDBGUsartUsedFlag & (1 << i))
		{
			if (s_astDBGUsart[i].pDBGUsartSend)
			{
				s_astDBGUsart[i].pDBGUsartSend(buf,len);
			}
		}
	}
}

unsigned int ReadDBGUsart(unsigned char DBG_PortNum,void *buf,
								unsigned int ulBufSize,unsigned int ulTimeoutMs)
{
	if (s_astDBGUsart[DBG_PortNum].pDBGUsartRead)
	{
		return s_astDBGUsart[DBG_PortNum].pDBGUsartRead(buf,ulBufSize,ulTimeoutMs);
	}
	return 0;
}


int IsLevelCheckOk(int iLevel)
{
	if (iLevel == 0)
	{
		return 1;
	}

	if ((s_ulLevel == (9 + 2)) && (iLevel == (9 + 2)))
	{
		return 1;
	}
	else if ((s_ulLevel == (9 + 1)) && (iLevel == (9 + 1)))
	{
		return 1;
	}
	else if ((s_ulLevel == (9 + 3)) && (iLevel == (9 + 3)))
	{
		return 1;
	}
	else
	{
		if (s_ulLevel > 9)
		{
			return 0;
		}
		if ((iLevel > s_ulLevel))
		{
			return 0;
		}

	}

	return 1;
}


void Set_DBG_Level(int iLevel)
{
	s_ulLevel = iLevel;
}

int Get_DBG_Level(void)
{
	return s_ulLevel;
}

int DBG_Print(int iLevel,void *str,...)
{
	unsigned int len = 0;
	va_list ap;

	if (str == 0) return 0;

	
	if (IsLevelCheckOk(iLevel) == 0)
	{
		return 0;
	}

	WaitDbgTxSemNew();
	__va_start(ap, str);
	len = vsnprintf(buf,sizeof(buf) - 1,(char *)str,ap);
	__va_end(ap);
	_DBG_SenDataNew(buf,len);
	PostDbgTxSemNew();
	return len;
}


void DBG_PrintBuf(int iLevel,void *tip,void *str,unsigned int length)
{
	unsigned int len = 0;
	unsigned int i = 0;
	unsigned char *ptr = (unsigned char *)str;

	

	
	if (IsLevelCheckOk(iLevel) == 0)
	{
		return ;
	}

	WaitDbgTxSemNew();

	
	if (tip && strlen((char *)tip)) _DBG_SenDataNew(tip,strlen((char *)tip));

	if (str && length)
	{
		for (i = 0; i < length; i++)
		{
			if (len >= (sizeof(buf) - 5))
			{
				_DBG_SenDataNew(buf,len);
				len = 0;
			}
		
			if ((i % 16 == 0) && i)
			{
				len += snprintf(buf + len,sizeof(buf) - len,"\r\n");
			}
			len += snprintf(buf + len,sizeof(buf) - len,"%02X ",*(ptr + i));
		}
		if (len) _DBG_SenDataNew(buf,len);
	}

	_DBG_SenDataNew("\r\n",2);
	PostDbgTxSemNew();
}

unsigned char DBG_SendChar(unsigned char ch)
{
	unsigned char temp[2] = {0};

	temp[0] = ch;
	WaitDbgTxSemNew();
	_DBG_SenDataNew(temp,1);
	PostDbgTxSemNew();

	return ch;
}

void DBG_SendData(void *pdat,unsigned int len)
{
	WaitDbgTxSemNew();
	_DBG_SenDataNew(pdat,len);
	PostDbgTxSemNew();
}

void DBG_ChangeParam(unsigned char num,unsigned long bps,char cParity)
{
	char cFlag = 0;

	if (s_astDBGUsart[num].bps != bps)
	{
		s_astDBGUsart[num].bps = bps;
		cFlag = 1;
	}
	
	if (s_astDBGUsart[num].cParity != cParity)
	{
		s_astDBGUsart[num].cParity = cParity;
		cFlag = 1;
	}

	if (cFlag)
	{
		if (s_astDBGUsart[num].pDBGUsartInitFunc)
		{
			s_astDBGUsart[num].pDBGUsartInitFunc(bps,cParity);
		}
	}
}




#line 6 "..\\Source\\drivers\\drivers.c"

#line 1 "..\\Source\\drivers\\./func/func.c"
#line 2 "..\\Source\\drivers\\./func/func.c"

char is_byte_in_array(INT8U src,INT8U *pdat,unsigned int len)
{
	unsigned int i = 0;

	for (i = 0; i < len; i++)
	{
		if (src == pdat[i])
		{
			return 1;
		}
	}
	return 0;
}

INT16U get_avg_by_throw_away_big_val(INT16U *psrc,INT16U src_cnt,INT16U throw_away_cnt)
{
	INT16U i = 0;
	INT16U j = 0;
	INT16U max_val = 0;
	INT16U min_val = 0;
	INT32U sum = 0;
	INT8U un_idx[16] = {0};
	INT8U un_idx_cnt = 0;

	
	for (i = 0; i < throw_away_cnt; i++)
	{
		max_val = 0;
		for (j = 0; j < src_cnt; j++)
		{
			if (is_byte_in_array(j,un_idx,un_idx_cnt) == 0)
			{
				if (psrc[j] > max_val)
				{
					max_val = psrc[j];
					un_idx[un_idx_cnt] = j;
				}
			}
		}
		un_idx_cnt++;
	}

	
	min_val = 0xFFFF;
	for (i = 0; i < src_cnt; i++)
	{
		if (is_byte_in_array(i,un_idx,un_idx_cnt) == 0)
		{
			sum += psrc[i];

			if (min_val >= psrc[i])
			{
				min_val = psrc[i];
			}
		}
	}

	
	if ((src_cnt - throw_away_cnt) > 1)
	{
		sum -= min_val;
		return (sum / (src_cnt - throw_away_cnt - 1));
	}
	else
	{
		return (sum / (src_cnt - throw_away_cnt));
	}
}


char is_bcd_time_format_ok(INT8U bcd_time[6])
{
	INT8U time[6] = {0};

	memcpy(time,bcd_time,6);

	
	if (time[0] > 0x99)
	{
		return 0;
	}
	
	if ((time[1] > 0x12) || (time[1] == 0))
	{
		return 0;
	}
	
	if ((time[2] > 0x31) || (time[2] == 0))
	{
		return 0;
	}
	
	if (time[3] > 0x23)
	{
		return 0;
	}

	
	if (time[4] > 0x59)
	{
		return 0;
	}

	
	if (time[5] > 0x59)
	{
		return 0;
	}

	return 1;
}


char is_time_format_ok(INT8U time[6])
{
	
	if ((time[0] > 60) || (time[0] < 22))
	{
		return 0;
	}
	
	if ((time[1] > 12) || (time[1] == 0))
	{
		return 0;
	}
	
	if ((time[2] > 31) || (time[2] == 0))
	{
		return 0;
	}
	
	if (time[3] > 23)
	{
		return 0;
	}

	
	if (time[4] > 59)
	{
		return 0;
	}

	
	if (time[5] > 59)
	{
		return 0;
	}

	return 1;
}

int timecmp(INT8U time1[6],INT8U time2[6])
{
	char buf1[16] = {0};
	char buf2[16] = {0};
	int ret1 = 0;

	snprintf(buf1,sizeof(buf1),"%02d%02d%02d%02d%02d%02d",time1[0],time1[1],time1[2],time1[3],time1[4],time1[5]);
	snprintf(buf2,sizeof(buf2),"%02d%02d%02d%02d%02d%02d",time2[0],time2[1],time2[2],time2[3],time2[4],time2[5]);

	ret1 = memcmp(buf1,buf2,12);
	return ret1;
}




char is_between_time(INT8U desTime[6],INT8U start_time[6],INT8U end_time[6])
{
	char buf1[16] = {0};
	char buf2[16] = {0};
	char buf3[16] = {0};
	int ret1 = 0;
	int ret2 = 0;

	if ((is_time_format_ok(desTime) == 0)
		|| (is_time_format_ok(start_time) == 0)
		|| (is_time_format_ok(end_time) == 0)
	)
	{
		return 0;
	}

	snprintf(buf1,sizeof(buf1),"%02d%02d%02d%02d%02d%02d",desTime[0],desTime[1],desTime[2],desTime[3],desTime[4],desTime[5]);
	snprintf(buf2,sizeof(buf2),"%02d%02d%02d%02d%02d%02d",start_time[0],start_time[1],start_time[2],start_time[3],start_time[4],start_time[5]);
	snprintf(buf3,sizeof(buf3),"%02d%02d%02d%02d%02d%02d",end_time[0],end_time[1],end_time[2],end_time[3],end_time[4],end_time[5]);

	ret1 = memcmp(buf1,buf2,12);
	ret2 = memcmp(buf1,buf3,12);

	if ((ret1 >= 0) && (ret2 <= 0))
	{
		return 1;
	}
	return 0;
}

#line 1 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\time.h"
 
 
 
 









 





 













#line 41 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\time.h"


  



    typedef unsigned int size_t;    
#line 57 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\time.h"




    
 
#line 73 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\time.h"





typedef unsigned int clock_t;     
typedef unsigned int time_t;      

#pragma push
#pragma anon_unions

struct tm {
    int tm_sec;   
 
    int tm_min;    
    int tm_hour;   
    int tm_mday;   
    int tm_mon;    
    int tm_year;   
    int tm_wday;   
    int tm_yday;   
    int tm_isdst;  
    union {        
        struct {
            int __extra_1, __extra_2;
        };
        struct {
            long __extra_1_long, __extra_2_long;
        };
        struct {
            char *__extra_1_cptr, *__extra_2_cptr;
        };
        struct {
            void *__extra_1_vptr, *__extra_2_vptr;
        };
    };
};

#pragma pop

   



 

extern __declspec(__nothrow) clock_t clock(void);
   





 
extern __declspec(__nothrow) double difftime(time_t  , time_t  );
   


 
extern __declspec(__nothrow) time_t mktime(struct tm *  ) __attribute__((__nonnull__(1)));
   













 
extern __declspec(__nothrow) time_t time(time_t *  );
   






 

extern __declspec(__nothrow) char *asctime(const struct tm *  ) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) char *_asctime_r(const struct tm *  ,
                                char * __restrict  ) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) char *asctime_r(const struct tm *  ,
                               char * __restrict  ) __attribute__((__nonnull__(1,2)));

   



 
extern __declspec(__nothrow) char *ctime(const time_t *  ) __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) struct tm *gmtime(const time_t *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) struct tm *localtime(const time_t *  ) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) struct tm *_localtime_r(const time_t * __restrict  ,
                                       struct tm * __restrict  ) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) struct tm *localtime_r(const time_t * __restrict  ,
                                      struct tm * __restrict  ) __attribute__((__nonnull__(1,2)));

   



 
extern __declspec(__nothrow) size_t strftime(char * __restrict  , size_t  ,
                       const char * __restrict  ,
                       const struct tm * __restrict  ) __attribute__((__nonnull__(1,3,4)));
   











































 











#line 280 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\time.h"



 

#line 201 "..\\Source\\drivers\\./func/func.c"


unsigned int two_time_inv(INT8U start_time[6],INT8U end_time[6])
{
	struct tm time_cha;
	unsigned long t1 = 0;

	struct tm time_cha1;
	unsigned long t2 = 0;

	if ((is_time_format_ok(start_time) == 0) || (is_time_format_ok(end_time) == 0))
	{
		return 0;
	}

	time_cha.tm_year = (start_time[0] + 2000) - 1900; 
	time_cha.tm_mon = start_time[1] - 1;
	time_cha.tm_mday = start_time[2];
	time_cha.tm_hour = start_time[3];
	time_cha.tm_min = start_time[4];
	time_cha.tm_sec = start_time[5];
	t1 = mktime(&time_cha);

	time_cha1.tm_year = (end_time[0] + 2000) - 1900; 
	time_cha1.tm_mon = end_time[1] - 1;
	time_cha1.tm_mday = end_time[2];
	time_cha1.tm_hour = end_time[3];
	time_cha1.tm_min = end_time[4];
	time_cha1.tm_sec = end_time[5];
	t2 = mktime(&time_cha1);

	return (t2 - t1);
}



int IsObjNULL(void *pdat,INT32U len)
{
	INT32U i = 0;
	INT8U temp = 0;

	for (i = 0; i < len; i++)
	{
		temp = *((INT8U *)pdat + i);
		
		if ((temp != 0) && (temp != 0xFF))
		{
			return -1;
		}
	}
	return 0;
}


INT8U XOR_Check(INT8U *pdat,INT32U len)
{
	INT32U i = 0;
	INT8U temp = pdat[0];

	if (len == 1) return pdat[0];
	
	for (i = 1; i < len; i++)
	{
		temp ^= pdat[i];
	}
	return temp;
}

INT8U CommSumCheckCode(void *pdat,INT32U len)
{
	return XOR_Check(pdat,len);
}













 
char *GetSubString(char *str,char *pSubStr1,char *pSubStr2,char *pOutBuf,unsigned int outbuflen)
{
	char *pTemp1 = 0;
	char *pTemp2 = 0;
	unsigned int templen = 0;

	if ((str == 0) || (pSubStr1 == 0) || (pOutBuf == 0) || (outbuflen == 0))
	{
		return 0;
	}

	pTemp1 = strstr(str,pSubStr1);
	
	if (pTemp1 == 0) return 0;

	
	if (pSubStr2 && strlen(pSubStr2))
	{
		pTemp2 = strstr(pTemp1 + strlen((char *)pSubStr1),pSubStr2);
	}
	else
	{
		pTemp2 = str + strlen(str);
	}
	if (pTemp2)
	{
		templen = pTemp2 - (pTemp1 + strlen((char *)pSubStr1));
		templen = (outbuflen > templen) ? templen : (outbuflen - 1);
		memset(pOutBuf,0,outbuflen);
		if (templen) memcpy(pOutBuf,pTemp1 + strlen((char *)pSubStr1),templen);

		return pTemp1;
	}
	return 0;
}















 
void *ReverseFindSubStr(void *pSrc,int ulSrcLen,void *pDes,int ulDesLen)
{
	INT32S i = 0;
	INT32S j = 0;
	INT8U *pSource = (INT8U *)pSrc;
	INT8U *pTarget = (INT8U *)pDes;

	if ((pSrc == 0) || (ulSrcLen == 0)
		|| (pDes == 0) || (ulDesLen == 0))
	{
		return 0;
	}

	for (i = (ulSrcLen - 1); i >= 0; i--)
	{
		
		if (pSource[i] == *pTarget)
		{
			for (j = 0; j < ulDesLen; j++)
			{
				if (
					((i + j) >= ulSrcLen)
					|| (pSource[i + j] != pTarget[j])
					)
				{
					break;
				}
			}
			if (j == ulDesLen)
			{
				return (pSource + i);
			}
		}
	}

	return 0;
}







 
INT32U StrToHex(INT8U *str,INT8U len,INT32U *result)
{
	INT32U dat = 0;
	INT8U temp = 0;
	INT8U i = 0;
	INT8U *pStr = str;

	if (str == 0) return 1;
	if ((str[0] == '0') && ((str[1] == 'x') || (str[1] == 'X')))
	{
		pStr = str + 2;
	}

	if (len == 0)	
	{
		len = strlen((char *)pStr);
	}
	for (i = 0; i < len; i++)
	{
		
		dat <<= 4;
		if ((pStr[i] >= '0') && (pStr[i] <= '9'))
		{
			temp = pStr[i] - '0';
		}
		else if ((pStr[i] >= 'a') && (pStr[i] <= 'f'))
		{
			temp = pStr[i] - 'a' + 10;
		}
		else if ((pStr[i] >= 'A') && (pStr[i] <= 'F'))
		{
			temp = pStr[i] - 'A' + 10;
		}
		else		
		{
			return 2;
		}
		dat |= temp;
	}
	if (result) *result = dat;
	return 0;
}

int IsHexChar(INT8U ch)
{
	if (((ch >= '0') && (ch <= '9')) || ((ch >= 'a') && (ch <= 'f')) || ((ch >= 'A') && (ch <= 'F')))
	{
		return 1;
	}
	return 0;
}











 
int HexStrToArray(INT8U *str,INT8U *pdat,INT32U pdatlen)
{
	INT8U aucTemp[3] = {0};
	INT8U ucTempLen = 0;
	INT32U len = 0;
	if (str == 0) return -1;

	while (1)
	{
		if (*str == 0)
		{
			break;
		}
		else if (!IsHexChar(*str))
		{
			
		}
		else
		{
			aucTemp[ucTempLen++] = *str;
			if (ucTempLen == 2)
			{
				INT32U dat = 0;

				if (StrToHex(aucTemp,0,&dat) == 0)
				{
					pdat[len++] = dat;
					if (pdatlen && (len >= pdatlen)) break;
				}
				ucTempLen = 0;
			}
		}
		str++;
	}
	return len;
}


INT32U byte_to_u32(INT8U D0,INT8U D1,INT8U D2,INT8U D3)
{
	return ((D0 << 24) + (D1 << 16) + (D2 << 8) + D3);
}

INT16U byte_to_u16(INT8U D0,INT8U D1)
{
	return byte_to_u32(0,0,D0,D1);
}




typedef struct tagQueue
{
	void *ptr;		
	INT32U ulWrite;
	INT32U ulRead;

	INT32U ulOneUnitDataSize;	
	INT32U ulTotalCnt;			
}Queue;

static Queue s_astQ[8] = {0};


int FindFreeQueue(void)
{
	INT8U i = 0;

	for (i = 0; i < 8; i++)
	{
		if (s_astQ[i].ptr == 0)
		{
			return i;
		}
	}
	return -1;
}











 
int CreateQueue(int Qnum,void *ptr,INT32U ulOneUnitDataSize,INT32U cnt)
{
	int idx = 0;

	
	if ((ptr == 0) || (ulOneUnitDataSize == 0) || (cnt == 0))
	{
		return -1;
	}

	if (Qnum < 0)
	{
		idx = FindFreeQueue();
		if (idx < 0)
		{
			return -2;
		}
	}
	else
	{
		idx = Qnum;
		if ((idx >= 8) || s_astQ[idx].ptr)
		{
			return -2;
		}
	}

	memset(s_astQ + idx,0,sizeof(s_astQ[idx]));
	s_astQ[idx].ptr = ptr;
	s_astQ[idx].ulOneUnitDataSize = ulOneUnitDataSize;
	s_astQ[idx].ulTotalCnt = cnt;

	return idx;
}










 
int QueueIn(INT8U Qnum,void *buf)
{
	INT32U idx = 0;

	
	if ((buf == 0) || (Qnum >= 8))
	{
		return -1;
	}

	if ((s_astQ[Qnum].ptr == 0) || (s_astQ[Qnum].ulOneUnitDataSize == 0) || 
	(s_astQ[Qnum].ulTotalCnt == 0))
	{
		return -2;
	}

	
	if (s_astQ[Qnum].ulWrite >= (s_astQ[Qnum].ulRead + s_astQ[Qnum].ulTotalCnt))
	{
		return -3;
	}

	idx = s_astQ[Qnum].ulWrite % s_astQ[Qnum].ulTotalCnt;
	DBG_Print(3,"Queue%d Msg In(idx:%d)\r\n",Qnum,idx);
	memcpy((INT8U *)(s_astQ[Qnum].ptr) + idx * s_astQ[Qnum].ulOneUnitDataSize,buf,s_astQ[Qnum].ulOneUnitDataSize);
	s_astQ[Qnum].ulWrite++;

	return 0;
}


INT32U GetQueueElementCnt(INT8U Qnum)
{
	
	if (Qnum >= 8)
	{
		return 0;
	}

	if (s_astQ[Qnum].ulWrite < s_astQ[Qnum].ulRead)
	{
		s_astQ[Qnum].ulWrite = s_astQ[Qnum].ulRead;
		return 0;
	}

	return (s_astQ[Qnum].ulWrite - s_astQ[Qnum].ulRead);
}


int QueueOut(INT8U Qnum,void *buf)
{
	INT32U idx = 0;

	
	if (Qnum >= 8)
	{
		return -1;
	}

	if ((s_astQ[Qnum].ptr == 0) || (s_astQ[Qnum].ulOneUnitDataSize == 0) || 
	(s_astQ[Qnum].ulTotalCnt == 0))
	{
		return -2;
	}

	
	if (GetQueueElementCnt(Qnum) == 0)
	{
		return -3;
	}

	idx = s_astQ[Qnum].ulRead % s_astQ[Qnum].ulTotalCnt;
	DBG_Print(3,"Queue%d Msg Out(idx:%d)\r\n",Qnum,idx);
	if (buf) memcpy(buf,(INT8U *)(s_astQ[Qnum].ptr) + idx * s_astQ[Qnum].ulOneUnitDataSize,s_astQ[Qnum].ulOneUnitDataSize);
	QueueMsgDealOk(Qnum);

	return 0;
}




void *QueueGetCurMsg(INT8U Qnum)
{
	INT32U idx = 0;

	
	if (Qnum >= 8)
	{
		return 0;
	}

	if ((s_astQ[Qnum].ptr == 0) || (s_astQ[Qnum].ulOneUnitDataSize == 0) || 
	(s_astQ[Qnum].ulTotalCnt == 0))
	{
		return 0;
	}

	
	if (GetQueueElementCnt(Qnum) == 0)
	{
		return 0;
	}

	idx = s_astQ[Qnum].ulRead % s_astQ[Qnum].ulTotalCnt;

	return (INT8U *)(s_astQ[Qnum].ptr) + idx * s_astQ[Qnum].ulOneUnitDataSize;
}


int QueueMsgDealOk(INT8U Qnum)
{
	if (s_astQ[Qnum].ulRead < s_astQ[Qnum].ulWrite)
	{
		DBG_Print(3,"Queue%d Msg(idx:%u) Deal Finish.\r\n",Qnum,s_astQ[Qnum].ulRead);
		s_astQ[Qnum].ulRead++;
	}
	return 0;
}




#line 8 "..\\Source\\drivers\\drivers.c"


#line 1 "..\\Source\\drivers\\./stm32lib/misc.c"




















 

 
#line 25 "..\\Source\\drivers\\./stm32lib/misc.c"



 




 



 



  



 




 



 



 



 



 



 



 



 
















 
void NVIC_PriorityGroupConfig(uint32_t NVIC_PriorityGroup)
{
   
  ((void)0);
  
   
  ((SCB_Type *) ((0xE000E000) + 0x0D00))->AIRCR = ((uint32_t)0x05FA0000) | NVIC_PriorityGroup;
}







 
void NVIC_Init(NVIC_InitTypeDef* NVIC_InitStruct)
{
  uint32_t tmppriority = 0x00, tmppre = 0x00, tmpsub = 0x0F;
  
   
  ((void)0);
  ((void)0);  
  ((void)0);
    
  if (NVIC_InitStruct->NVIC_IRQChannelCmd != DISABLE)
  {
         
    tmppriority = (0x700 - ((((SCB_Type *) ((0xE000E000) + 0x0D00))->AIRCR) & (uint32_t)0x700))>> 0x08;
    tmppre = (0x4 - tmppriority);
    tmpsub = tmpsub >> tmppriority;

    tmppriority = (uint32_t)NVIC_InitStruct->NVIC_IRQChannelPreemptionPriority << tmppre;
    tmppriority |=  NVIC_InitStruct->NVIC_IRQChannelSubPriority & tmpsub;
    tmppriority = tmppriority << 0x04;
        
    ((NVIC_Type *) ((0xE000E000) + 0x0100))->IP[NVIC_InitStruct->NVIC_IRQChannel] = tmppriority;
    
     
    ((NVIC_Type *) ((0xE000E000) + 0x0100))->ISER[NVIC_InitStruct->NVIC_IRQChannel >> 0x05] =
      (uint32_t)0x01 << (NVIC_InitStruct->NVIC_IRQChannel & (uint8_t)0x1F);
  }
  else
  {
     
    ((NVIC_Type *) ((0xE000E000) + 0x0100))->ICER[NVIC_InitStruct->NVIC_IRQChannel >> 0x05] =
      (uint32_t)0x01 << (NVIC_InitStruct->NVIC_IRQChannel & (uint8_t)0x1F);
  }
}










 
void NVIC_SetVectorTable(uint32_t NVIC_VectTab, uint32_t Offset)
{ 
   
  ((void)0);
  ((void)0);  
   
  ((SCB_Type *) ((0xE000E000) + 0x0D00))->VTOR = NVIC_VectTab | (Offset & (uint32_t)0x1FFFFF80);
}










 
void NVIC_SystemLPConfig(uint8_t LowPowerMode, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);  
  
  if (NewState != DISABLE)
  {
    ((SCB_Type *) ((0xE000E000) + 0x0D00))->SCR |= LowPowerMode;
  }
  else
  {
    ((SCB_Type *) ((0xE000E000) + 0x0D00))->SCR &= (uint32_t)(~(uint32_t)LowPowerMode);
  }
}








 
void SysTick_CLKSourceConfig(uint32_t SysTick_CLKSource)
{
   
  ((void)0);
  if (SysTick_CLKSource == ((uint32_t)0x00000004))
  {
    ((SysTick_Type *) ((0xE000E000) + 0x0010))->CTRL |= ((uint32_t)0x00000004);
  }
  else
  {
    ((SysTick_Type *) ((0xE000E000) + 0x0010))->CTRL &= ((uint32_t)0xFFFFFFFB);
  }
}



 



 



 

 
#line 11 "..\\Source\\drivers\\drivers.c"

#line 1 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.c"



















 

 
#line 24 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.c"



 




  



 



 



 

 


 

 




 





  



  




 



 

 


#line 87 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.c"

 

 




 



 

 




#line 118 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.c"

 

 






 






#line 148 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.c"

 




 










 


 


 


 


 




  



  



  



  

static volatile const uint8_t APBAHBPrescTable[16] = {0, 0, 0, 0, 1, 2, 3, 4, 1, 2, 3, 4, 6, 7, 8, 9};
static volatile const uint8_t ADCPrescTable[4] = {2, 4, 6, 8};



 



 



 



 





 
void RCC_DeInit(void)
{
   
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR |= (uint32_t)0x00000001;

   

  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR &= (uint32_t)0xF8FF0000;



  
   
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR &= (uint32_t)0xFEF6FFFF;

   
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR &= (uint32_t)0xFFFBFFFF;

   
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR &= (uint32_t)0xFF80FFFF;

#line 257 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.c"
   
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CIR = 0x009F0000;


}










 
void RCC_HSEConfig(uint32_t RCC_HSE)
{
   
  ((void)0);
   
   
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR &= ((uint32_t)0xFFFEFFFF);
   
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR &= ((uint32_t)0xFFFBFFFF);
   
  switch(RCC_HSE)
  {
    case ((uint32_t)0x00010000):
       
      ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR |= ((uint32_t)0x00010000);
      break;
      
    case ((uint32_t)0x00040000):
       
      ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR |= ((uint32_t)0x00040000) | ((uint32_t)0x00010000);
      break;
      
    default:
      break;
  }
}







 
ErrorStatus RCC_WaitForHSEStartUp(void)
{
  volatile uint32_t StartUpCounter = 0;
  ErrorStatus status = ERROR;
  FlagStatus HSEStatus = RESET;
  
   
  do
  {
    HSEStatus = RCC_GetFlagStatus(((uint8_t)0x31));
    StartUpCounter++;  
  } while((StartUpCounter != ((uint16_t)0xFFFF)) && (HSEStatus == RESET));
  
  if (RCC_GetFlagStatus(((uint8_t)0x31)) != RESET)
  {
    status = SUCCESS;
  }
  else
  {
    status = ERROR;
  }  
  return (status);
}






 
void RCC_AdjustHSICalibrationValue(uint8_t HSICalibrationValue)
{
  uint32_t tmpreg = 0;
   
  ((void)0);
  tmpreg = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR;
   
  tmpreg &= ((uint32_t)0xFFFFFF07);
   
  tmpreg |= (uint32_t)HSICalibrationValue << 3;
   
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR = tmpreg;
}






 
void RCC_HSICmd(FunctionalState NewState)
{
   
  ((void)0);
  *(volatile uint32_t *) (((uint32_t)0x42000000) + (((((((uint32_t)0x40000000) + 0x20000) + 0x1000) - ((uint32_t)0x40000000)) + 0x00) * 32) + (0x00 * 4)) = (uint32_t)NewState;
}

















 
void RCC_PLLConfig(uint32_t RCC_PLLSource, uint32_t RCC_PLLMul)
{
  uint32_t tmpreg = 0;

   
  ((void)0);
  ((void)0);

  tmpreg = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR;
   
  tmpreg &= ((uint32_t)0xFFC0FFFF);
   
  tmpreg |= RCC_PLLSource | RCC_PLLMul;
   
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR = tmpreg;
}






 
void RCC_PLLCmd(FunctionalState NewState)
{
   
  ((void)0);

  *(volatile uint32_t *) (((uint32_t)0x42000000) + (((((((uint32_t)0x40000000) + 0x20000) + 0x1000) - ((uint32_t)0x40000000)) + 0x00) * 32) + (0x18 * 4)) = (uint32_t)NewState;
}


















 
void RCC_PREDIV1Config(uint32_t RCC_PREDIV1_Source, uint32_t RCC_PREDIV1_Div)
{
  uint32_t tmpreg = 0;
  
   
  ((void)0);
  ((void)0);

  tmpreg = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR2;
   
  tmpreg &= ~(((uint32_t)0x0000000F) | ((uint32_t)0x00010000));
   
  tmpreg |= RCC_PREDIV1_Source | RCC_PREDIV1_Div ;
   
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR2 = tmpreg;
}












 
void RCC_PREDIV2Config(uint32_t RCC_PREDIV2_Div)
{
  uint32_t tmpreg = 0;

   
  ((void)0);

  tmpreg = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR2;
   
  tmpreg &= ~((uint32_t)0x000000F0);
   
  tmpreg |= RCC_PREDIV2_Div;
   
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR2 = tmpreg;
}









 
void RCC_PLL2Config(uint32_t RCC_PLL2Mul)
{
  uint32_t tmpreg = 0;

   
  ((void)0);

  tmpreg = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR2;
   
  tmpreg &= ~((uint32_t)0x00000F00);
   
  tmpreg |= RCC_PLL2Mul;
   
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR2 = tmpreg;
}










 
void RCC_PLL2Cmd(FunctionalState NewState)
{
   
  ((void)0);

  *(volatile uint32_t *) (((uint32_t)0x42000000) + (((((((uint32_t)0x40000000) + 0x20000) + 0x1000) - ((uint32_t)0x40000000)) + 0x00) * 32) + (0x1A * 4)) = (uint32_t)NewState;
}










 
void RCC_PLL3Config(uint32_t RCC_PLL3Mul)
{
  uint32_t tmpreg = 0;

   
  ((void)0);

  tmpreg = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR2;
   
  tmpreg &= ~((uint32_t)0x0000F000);
   
  tmpreg |= RCC_PLL3Mul;
   
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR2 = tmpreg;
}







 
void RCC_PLL3Cmd(FunctionalState NewState)
{
   

  ((void)0);
  *(volatile uint32_t *) (((uint32_t)0x42000000) + (((((((uint32_t)0x40000000) + 0x20000) + 0x1000) - ((uint32_t)0x40000000)) + 0x00) * 32) + (0x1C * 4)) = (uint32_t)NewState;
}










 
void RCC_SYSCLKConfig(uint32_t RCC_SYSCLKSource)
{
  uint32_t tmpreg = 0;
   
  ((void)0);
  tmpreg = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR;
   
  tmpreg &= ((uint32_t)0xFFFFFFFC);
   
  tmpreg |= RCC_SYSCLKSource;
   
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR = tmpreg;
}









 
uint8_t RCC_GetSYSCLKSource(void)
{
  return ((uint8_t)(((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR & ((uint32_t)0x0000000C)));
}
















 
void RCC_HCLKConfig(uint32_t RCC_SYSCLK)
{
  uint32_t tmpreg = 0;
   
  ((void)0);
  tmpreg = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR;
   
  tmpreg &= ((uint32_t)0xFFFFFF0F);
   
  tmpreg |= RCC_SYSCLK;
   
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR = tmpreg;
}












 
void RCC_PCLK1Config(uint32_t RCC_HCLK)
{
  uint32_t tmpreg = 0;
   
  ((void)0);
  tmpreg = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR;
   
  tmpreg &= ((uint32_t)0xFFFFF8FF);
   
  tmpreg |= RCC_HCLK;
   
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR = tmpreg;
}












 
void RCC_PCLK2Config(uint32_t RCC_HCLK)
{
  uint32_t tmpreg = 0;
   
  ((void)0);
  tmpreg = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR;
   
  tmpreg &= ((uint32_t)0xFFFFC7FF);
   
  tmpreg |= RCC_HCLK << 3;
   
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR = tmpreg;
}


























 
void RCC_ITConfig(uint8_t RCC_IT, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  if (NewState != DISABLE)
  {
     
    *(volatile uint8_t *) ((uint32_t)0x40021009) |= RCC_IT;
  }
  else
  {
     
    *(volatile uint8_t *) ((uint32_t)0x40021009) &= (uint8_t)~RCC_IT;
  }
}











 
void RCC_USBCLKConfig(uint32_t RCC_USBCLKSource)
{
   
  ((void)0);

  *(volatile uint32_t *) (((uint32_t)0x42000000) + (((((((uint32_t)0x40000000) + 0x20000) + 0x1000) - ((uint32_t)0x40000000)) + 0x04) * 32) + (0x16 * 4)) = RCC_USBCLKSource;
}
#line 759 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.c"











 
void RCC_ADCCLKConfig(uint32_t RCC_PCLK2)
{
  uint32_t tmpreg = 0;
   
  ((void)0);
  tmpreg = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR;
   
  tmpreg &= ((uint32_t)0xFFFF3FFF);
   
  tmpreg |= RCC_PCLK2;
   
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR = tmpreg;
}

#line 824 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.c"









 
void RCC_LSEConfig(uint8_t RCC_LSE)
{
   
  ((void)0);
   
   
  *(volatile uint8_t *) (((uint32_t)0x40000000) + ((((((uint32_t)0x40000000) + 0x20000) + 0x1000) - ((uint32_t)0x40000000)) + 0x20)) = ((uint8_t)0x00);
   
  *(volatile uint8_t *) (((uint32_t)0x40000000) + ((((((uint32_t)0x40000000) + 0x20000) + 0x1000) - ((uint32_t)0x40000000)) + 0x20)) = ((uint8_t)0x00);
   
  switch(RCC_LSE)
  {
    case ((uint8_t)0x01):
       
      *(volatile uint8_t *) (((uint32_t)0x40000000) + ((((((uint32_t)0x40000000) + 0x20000) + 0x1000) - ((uint32_t)0x40000000)) + 0x20)) = ((uint8_t)0x01);
      break;
      
    case ((uint8_t)0x04):
       
      *(volatile uint8_t *) (((uint32_t)0x40000000) + ((((((uint32_t)0x40000000) + 0x20000) + 0x1000) - ((uint32_t)0x40000000)) + 0x20)) = ((uint8_t)0x04) | ((uint8_t)0x01);
      break;            
      
    default:
      break;      
  }
}






 
void RCC_LSICmd(FunctionalState NewState)
{
   
  ((void)0);
  *(volatile uint32_t *) (((uint32_t)0x42000000) + (((((((uint32_t)0x40000000) + 0x20000) + 0x1000) - ((uint32_t)0x40000000)) + 0x24) * 32) + (0x00 * 4)) = (uint32_t)NewState;
}










 
void RCC_RTCCLKConfig(uint32_t RCC_RTCCLKSource)
{
   
  ((void)0);
   
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->BDCR |= RCC_RTCCLKSource;
}






 
void RCC_RTCCLKCmd(FunctionalState NewState)
{
   
  ((void)0);
  *(volatile uint32_t *) (((uint32_t)0x42000000) + (((((((uint32_t)0x40000000) + 0x20000) + 0x1000) - ((uint32_t)0x40000000)) + 0x20) * 32) + (0x0F * 4)) = (uint32_t)NewState;
}








 
void RCC_GetClocksFreq(RCC_ClocksTypeDef* RCC_Clocks)
{
  uint32_t tmp = 0, pllmull = 0, pllsource = 0, presc = 0;


  uint32_t prediv1source = 0, prediv1factor = 0, prediv2factor = 0, pll2mull = 0;





    
   
  tmp = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR & ((uint32_t)0x0000000C);
  
  switch (tmp)
  {
    case 0x00:   
      RCC_Clocks->SYSCLK_Frequency = ((uint32_t)8000000);
      break;
    case 0x04:   
      RCC_Clocks->SYSCLK_Frequency = HSE_VALUE;
      break;
    case 0x08:   

       
      pllmull = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR & ((uint32_t)0x003C0000);
      pllsource = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR & ((uint32_t)0x00010000);
      

#line 969 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.c"
      pllmull = pllmull >> 18;
      
      if (pllmull != 0x0D)
      {
         pllmull += 2;
      }
      else
      {  
        pllmull = 13 / 2; 
      }
            
      if (pllsource == 0x00)
      { 
        RCC_Clocks->SYSCLK_Frequency = (((uint32_t)8000000) >> 1) * pllmull;
      }
      else
      { 
        
         
        prediv1source = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR2 & ((uint32_t)0x00010000);
        prediv1factor = (((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR2 & ((uint32_t)0x0000000F)) + 1;
        
        if (prediv1source == 0)
        {  
          RCC_Clocks->SYSCLK_Frequency = (HSE_VALUE / prediv1factor) * pllmull;          
        }
        else
        { 
          
           
          prediv2factor = ((((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR2 & ((uint32_t)0x000000F0)) >> 4) + 1;
          pll2mull = ((((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR2 & ((uint32_t)0x00000F00)) >> 8 ) + 2; 
          RCC_Clocks->SYSCLK_Frequency = (((HSE_VALUE / prediv2factor) * pll2mull) / prediv1factor) * pllmull;                         
        }
      }

      break;

    default:
      RCC_Clocks->SYSCLK_Frequency = ((uint32_t)8000000);
      break;
  }

   
   
  tmp = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR & ((uint32_t)0x000000F0);
  tmp = tmp >> 4;
  presc = APBAHBPrescTable[tmp];
   
  RCC_Clocks->HCLK_Frequency = RCC_Clocks->SYSCLK_Frequency >> presc;
   
  tmp = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR & ((uint32_t)0x00000700);
  tmp = tmp >> 8;
  presc = APBAHBPrescTable[tmp];
   
  RCC_Clocks->PCLK1_Frequency = RCC_Clocks->HCLK_Frequency >> presc;
   
  tmp = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR & ((uint32_t)0x00003800);
  tmp = tmp >> 11;
  presc = APBAHBPrescTable[tmp];
   
  RCC_Clocks->PCLK2_Frequency = RCC_Clocks->HCLK_Frequency >> presc;
   
  tmp = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR & ((uint32_t)0x0000C000);
  tmp = tmp >> 14;
  presc = ADCPrescTable[tmp];
   
  RCC_Clocks->ADCCLK_Frequency = RCC_Clocks->PCLK2_Frequency / presc;
}































 
void RCC_AHBPeriphClockCmd(uint32_t RCC_AHBPeriph, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);

  if (NewState != DISABLE)
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->AHBENR |= RCC_AHBPeriph;
  }
  else
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->AHBENR &= ~RCC_AHBPeriph;
  }
}















 
void RCC_APB2PeriphClockCmd(uint32_t RCC_APB2Periph, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  if (NewState != DISABLE)
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->APB2ENR |= RCC_APB2Periph;
  }
  else
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->APB2ENR &= ~RCC_APB2Periph;
  }
}
















 
void RCC_APB1PeriphClockCmd(uint32_t RCC_APB1Periph, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  if (NewState != DISABLE)
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->APB1ENR |= RCC_APB1Periph;
  }
  else
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->APB1ENR &= ~RCC_APB1Periph;
  }
}

#line 1175 "..\\Source\\drivers\\./stm32lib/stm32f10x_rcc.c"















 
void RCC_APB2PeriphResetCmd(uint32_t RCC_APB2Periph, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  if (NewState != DISABLE)
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->APB2RSTR |= RCC_APB2Periph;
  }
  else
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->APB2RSTR &= ~RCC_APB2Periph;
  }
}
















 
void RCC_APB1PeriphResetCmd(uint32_t RCC_APB1Periph, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  if (NewState != DISABLE)
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->APB1RSTR |= RCC_APB1Periph;
  }
  else
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->APB1RSTR &= ~RCC_APB1Periph;
  }
}






 
void RCC_BackupResetCmd(FunctionalState NewState)
{
   
  ((void)0);
  *(volatile uint32_t *) (((uint32_t)0x42000000) + (((((((uint32_t)0x40000000) + 0x20000) + 0x1000) - ((uint32_t)0x40000000)) + 0x20) * 32) + (0x10 * 4)) = (uint32_t)NewState;
}






 
void RCC_ClockSecuritySystemCmd(FunctionalState NewState)
{
   
  ((void)0);
  *(volatile uint32_t *) (((uint32_t)0x42000000) + (((((((uint32_t)0x40000000) + 0x20000) + 0x1000) - ((uint32_t)0x40000000)) + 0x00) * 32) + (0x13 * 4)) = (uint32_t)NewState;
}

























 
void RCC_MCOConfig(uint8_t RCC_MCO)
{
   
  ((void)0);

   
  *(volatile uint8_t *) ((uint32_t)0x40021007) = RCC_MCO;
}



































 
FlagStatus RCC_GetFlagStatus(uint8_t RCC_FLAG)
{
  uint32_t tmp = 0;
  uint32_t statusreg = 0;
  FlagStatus bitstatus = RESET;
   
  ((void)0);

   
  tmp = RCC_FLAG >> 5;
  if (tmp == 1)                
  {
    statusreg = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR;
  }
  else if (tmp == 2)           
  {
    statusreg = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->BDCR;
  }
  else                        
  {
    statusreg = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CSR;
  }

   
  tmp = RCC_FLAG & ((uint8_t)0x1F);
  if ((statusreg & ((uint32_t)1 << tmp)) != (uint32_t)RESET)
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }

   
  return bitstatus;
}







 
void RCC_ClearFlag(void)
{
   
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CSR |= ((uint32_t)0x01000000);
}

























 
ITStatus RCC_GetITStatus(uint8_t RCC_IT)
{
  ITStatus bitstatus = RESET;
   
  ((void)0);

   
  if ((((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CIR & RCC_IT) != (uint32_t)RESET)
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }

   
  return  bitstatus;
}


























 
void RCC_ClearITPendingBit(uint8_t RCC_IT)
{
   
  ((void)0);

  
 
  *(volatile uint8_t *) ((uint32_t)0x4002100A) = RCC_IT;
}



 



 



 

 
#line 13 "..\\Source\\drivers\\drivers.c"

#line 1 "..\\Source\\drivers\\./stm32lib/stm32f10x_pwr.c"



















 

 
#line 24 "..\\Source\\drivers\\./stm32lib/stm32f10x_pwr.c"
#line 25 "..\\Source\\drivers\\./stm32lib/stm32f10x_pwr.c"



 




  



 



 



 

 


 

 




 



 

 




 

 






 



 



 



 



 



 



 



 





 
void PWR_DeInit(void)
{
  RCC_APB1PeriphResetCmd(((uint32_t)0x10000000), ENABLE);
  RCC_APB1PeriphResetCmd(((uint32_t)0x10000000), DISABLE);
}






 
void PWR_BackupAccessCmd(FunctionalState NewState)
{
   
  ((void)0);
  *(volatile uint32_t *) (((uint32_t)0x42000000) + ((((((uint32_t)0x40000000) + 0x7000) - ((uint32_t)0x40000000)) + 0x00) * 32) + (0x08 * 4)) = (uint32_t)NewState;
}






 
void PWR_PVDCmd(FunctionalState NewState)
{
   
  ((void)0);
  *(volatile uint32_t *) (((uint32_t)0x42000000) + ((((((uint32_t)0x40000000) + 0x7000) - ((uint32_t)0x40000000)) + 0x00) * 32) + (0x04 * 4)) = (uint32_t)NewState;
}














 
void PWR_PVDLevelConfig(uint32_t PWR_PVDLevel)
{
  uint32_t tmpreg = 0;
   
  ((void)0);
  tmpreg = ((PWR_TypeDef *) (((uint32_t)0x40000000) + 0x7000))->CR;
   
  tmpreg &= ((uint32_t)0xFFFFFF1F);
   
  tmpreg |= PWR_PVDLevel;
   
  ((PWR_TypeDef *) (((uint32_t)0x40000000) + 0x7000))->CR = tmpreg;
}






 
void PWR_WakeUpPinCmd(FunctionalState NewState)
{
   
  ((void)0);
  *(volatile uint32_t *) (((uint32_t)0x42000000) + ((((((uint32_t)0x40000000) + 0x7000) - ((uint32_t)0x40000000)) + 0x04) * 32) + (0x08 * 4)) = (uint32_t)NewState;
}












 

void PWR_EnterSTOPMode(uint32_t PWR_Regulator, uint8_t PWR_STOPEntry)
{
	
  uint32_t tmpreg = 0;
  static uint32_t reg_snap[ 4 ];
   
  ((void)0);
  ((void)0);
  
   
  tmpreg = ((PWR_TypeDef *) (((uint32_t)0x40000000) + 0x7000))->CR;
   
  tmpreg &= ((uint32_t)0xFFFFFFFC);
   
  tmpreg |= PWR_Regulator;
   
  ((PWR_TypeDef *) (((uint32_t)0x40000000) + 0x7000))->CR = tmpreg;
   
  ((SCB_Type *) ((0xE000E000) + 0x0D00))->SCR |= ((uint8_t)0x04);
  

  reg_snap[ 0 ] =  (*(volatile uint32_t *)(0xE000E010));
  reg_snap[ 1 ] =  (*(volatile uint32_t *)(0xE000E100));
  reg_snap[ 2 ] =  (*(volatile uint32_t *)(0xE000E104));
  reg_snap[ 3 ] =  (*(volatile uint32_t *)(0xE000E108));
  (*(volatile uint32_t *)(0xE000E010)) &= 0x00010004;   
  (*(volatile uint32_t *)(0xE000E180))  = 0XFF7FF83D;   
  (*(volatile uint32_t *)(0xE000E184))  = 0XBFFFF8FF;   
  (*(volatile uint32_t *)(0xE000E188))  = 0xFFFFFFFF;	  

   
  if(PWR_STOPEntry == ((uint8_t)0x01))
  { 
			
     
    __wfi();
  }
  else
  {
     
	__sev();
	__wfe();
	__wfe();
  }
  
  
  (*(volatile uint32_t *)(0xE000E010)) = reg_snap[ 0 ] ;
  (*(volatile uint32_t *)(0xE000E100)) = reg_snap[ 1 ] ;
  (*(volatile uint32_t *)(0xE000E104)) = reg_snap[ 2 ] ;
  (*(volatile uint32_t *)(0xE000E108)) = reg_snap[ 3 ] ;  
  
  
   
  ((SCB_Type *) ((0xE000E000) + 0x0D00))->SCR &= (uint32_t)~((uint32_t)((uint8_t)0x04));  
}

#line 289 "..\\Source\\drivers\\./stm32lib/stm32f10x_pwr.c"





 
void PWR_EnterSTANDBYMode(void)
{
   
  ((PWR_TypeDef *) (((uint32_t)0x40000000) + 0x7000))->CR |= ((uint16_t)0x0004);
   
  ((PWR_TypeDef *) (((uint32_t)0x40000000) + 0x7000))->CR |= ((uint16_t)0x0002);
   
  ((SCB_Type *) ((0xE000E000) + 0x0D00))->SCR |= ((uint8_t)0x04);
 

  __force_stores();

   
  __wfi();
}









 
FlagStatus PWR_GetFlagStatus(uint32_t PWR_FLAG)
{
  FlagStatus bitstatus = RESET;
   
  ((void)0);
  
  if ((((PWR_TypeDef *) (((uint32_t)0x40000000) + 0x7000))->CSR & PWR_FLAG) != (uint32_t)RESET)
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }
   
  return bitstatus;
}








 
void PWR_ClearFlag(uint32_t PWR_FLAG)
{
   
  ((void)0);
         
  ((PWR_TypeDef *) (((uint32_t)0x40000000) + 0x7000))->CR |=  PWR_FLAG << 2;
}



 



 



 

 
#line 15 "..\\Source\\drivers\\drivers.c"

#line 1 "..\\Source\\drivers\\./stm32lib/stm32f10x_gpio.c"



















 

 
#line 24 "..\\Source\\drivers\\./stm32lib/stm32f10x_gpio.c"
#line 25 "..\\Source\\drivers\\./stm32lib/stm32f10x_gpio.c"



 




  



 



 



 

 


 

 





  
  





#line 71 "..\\Source\\drivers\\./stm32lib/stm32f10x_gpio.c"


 



 



 



 



 



 



 



 





 
void GPIO_DeInit(GPIO_TypeDef* GPIOx)
{
   
  ((void)0);
  
  if (GPIOx == ((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800)))
  {
    RCC_APB2PeriphResetCmd(((uint32_t)0x00000004), ENABLE);
    RCC_APB2PeriphResetCmd(((uint32_t)0x00000004), DISABLE);
  }
  else if (GPIOx == ((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0C00)))
  {
    RCC_APB2PeriphResetCmd(((uint32_t)0x00000008), ENABLE);
    RCC_APB2PeriphResetCmd(((uint32_t)0x00000008), DISABLE);
  }
  else if (GPIOx == ((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1000)))
  {
    RCC_APB2PeriphResetCmd(((uint32_t)0x00000010), ENABLE);
    RCC_APB2PeriphResetCmd(((uint32_t)0x00000010), DISABLE);
  }
  else if (GPIOx == ((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1400)))
  {
    RCC_APB2PeriphResetCmd(((uint32_t)0x00000020), ENABLE);
    RCC_APB2PeriphResetCmd(((uint32_t)0x00000020), DISABLE);
  }    
  else if (GPIOx == ((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1800)))
  {
    RCC_APB2PeriphResetCmd(((uint32_t)0x00000040), ENABLE);
    RCC_APB2PeriphResetCmd(((uint32_t)0x00000040), DISABLE);
  } 
  else if (GPIOx == ((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1C00)))
  {
    RCC_APB2PeriphResetCmd(((uint32_t)0x00000080), ENABLE);
    RCC_APB2PeriphResetCmd(((uint32_t)0x00000080), DISABLE);
  }
  else
  {
    if (GPIOx == ((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2000)))
    {
      RCC_APB2PeriphResetCmd(((uint32_t)0x00000100), ENABLE);
      RCC_APB2PeriphResetCmd(((uint32_t)0x00000100), DISABLE);
    }
  }
}






 
void GPIO_AFIODeInit(void)
{
  RCC_APB2PeriphResetCmd(((uint32_t)0x00000001), ENABLE);
  RCC_APB2PeriphResetCmd(((uint32_t)0x00000001), DISABLE);
}








 
void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_InitTypeDef* GPIO_InitStruct)
{
  uint32_t currentmode = 0x00, currentpin = 0x00, pinpos = 0x00, pos = 0x00;
  uint32_t tmpreg = 0x00, pinmask = 0x00;
   
  ((void)0);
  ((void)0);
  ((void)0);  
  
 
  currentmode = ((uint32_t)GPIO_InitStruct->GPIO_Mode) & ((uint32_t)0x0F);
  if ((((uint32_t)GPIO_InitStruct->GPIO_Mode) & ((uint32_t)0x10)) != 0x00)
  { 
     
    ((void)0);
     
    currentmode |= (uint32_t)GPIO_InitStruct->GPIO_Speed;
  }
 
   
  if (((uint32_t)GPIO_InitStruct->GPIO_Pin & ((uint32_t)0x00FF)) != 0x00)
  {
    tmpreg = GPIOx->CRL;
    for (pinpos = 0x00; pinpos < 0x08; pinpos++)
    {
      pos = ((uint32_t)0x01) << pinpos;
       
      currentpin = (GPIO_InitStruct->GPIO_Pin) & pos;
      if (currentpin == pos)
      {
        pos = pinpos << 2;
         
        pinmask = ((uint32_t)0x0F) << pos;
        tmpreg &= ~pinmask;
         
        tmpreg |= (currentmode << pos);
         
        if (GPIO_InitStruct->GPIO_Mode == GPIO_Mode_IPD)
        {
          GPIOx->BRR = (((uint32_t)0x01) << pinpos);
        }
        else
        {
           
          if (GPIO_InitStruct->GPIO_Mode == GPIO_Mode_IPU)
          {
            GPIOx->BSRR = (((uint32_t)0x01) << pinpos);
          }
        }
      }
    }
    GPIOx->CRL = tmpreg;
  }
 
   
  if (GPIO_InitStruct->GPIO_Pin > 0x00FF)
  {
    tmpreg = GPIOx->CRH;
    for (pinpos = 0x00; pinpos < 0x08; pinpos++)
    {
      pos = (((uint32_t)0x01) << (pinpos + 0x08));
       
      currentpin = ((GPIO_InitStruct->GPIO_Pin) & pos);
      if (currentpin == pos)
      {
        pos = pinpos << 2;
         
        pinmask = ((uint32_t)0x0F) << pos;
        tmpreg &= ~pinmask;
         
        tmpreg |= (currentmode << pos);
         
        if (GPIO_InitStruct->GPIO_Mode == GPIO_Mode_IPD)
        {
          GPIOx->BRR = (((uint32_t)0x01) << (pinpos + 0x08));
        }
         
        if (GPIO_InitStruct->GPIO_Mode == GPIO_Mode_IPU)
        {
          GPIOx->BSRR = (((uint32_t)0x01) << (pinpos + 0x08));
        }
      }
    }
    GPIOx->CRH = tmpreg;
  }
}






 
void GPIO_StructInit(GPIO_InitTypeDef* GPIO_InitStruct)
{
   
  GPIO_InitStruct->GPIO_Pin  = ((uint16_t)0xFFFF);
  GPIO_InitStruct->GPIO_Speed = GPIO_Speed_2MHz;
  GPIO_InitStruct->GPIO_Mode = GPIO_Mode_IN_FLOATING;
}







 
uint8_t GPIO_ReadInputDataBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin)
{
  uint8_t bitstatus = 0x00;
  
   
  ((void)0);
  ((void)0); 
  
  if ((GPIOx->IDR & GPIO_Pin) != (uint32_t)Bit_RESET)
  {
    bitstatus = (uint8_t)Bit_SET;
  }
  else
  {
    bitstatus = (uint8_t)Bit_RESET;
  }
  return bitstatus;
}





 
uint16_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
{
   
  ((void)0);
  
  return ((uint16_t)GPIOx->IDR);
}







 
uint8_t GPIO_ReadOutputDataBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin)
{
  uint8_t bitstatus = 0x00;
   
  ((void)0);
  ((void)0); 
  
  if ((GPIOx->ODR & GPIO_Pin) != (uint32_t)Bit_RESET)
  {
    bitstatus = (uint8_t)Bit_SET;
  }
  else
  {
    bitstatus = (uint8_t)Bit_RESET;
  }
  return bitstatus;
}





 
uint16_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
{
   
  ((void)0);
    
  return ((uint16_t)GPIOx->ODR);
}







 
void GPIO_SetBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin)
{
   
  ((void)0);
  ((void)0);
  
  GPIOx->BSRR = GPIO_Pin;
}







 
void GPIO_ResetBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin)
{
   
  ((void)0);
  ((void)0);
  
  GPIOx->BRR = GPIO_Pin;
}











 
void GPIO_WriteBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, BitAction BitVal)
{
   
  ((void)0);
  ((void)0);
  ((void)0); 
  
  if (BitVal != Bit_RESET)
  {
    GPIOx->BSRR = GPIO_Pin;
  }
  else
  {
    GPIOx->BRR = GPIO_Pin;
  }
}






 
void GPIO_Write(GPIO_TypeDef* GPIOx, uint16_t PortVal)
{
   
  ((void)0);
  
  GPIOx->ODR = PortVal;
}







 
void GPIO_PinLockConfig(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin)
{
  uint32_t tmp = 0x00010000;
  
   
  ((void)0);
  ((void)0);
  
  tmp |= GPIO_Pin;
   
  GPIOx->LCKR = tmp;
   
  GPIOx->LCKR =  GPIO_Pin;
   
  GPIOx->LCKR = tmp;
   
  tmp = GPIOx->LCKR;
   
  tmp = GPIOx->LCKR;
}









 
void GPIO_EventOutputConfig(uint8_t GPIO_PortSource, uint8_t GPIO_PinSource)
{
  uint32_t tmpreg = 0x00;
   
  ((void)0);
  ((void)0);
    
  tmpreg = ((AFIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0000))->EVCR;
   
  tmpreg &= ((uint16_t)0xFF80);
  tmpreg |= (uint32_t)GPIO_PortSource << 0x04;
  tmpreg |= GPIO_PinSource;
  ((AFIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0000))->EVCR = tmpreg;
}






 
void GPIO_EventOutputCmd(FunctionalState NewState)
{
   
  ((void)0);
  
  *(volatile uint32_t *) (((uint32_t)0x42000000) + (((((((uint32_t)0x40000000) + 0x10000) + 0x0000) - ((uint32_t)0x40000000)) + 0x00) * 32) + (((uint8_t)0x07) * 4)) = (uint32_t)NewState;
}


























































 
void GPIO_PinRemapConfig(uint32_t GPIO_Remap, FunctionalState NewState)
{
  uint32_t tmp = 0x00, tmp1 = 0x00, tmpreg = 0x00, tmpmask = 0x00;

   
  ((void)0);
  ((void)0);  
  
  if((GPIO_Remap & 0x80000000) == 0x80000000)
  {
    tmpreg = ((AFIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0000))->MAPR2;
  }
  else
  {
    tmpreg = ((AFIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0000))->MAPR;
  }

  tmpmask = (GPIO_Remap & ((uint32_t)0x000F0000)) >> 0x10;
  tmp = GPIO_Remap & ((uint16_t)0xFFFF);

  if ((GPIO_Remap & (((uint32_t)0x00200000) | ((uint32_t)0x00100000))) == (((uint32_t)0x00200000) | ((uint32_t)0x00100000)))
  {
    tmpreg &= ((uint32_t)0xF0FFFFFF);
    ((AFIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0000))->MAPR &= ((uint32_t)0xF0FFFFFF);
  }
  else if ((GPIO_Remap & ((uint32_t)0x00100000)) == ((uint32_t)0x00100000))
  {
    tmp1 = ((uint32_t)0x03) << tmpmask;
    tmpreg &= ~tmp1;
    tmpreg |= ~((uint32_t)0xF0FFFFFF);
  }
  else
  {
    tmpreg &= ~(tmp << ((GPIO_Remap >> 0x15)*0x10));
    tmpreg |= ~((uint32_t)0xF0FFFFFF);
  }

  if (NewState != DISABLE)
  {
    tmpreg |= (tmp << ((GPIO_Remap >> 0x15)*0x10));
  }

  if((GPIO_Remap & 0x80000000) == 0x80000000)
  {
    ((AFIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0000))->MAPR2 = tmpreg;
  }
  else
  {
    ((AFIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0000))->MAPR = tmpreg;
  }  
}








 
void GPIO_EXTILineConfig(uint8_t GPIO_PortSource, uint8_t GPIO_PinSource)
{
  uint32_t tmp = 0x00;
   
  ((void)0);
  ((void)0);
  
  tmp = ((uint32_t)0x0F) << (0x04 * (GPIO_PinSource & (uint8_t)0x03));
  ((AFIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0000))->EXTICR[GPIO_PinSource >> 0x02] &= ~tmp;
  ((AFIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0000))->EXTICR[GPIO_PinSource >> 0x02] |= (((uint32_t)GPIO_PortSource) << (0x04 * (GPIO_PinSource & (uint8_t)0x03)));
}









 
void GPIO_ETH_MediaInterfaceConfig(uint32_t GPIO_ETH_MediaInterface) 
{ 
  ((void)0); 

    
  *(volatile uint32_t *) (((uint32_t)0x42000000) + (((((((uint32_t)0x40000000) + 0x10000) + 0x0000) - ((uint32_t)0x40000000)) + 0x04) * 32) + (((u8)0x17) * 4)) = GPIO_ETH_MediaInterface; 
}
  


 



 



 

 
#line 17 "..\\Source\\drivers\\drivers.c"

#line 1 "..\\Source\\drivers\\./stm32lib/stm32f10x_adc.c"



















 

 
#line 24 "..\\Source\\drivers\\./stm32lib/stm32f10x_adc.c"
#line 25 "..\\Source\\drivers\\./stm32lib/stm32f10x_adc.c"



 




 



 



 



 

 


 



 



 



 


 


 


 



 



 


 


 


 



 



 


 



 


 



 



 


 




 


 


 



 



 


 




 



 



 



 



 



 



 



 





 
void ADC_DeInit(ADC_TypeDef* ADCx)
{
   
  ((void)0);
  
  if (ADCx == ((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2400)))
  {
     
    RCC_APB2PeriphResetCmd(((uint32_t)0x00000200), ENABLE);
     
    RCC_APB2PeriphResetCmd(((uint32_t)0x00000200), DISABLE);
  }
  else if (ADCx == ((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2800)))
  {
     
    RCC_APB2PeriphResetCmd(((uint32_t)0x00000400), ENABLE);
     
    RCC_APB2PeriphResetCmd(((uint32_t)0x00000400), DISABLE);
  }
  else
  {
    if (ADCx == ((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3C00)))
    {
       
      RCC_APB2PeriphResetCmd(((uint32_t)0x00008000), ENABLE);
       
      RCC_APB2PeriphResetCmd(((uint32_t)0x00008000), DISABLE);
    }
  }
}








 
void ADC_Init(ADC_TypeDef* ADCx, ADC_InitTypeDef* ADC_InitStruct)
{
  uint32_t tmpreg1 = 0;
  uint8_t tmpreg2 = 0;
   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);   
  ((void)0); 
  ((void)0);

   
   
  tmpreg1 = ADCx->CR1;
   
  tmpreg1 &= ((uint32_t)0xFFF0FEFF);
   
   
   
  tmpreg1 |= (uint32_t)(ADC_InitStruct->ADC_Mode | ((uint32_t)ADC_InitStruct->ADC_ScanConvMode << 8));
   
  ADCx->CR1 = tmpreg1;

   
   
  tmpreg1 = ADCx->CR2;
   
  tmpreg1 &= ((uint32_t)0xFFF1F7FD);
   
   
   
   
  tmpreg1 |= (uint32_t)(ADC_InitStruct->ADC_DataAlign | ADC_InitStruct->ADC_ExternalTrigConv |
            ((uint32_t)ADC_InitStruct->ADC_ContinuousConvMode << 1));
   
  ADCx->CR2 = tmpreg1;

   
   
  tmpreg1 = ADCx->SQR1;
   
  tmpreg1 &= ((uint32_t)0xFF0FFFFF);
   
   
  tmpreg2 |= (uint8_t) (ADC_InitStruct->ADC_NbrOfChannel - (uint8_t)1);
  tmpreg1 |= (uint32_t)tmpreg2 << 20;
   
  ADCx->SQR1 = tmpreg1;
}





 
void ADC_StructInit(ADC_InitTypeDef* ADC_InitStruct)
{
   
   
  ADC_InitStruct->ADC_Mode = ((uint32_t)0x00000000);
   
  ADC_InitStruct->ADC_ScanConvMode = DISABLE;
   
  ADC_InitStruct->ADC_ContinuousConvMode = DISABLE;
   
  ADC_InitStruct->ADC_ExternalTrigConv = ((uint32_t)0x00000000);
   
  ADC_InitStruct->ADC_DataAlign = ((uint32_t)0x00000000);
   
  ADC_InitStruct->ADC_NbrOfChannel = 1;
}







 
void ADC_Cmd(ADC_TypeDef* ADCx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  if (NewState != DISABLE)
  {
     
    ADCx->CR2 |= ((uint32_t)0x00000001);
  }
  else
  {
     
    ADCx->CR2 &= ((uint32_t)0xFFFFFFFE);
  }
}








 
void ADC_DMACmd(ADC_TypeDef* ADCx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  if (NewState != DISABLE)
  {
     
    ADCx->CR2 |= ((uint32_t)0x00000100);
  }
  else
  {
     
    ADCx->CR2 &= ((uint32_t)0xFFFFFEFF);
  }
}












 
void ADC_ITConfig(ADC_TypeDef* ADCx, uint16_t ADC_IT, FunctionalState NewState)
{
  uint8_t itmask = 0;
   
  ((void)0);
  ((void)0);
  ((void)0);
   
  itmask = (uint8_t)ADC_IT;
  if (NewState != DISABLE)
  {
     
    ADCx->CR1 |= itmask;
  }
  else
  {
     
    ADCx->CR1 &= (~(uint32_t)itmask);
  }
}





 
void ADC_ResetCalibration(ADC_TypeDef* ADCx)
{
   
  ((void)0);
     
  ADCx->CR2 |= ((uint32_t)0x00000008);
}





 
FlagStatus ADC_GetResetCalibrationStatus(ADC_TypeDef* ADCx)
{
  FlagStatus bitstatus = RESET;
   
  ((void)0);
   
  if ((ADCx->CR2 & ((uint32_t)0x00000008)) != (uint32_t)RESET)
  {
     
    bitstatus = SET;
  }
  else
  {
     
    bitstatus = RESET;
  }
   
  return  bitstatus;
}





 
void ADC_StartCalibration(ADC_TypeDef* ADCx)
{
   
  ((void)0);
     
  ADCx->CR2 |= ((uint32_t)0x00000004);
}





 
FlagStatus ADC_GetCalibrationStatus(ADC_TypeDef* ADCx)
{
  FlagStatus bitstatus = RESET;
   
  ((void)0);
   
  if ((ADCx->CR2 & ((uint32_t)0x00000004)) != (uint32_t)RESET)
  {
     
    bitstatus = SET;
  }
  else
  {
     
    bitstatus = RESET;
  }
   
  return  bitstatus;
}







 
void ADC_SoftwareStartConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  if (NewState != DISABLE)
  {
    
 
    ADCx->CR2 |= ((uint32_t)0x00500000);
  }
  else
  {
    
 
    ADCx->CR2 &= ((uint32_t)0xFFAFFFFF);
  }
}





 
FlagStatus ADC_GetSoftwareStartConvStatus(ADC_TypeDef* ADCx)
{
  FlagStatus bitstatus = RESET;
   
  ((void)0);
   
  if ((ADCx->CR2 & ((uint32_t)0x00400000)) != (uint32_t)RESET)
  {
     
    bitstatus = SET;
  }
  else
  {
     
    bitstatus = RESET;
  }
   
  return  bitstatus;
}








 
void ADC_DiscModeChannelCountConfig(ADC_TypeDef* ADCx, uint8_t Number)
{
  uint32_t tmpreg1 = 0;
  uint32_t tmpreg2 = 0;
   
  ((void)0);
  ((void)0);
   
  tmpreg1 = ADCx->CR1;
   
  tmpreg1 &= ((uint32_t)0xFFFF1FFF);
   
  tmpreg2 = Number - 1;
  tmpreg1 |= tmpreg2 << 13;
   
  ADCx->CR1 = tmpreg1;
}









 
void ADC_DiscModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  if (NewState != DISABLE)
  {
     
    ADCx->CR1 |= ((uint32_t)0x00000800);
  }
  else
  {
     
    ADCx->CR1 &= ((uint32_t)0xFFFFF7FF);
  }
}





































 
void ADC_RegularChannelConfig(ADC_TypeDef* ADCx, uint8_t ADC_Channel, uint8_t Rank, uint8_t ADC_SampleTime)
{
  uint32_t tmpreg1 = 0, tmpreg2 = 0;
   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
   
  if (ADC_Channel > ((uint8_t)0x09))
  {
     
    tmpreg1 = ADCx->SMPR1;
     
    tmpreg2 = ((uint32_t)0x00000007) << (3 * (ADC_Channel - 10));
     
    tmpreg1 &= ~tmpreg2;
     
    tmpreg2 = (uint32_t)ADC_SampleTime << (3 * (ADC_Channel - 10));
     
    tmpreg1 |= tmpreg2;
     
    ADCx->SMPR1 = tmpreg1;
  }
  else  
  {
     
    tmpreg1 = ADCx->SMPR2;
     
    tmpreg2 = ((uint32_t)0x00000007) << (3 * ADC_Channel);
     
    tmpreg1 &= ~tmpreg2;
     
    tmpreg2 = (uint32_t)ADC_SampleTime << (3 * ADC_Channel);
     
    tmpreg1 |= tmpreg2;
     
    ADCx->SMPR2 = tmpreg1;
  }
   
  if (Rank < 7)
  {
     
    tmpreg1 = ADCx->SQR3;
     
    tmpreg2 = ((uint32_t)0x0000001F) << (5 * (Rank - 1));
     
    tmpreg1 &= ~tmpreg2;
     
    tmpreg2 = (uint32_t)ADC_Channel << (5 * (Rank - 1));
     
    tmpreg1 |= tmpreg2;
     
    ADCx->SQR3 = tmpreg1;
  }
   
  else if (Rank < 13)
  {
     
    tmpreg1 = ADCx->SQR2;
     
    tmpreg2 = ((uint32_t)0x0000001F) << (5 * (Rank - 7));
     
    tmpreg1 &= ~tmpreg2;
     
    tmpreg2 = (uint32_t)ADC_Channel << (5 * (Rank - 7));
     
    tmpreg1 |= tmpreg2;
     
    ADCx->SQR2 = tmpreg1;
  }
   
  else
  {
     
    tmpreg1 = ADCx->SQR1;
     
    tmpreg2 = ((uint32_t)0x0000001F) << (5 * (Rank - 13));
     
    tmpreg1 &= ~tmpreg2;
     
    tmpreg2 = (uint32_t)ADC_Channel << (5 * (Rank - 13));
     
    tmpreg1 |= tmpreg2;
     
    ADCx->SQR1 = tmpreg1;
  }
}







 
void ADC_ExternalTrigConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  if (NewState != DISABLE)
  {
     
    ADCx->CR2 |= ((uint32_t)0x00100000);
  }
  else
  {
     
    ADCx->CR2 &= ((uint32_t)0xFFEFFFFF);
  }
}





 
uint16_t ADC_GetConversionValue(ADC_TypeDef* ADCx)
{
   
  ((void)0);
   
  return (uint16_t) ADCx->DR;
}




 
uint32_t ADC_GetDualModeConversionValue(void)
{
   
  return (*(volatile uint32_t *) ((uint32_t)0x4001244C));
}








 
void ADC_AutoInjectedConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  if (NewState != DISABLE)
  {
     
    ADCx->CR1 |= ((uint32_t)0x00000400);
  }
  else
  {
     
    ADCx->CR1 &= ((uint32_t)0xFFFFFBFF);
  }
}









 
void ADC_InjectedDiscModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  if (NewState != DISABLE)
  {
     
    ADCx->CR1 |= ((uint32_t)0x00001000);
  }
  else
  {
     
    ADCx->CR1 &= ((uint32_t)0xFFFFEFFF);
  }
}






















 
void ADC_ExternalTrigInjectedConvConfig(ADC_TypeDef* ADCx, uint32_t ADC_ExternalTrigInjecConv)
{
  uint32_t tmpreg = 0;
   
  ((void)0);
  ((void)0);
   
  tmpreg = ADCx->CR2;
   
  tmpreg &= ((uint32_t)0xFFFF8FFF);
   
  tmpreg |= ADC_ExternalTrigInjecConv;
   
  ADCx->CR2 = tmpreg;
}









 
void ADC_ExternalTrigInjectedConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  if (NewState != DISABLE)
  {
     
    ADCx->CR2 |= ((uint32_t)0x00008000);
  }
  else
  {
     
    ADCx->CR2 &= ((uint32_t)0xFFFF7FFF);
  }
}








 
void ADC_SoftwareStartInjectedConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  if (NewState != DISABLE)
  {
    
 
    ADCx->CR2 |= ((uint32_t)0x00208000);
  }
  else
  {
    
 
    ADCx->CR2 &= ((uint32_t)0xFFDF7FFF);
  }
}





 
FlagStatus ADC_GetSoftwareStartInjectedConvCmdStatus(ADC_TypeDef* ADCx)
{
  FlagStatus bitstatus = RESET;
   
  ((void)0);
   
  if ((ADCx->CR2 & ((uint32_t)0x00200000)) != (uint32_t)RESET)
  {
     
    bitstatus = SET;
  }
  else
  {
     
    bitstatus = RESET;
  }
   
  return  bitstatus;
}





































 
void ADC_InjectedChannelConfig(ADC_TypeDef* ADCx, uint8_t ADC_Channel, uint8_t Rank, uint8_t ADC_SampleTime)
{
  uint32_t tmpreg1 = 0, tmpreg2 = 0, tmpreg3 = 0;
   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
   
  if (ADC_Channel > ((uint8_t)0x09))
  {
     
    tmpreg1 = ADCx->SMPR1;
     
    tmpreg2 = ((uint32_t)0x00000007) << (3*(ADC_Channel - 10));
     
    tmpreg1 &= ~tmpreg2;
     
    tmpreg2 = (uint32_t)ADC_SampleTime << (3*(ADC_Channel - 10));
     
    tmpreg1 |= tmpreg2;
     
    ADCx->SMPR1 = tmpreg1;
  }
  else  
  {
     
    tmpreg1 = ADCx->SMPR2;
     
    tmpreg2 = ((uint32_t)0x00000007) << (3 * ADC_Channel);
     
    tmpreg1 &= ~tmpreg2;
     
    tmpreg2 = (uint32_t)ADC_SampleTime << (3 * ADC_Channel);
     
    tmpreg1 |= tmpreg2;
     
    ADCx->SMPR2 = tmpreg1;
  }
   
   
  tmpreg1 = ADCx->JSQR;
   
  tmpreg3 =  (tmpreg1 & ((uint32_t)0x00300000))>> 20;
   
  tmpreg2 = ((uint32_t)0x0000001F) << (5 * (uint8_t)((Rank + 3) - (tmpreg3 + 1)));
   
  tmpreg1 &= ~tmpreg2;
   
  tmpreg2 = (uint32_t)ADC_Channel << (5 * (uint8_t)((Rank + 3) - (tmpreg3 + 1)));
   
  tmpreg1 |= tmpreg2;
   
  ADCx->JSQR = tmpreg1;
}







 
void ADC_InjectedSequencerLengthConfig(ADC_TypeDef* ADCx, uint8_t Length)
{
  uint32_t tmpreg1 = 0;
  uint32_t tmpreg2 = 0;
   
  ((void)0);
  ((void)0);
  
   
  tmpreg1 = ADCx->JSQR;
   
  tmpreg1 &= ((uint32_t)0xFFCFFFFF);
   
  tmpreg2 = Length - 1; 
  tmpreg1 |= tmpreg2 << 20;
   
  ADCx->JSQR = tmpreg1;
}













 
void ADC_SetInjectedOffset(ADC_TypeDef* ADCx, uint8_t ADC_InjectedChannel, uint16_t Offset)
{
  volatile uint32_t tmp = 0;
  
   
  ((void)0);
  ((void)0);
  ((void)0);  
  
  tmp = (uint32_t)ADCx;
  tmp += ADC_InjectedChannel;
  
   
  *(volatile uint32_t *) tmp = (uint32_t)Offset;
}











 
uint16_t ADC_GetInjectedConversionValue(ADC_TypeDef* ADCx, uint8_t ADC_InjectedChannel)
{
  volatile uint32_t tmp = 0;
  
   
  ((void)0);
  ((void)0);

  tmp = (uint32_t)ADCx;
  tmp += ADC_InjectedChannel + ((uint8_t)0x28);
  
   
  return (uint16_t) (*(volatile uint32_t*)  tmp);   
}















 
void ADC_AnalogWatchdogCmd(ADC_TypeDef* ADCx, uint32_t ADC_AnalogWatchdog)
{
  uint32_t tmpreg = 0;
   
  ((void)0);
  ((void)0);
   
  tmpreg = ADCx->CR1;
   
  tmpreg &= ((uint32_t)0xFF3FFDFF);
   
  tmpreg |= ADC_AnalogWatchdog;
   
  ADCx->CR1 = tmpreg;
}









 
void ADC_AnalogWatchdogThresholdsConfig(ADC_TypeDef* ADCx, uint16_t HighThreshold,
                                        uint16_t LowThreshold)
{
   
  ((void)0);
  ((void)0);
  ((void)0);
   
  ADCx->HTR = HighThreshold;
   
  ADCx->LTR = LowThreshold;
}

























 
void ADC_AnalogWatchdogSingleChannelConfig(ADC_TypeDef* ADCx, uint8_t ADC_Channel)
{
  uint32_t tmpreg = 0;
   
  ((void)0);
  ((void)0);
   
  tmpreg = ADCx->CR1;
   
  tmpreg &= ((uint32_t)0xFFFFFFE0);
   
  tmpreg |= ADC_Channel;
   
  ADCx->CR1 = tmpreg;
}






 
void ADC_TempSensorVrefintCmd(FunctionalState NewState)
{
   
  ((void)0);
  if (NewState != DISABLE)
  {
     
    ((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2400))->CR2 |= ((uint32_t)0x00800000);
  }
  else
  {
     
    ((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2400))->CR2 &= ((uint32_t)0xFF7FFFFF);
  }
}












 
FlagStatus ADC_GetFlagStatus(ADC_TypeDef* ADCx, uint8_t ADC_FLAG)
{
  FlagStatus bitstatus = RESET;
   
  ((void)0);
  ((void)0);
   
  if ((ADCx->SR & ADC_FLAG) != (uint8_t)RESET)
  {
     
    bitstatus = SET;
  }
  else
  {
     
    bitstatus = RESET;
  }
   
  return  bitstatus;
}












 
void ADC_ClearFlag(ADC_TypeDef* ADCx, uint8_t ADC_FLAG)
{
   
  ((void)0);
  ((void)0);
   
  ADCx->SR = ~(uint32_t)ADC_FLAG;
}










 
ITStatus ADC_GetITStatus(ADC_TypeDef* ADCx, uint16_t ADC_IT)
{
  ITStatus bitstatus = RESET;
  uint32_t itmask = 0, enablestatus = 0;
   
  ((void)0);
  ((void)0);
   
  itmask = ADC_IT >> 8;
   
  enablestatus = (ADCx->CR1 & (uint8_t)ADC_IT) ;
   
  if (((ADCx->SR & itmask) != (uint32_t)RESET) && enablestatus)
  {
     
    bitstatus = SET;
  }
  else
  {
     
    bitstatus = RESET;
  }
   
  return  bitstatus;
}










 
void ADC_ClearITPendingBit(ADC_TypeDef* ADCx, uint16_t ADC_IT)
{
  uint8_t itmask = 0;
   
  ((void)0);
  ((void)0);
   
  itmask = (uint8_t)(ADC_IT >> 8);
   
  ADCx->SR = ~(uint32_t)itmask;
}



 



 



 

 
#line 19 "..\\Source\\drivers\\drivers.c"

#line 1 "..\\Source\\drivers\\./stm32lib/stm32f10x_usart.c"



















 

 
#line 24 "..\\Source\\drivers\\./stm32lib/stm32f10x_usart.c"
#line 25 "..\\Source\\drivers\\./stm32lib/stm32f10x_usart.c"



 




 



 



 



 





































 



 





 



 



 



 



 



 



 



 







 
void USART_DeInit(USART_TypeDef* USARTx)
{
	unsigned int temp = 0;

   
  ((void)0);

  if (USARTx == ((USART_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3800)))
  {
    RCC_APB2PeriphResetCmd(((uint32_t)0x00004000), ENABLE);
    RCC_APB2PeriphResetCmd(((uint32_t)0x00004000), DISABLE);
  }
  else if (USARTx == ((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4400)))
  {
    RCC_APB1PeriphResetCmd(((uint32_t)0x00020000), ENABLE);
    RCC_APB1PeriphResetCmd(((uint32_t)0x00020000), DISABLE);
  }
  else if (USARTx == ((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4800)))
  {
    RCC_APB1PeriphResetCmd(((uint32_t)0x00040000), ENABLE);
    RCC_APB1PeriphResetCmd(((uint32_t)0x00040000), DISABLE);
  }    
  else if (USARTx == ((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4C00)))
  {
    RCC_APB1PeriphResetCmd(((uint32_t)0x00080000), ENABLE);
    RCC_APB1PeriphResetCmd(((uint32_t)0x00080000), DISABLE);
  }    
  else
  {
    if (USARTx == ((USART_TypeDef *) (((uint32_t)0x40000000) + 0x5000)))
    { 
      RCC_APB1PeriphResetCmd(((uint32_t)0x00100000), ENABLE);
      RCC_APB1PeriphResetCmd(((uint32_t)0x00100000), DISABLE);
    }

	  if (USARTx == ((USART_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x7000)))
	  {
		  
		  temp = *(unsigned int *)(0x40021000 + 0x74);
		  temp |= (1 << 24);
		  *(unsigned int *)(0x40021000 + 0x74) = temp;

		  
		  temp = *(unsigned int *)(0x40021000 + 0x74);
		  temp &= (~(1 << 24));
		  *(unsigned int *)(0x40021000 + 0x74) = temp;


	  }

	  if (USARTx == ((USART_TypeDef *) (((uint32_t)0x40000000) + 0x7800)))
	  { 
		  
		  temp = *(unsigned int *)(0x40021000 + 0x78);
		  temp |= 0x40000000;
		  *(unsigned int *)(0x40021000 + 0x78) = temp;

		  
		  temp = *(unsigned int *)(0x40021000 + 0x78);
		  temp &= ~0x40000000;
		  *(unsigned int *)(0x40021000 + 0x78) = temp;

	  }


     if (USARTx == ((USART_TypeDef *) (((uint32_t)0x40000000) + 0x7C00)))
    { 
		 
		 temp = *(unsigned int *)(0x40021000 + 0x78);
		 temp |= 0x80000000;
		 *(unsigned int *)(0x40021000 + 0x78) = temp;

		
		temp = *(unsigned int *)(0x40021000 + 0x78);
		temp &= ~0x80000000;
		*(unsigned int *)(0x40021000 + 0x78) = temp;
    }

  }
}











 
void USART_Init(USART_TypeDef* USARTx, USART_InitTypeDef* USART_InitStruct)
{
  uint32_t tmpreg = 0x00, apbclock = 0x00;
  uint32_t integerdivider = 0x00;
  uint32_t fractionaldivider = 0x00;
  uint32_t usartxbase = 0;
  RCC_ClocksTypeDef RCC_ClocksStatus;
   
  ((void)0);
  ((void)0);  
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
   
  if (USART_InitStruct->USART_HardwareFlowControl != ((uint16_t)0x0000))
  {
    ((void)0);
  }

  usartxbase = (uint32_t)USARTx;

 
  tmpreg = USARTx->CR2;
   
  tmpreg &= ((uint16_t)0xCFFF);
   
   
  tmpreg |= (uint32_t)USART_InitStruct->USART_StopBits;
  
   
  USARTx->CR2 = (uint16_t)tmpreg;

 
  tmpreg = USARTx->CR1;
   
  tmpreg &= ((uint16_t)0xE9F3);
   
   
   
   
  tmpreg |= (uint32_t)USART_InitStruct->USART_WordLength | USART_InitStruct->USART_Parity |
            USART_InitStruct->USART_Mode;
   
  USARTx->CR1 = (uint16_t)tmpreg;

   
  tmpreg = USARTx->CR3;
   
  tmpreg &= ((uint16_t)0xFCFF);
   
   
  tmpreg |= USART_InitStruct->USART_HardwareFlowControl;
   
  USARTx->CR3 = (uint16_t)tmpreg;

 
   
  RCC_GetClocksFreq(&RCC_ClocksStatus);
  if ((usartxbase == ((((uint32_t)0x40000000) + 0x10000) + 0x3800)) || (usartxbase == ((((uint32_t)0x40000000) + 0x10000) + 0x7000)))
  {
    apbclock = RCC_ClocksStatus.PCLK2_Frequency;
  }
  else
  {
    apbclock = RCC_ClocksStatus.PCLK1_Frequency;
  }
  
   
  if ((USARTx->CR1 & ((u16)0x8000)) != 0)
  {
     
    integerdivider = ((25 * apbclock) / (2 * (USART_InitStruct->USART_BaudRate)));    
  }
  else  
  {
     
    integerdivider = ((25 * apbclock) / (4 * (USART_InitStruct->USART_BaudRate)));    
  }
  tmpreg = (integerdivider / 100) << 4;

   
  fractionaldivider = integerdivider - (100 * (tmpreg >> 4));

   
  if ((USARTx->CR1 & ((u16)0x8000)) != 0)
  {
    tmpreg |= ((((fractionaldivider * 8) + 50) / 100)) & ((uint8_t)0x07);
  }
  else  
  {
    tmpreg |= ((((fractionaldivider * 16) + 50) / 100)) & ((uint8_t)0x0F);
  }
  
   
  USARTx->BRR = (uint16_t)tmpreg;
}






 
void USART_StructInit(USART_InitTypeDef* USART_InitStruct)
{
   
  USART_InitStruct->USART_BaudRate = 9600;
  USART_InitStruct->USART_WordLength = ((uint16_t)0x0000);
  USART_InitStruct->USART_StopBits = ((uint16_t)0x0000);
  USART_InitStruct->USART_Parity = ((uint16_t)0x0000) ;
  USART_InitStruct->USART_Mode = ((uint16_t)0x0004) | ((uint16_t)0x0008);
  USART_InitStruct->USART_HardwareFlowControl = ((uint16_t)0x0000);  
}










 
void USART_ClockInit(USART_TypeDef* USARTx, USART_ClockInitTypeDef* USART_ClockInitStruct)
{
  uint32_t tmpreg = 0x00;
   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  
 
  tmpreg = USARTx->CR2;
   
  tmpreg &= ((uint16_t)0xF0FF);
   
   
   
   
   
  tmpreg |= (uint32_t)USART_ClockInitStruct->USART_Clock | USART_ClockInitStruct->USART_CPOL | 
                 USART_ClockInitStruct->USART_CPHA | USART_ClockInitStruct->USART_LastBit;
   
  USARTx->CR2 = (uint16_t)tmpreg;
}






 
void USART_ClockStructInit(USART_ClockInitTypeDef* USART_ClockInitStruct)
{
   
  USART_ClockInitStruct->USART_Clock = ((uint16_t)0x0000);
  USART_ClockInitStruct->USART_CPOL = ((uint16_t)0x0000);
  USART_ClockInitStruct->USART_CPHA = ((uint16_t)0x0000);
  USART_ClockInitStruct->USART_LastBit = ((uint16_t)0x0000);
}









 
void USART_Cmd(USART_TypeDef* USARTx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  
  if (NewState != DISABLE)
  {
     
    USARTx->CR1 |= ((uint16_t)0x2000);
  }
  else
  {
     
    USARTx->CR1 &= ((uint16_t)0xDFFF);
  }
}



















 
void USART_ITConfig(USART_TypeDef* USARTx, uint16_t USART_IT, FunctionalState NewState)
{
  uint32_t usartreg = 0x00, itpos = 0x00, itmask = 0x00;
  uint32_t usartxbase = 0x00;
   
  ((void)0);
  ((void)0);
  ((void)0);
   
  if (USART_IT == ((uint16_t)0x096A))
  {
    ((void)0);
  }   
  
  usartxbase = (uint32_t)USARTx;

   
  usartreg = (((uint8_t)USART_IT) >> 0x05);

   
  itpos = USART_IT & ((uint16_t)0x001F);
  itmask = (((uint32_t)0x01) << itpos);
    
  if (usartreg == 0x01)  
  {
    usartxbase += 0x0C;
  }
  else if (usartreg == 0x02)  
  {
    usartxbase += 0x10;
  }
  else  
  {
    usartxbase += 0x14; 
  }
  if (NewState != DISABLE)
  {
    *(volatile uint32_t*)usartxbase  |= itmask;
  }
  else
  {
    *(volatile uint32_t*)usartxbase &= ~itmask;
  }
}















 
void USART_DMACmd(USART_TypeDef* USARTx, uint16_t USART_DMAReq, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);  
  ((void)0); 
  if (NewState != DISABLE)
  {
    
 
    USARTx->CR3 |= USART_DMAReq;
  }
  else
  {
    
 
    USARTx->CR3 &= (uint16_t)~USART_DMAReq;
  }
}








 
void USART_SetAddress(USART_TypeDef* USARTx, uint8_t USART_Address)
{
   
  ((void)0);
  ((void)0); 
    
   
  USARTx->CR2 &= ((uint16_t)0xFFF0);
   
  USARTx->CR2 |= USART_Address;
}











 
void USART_WakeUpConfig(USART_TypeDef* USARTx, uint16_t USART_WakeUp)
{
   
  ((void)0);
  ((void)0);
  
  USARTx->CR1 &= ((uint16_t)0xF7FF);
  USARTx->CR1 |= USART_WakeUp;
}









 
void USART_ReceiverWakeUpCmd(USART_TypeDef* USARTx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0); 
  
  if (NewState != DISABLE)
  {
     
    USARTx->CR1 |= ((uint16_t)0x0002);
  }
  else
  {
     
    USARTx->CR1 &= ((uint16_t)0xFFFD);
  }
}











 
void USART_LINBreakDetectLengthConfig(USART_TypeDef* USARTx, uint16_t USART_LINBreakDetectLength)
{
   
  ((void)0);
  ((void)0);
  
  USARTx->CR2 &= ((uint16_t)0xFFDF);
  USARTx->CR2 |= USART_LINBreakDetectLength;  
}









 
void USART_LINCmd(USART_TypeDef* USARTx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  
  if (NewState != DISABLE)
  {
     
    USARTx->CR2 |= ((uint16_t)0x4000);
  }
  else
  {
     
    USARTx->CR2 &= ((uint16_t)0xBFFF);
  }
}








 
void USART_SendData(USART_TypeDef* USARTx, uint16_t Data)
{
   
  ((void)0);
  ((void)0); 
    
   
  USARTx->DR = (Data & (uint16_t)0x01FF);
}







 
uint16_t USART_ReceiveData(USART_TypeDef* USARTx)
{
   
  ((void)0);
  
   
  return (uint16_t)(USARTx->DR & (uint16_t)0x01FF);
}







 
void USART_SendBreak(USART_TypeDef* USARTx)
{
   
  ((void)0);
  
   
  USARTx->CR1 |= ((uint16_t)0x0001);
}







 
void USART_SetGuardTime(USART_TypeDef* USARTx, uint8_t USART_GuardTime)
{    
   
  ((void)0);
  
   
  USARTx->GTPR &= ((uint16_t)0x00FF);
   
  USARTx->GTPR |= (uint16_t)((uint16_t)USART_GuardTime << 0x08);
}









 
void USART_SetPrescaler(USART_TypeDef* USARTx, uint8_t USART_Prescaler)
{ 
   
  ((void)0);
  
   
  USARTx->GTPR &= ((uint16_t)0xFF00);
   
  USARTx->GTPR |= USART_Prescaler;
}








 
void USART_SmartCardCmd(USART_TypeDef* USARTx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  if (NewState != DISABLE)
  {
     
    USARTx->CR3 |= ((uint16_t)0x0020);
  }
  else
  {
     
    USARTx->CR3 &= ((uint16_t)0xFFDF);
  }
}








 
void USART_SmartCardNACKCmd(USART_TypeDef* USARTx, FunctionalState NewState)
{
   
  ((void)0);  
  ((void)0);
  if (NewState != DISABLE)
  {
     
    USARTx->CR3 |= ((uint16_t)0x0010);
  }
  else
  {
     
    USARTx->CR3 &= ((uint16_t)0xFFEF);
  }
}









 
void USART_HalfDuplexCmd(USART_TypeDef* USARTx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  
  if (NewState != DISABLE)
  {
     
    USARTx->CR3 |= ((uint16_t)0x0008);
  }
  else
  {
     
    USARTx->CR3 &= ((uint16_t)0xFFF7);
  }
}













 
void USART_OverSampling8Cmd(USART_TypeDef* USARTx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  
  if (NewState != DISABLE)
  {
     
    USARTx->CR1 |= ((u16)0x8000);
  }
  else
  {
     
    USARTx->CR1 &= ((u16)0x7FFF);
  }
}









 
void USART_OneBitMethodCmd(USART_TypeDef* USARTx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  
  if (NewState != DISABLE)
  {
     
    USARTx->CR3 |= ((u16)0x0800);
  }
  else
  {
     
    USARTx->CR3 &= ((u16)0xF7FF);
  }
}











 
void USART_IrDAConfig(USART_TypeDef* USARTx, uint16_t USART_IrDAMode)
{
   
  ((void)0);
  ((void)0);
    
  USARTx->CR3 &= ((uint16_t)0xFFFB);
  USARTx->CR3 |= USART_IrDAMode;
}









 
void USART_IrDACmd(USART_TypeDef* USARTx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
    
  if (NewState != DISABLE)
  {
     
    USARTx->CR3 |= ((uint16_t)0x0002);
  }
  else
  {
     
    USARTx->CR3 &= ((uint16_t)0xFFFD);
  }
}



















 
FlagStatus USART_GetFlagStatus(USART_TypeDef* USARTx, uint16_t USART_FLAG)
{
  FlagStatus bitstatus = RESET;
   
  ((void)0);
  ((void)0);
   
  if (USART_FLAG == ((uint16_t)0x0200))
  {
    ((void)0);
  }  
  
  if ((USARTx->SR & USART_FLAG) != (uint16_t)RESET)
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }
  return bitstatus;
}


























 
void USART_ClearFlag(USART_TypeDef* USARTx, uint16_t USART_FLAG)
{
   
  ((void)0);
  ((void)0);
   
  if ((USART_FLAG & ((uint16_t)0x0200)) == ((uint16_t)0x0200))
  {
    ((void)0);
  } 
   
  USARTx->SR = (uint16_t)~USART_FLAG;
}



















 
ITStatus USART_GetITStatus(USART_TypeDef* USARTx, uint16_t USART_IT)
{
  uint32_t bitpos = 0x00, itmask = 0x00, usartreg = 0x00;
  ITStatus bitstatus = RESET;
   
  ((void)0);
  ((void)0);
    
  if (USART_IT == ((uint16_t)0x096A))
  {
    ((void)0);
  }   
  
   
  usartreg = (((uint8_t)USART_IT) >> 0x05);
   
  itmask = USART_IT & ((uint16_t)0x001F);
  itmask = (uint32_t)0x01 << itmask;
  
  if (usartreg == 0x01)  
  {
    itmask &= USARTx->CR1;
  }
  else if (usartreg == 0x02)  
  {
    itmask &= USARTx->CR2;
  }
  else  
  {
    itmask &= USARTx->CR3;
  }
  
  bitpos = USART_IT >> 0x08;
  bitpos = (uint32_t)0x01 << bitpos;
  bitpos &= USARTx->SR;
  if ((itmask != (uint16_t)RESET)&&(bitpos != (uint16_t)RESET))
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }
  
  return bitstatus;  
}



























 
void USART_ClearITPendingBit(USART_TypeDef* USARTx, uint16_t USART_IT)
{
  uint16_t bitpos = 0x00, itmask = 0x00;
   
  ((void)0);
  ((void)0);
   
  if (USART_IT == ((uint16_t)0x096A))
  {
    ((void)0);
  }   
  
  bitpos = USART_IT >> 0x08;
  itmask = ((uint16_t)0x01 << (uint16_t)bitpos);
  USARTx->SR = (uint16_t)~itmask;
}


 



 



 

 
#line 21 "..\\Source\\drivers\\drivers.c"

#line 1 "..\\Source\\drivers\\./stm32lib/stm32f10x_spi.c"



















 

 
#line 24 "..\\Source\\drivers\\./stm32lib/stm32f10x_spi.c"
#line 25 "..\\Source\\drivers\\./stm32lib/stm32f10x_spi.c"



 




  



 



  




 

 



 



 


 



 



 



 



 







 



 



 



 



 



 



 



 






 
void SPI_I2S_DeInit(SPI_TypeDef* SPIx)
{
   
  ((void)0);

  if (SPIx == ((SPI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3000)))
  {
     
    RCC_APB2PeriphResetCmd(((uint32_t)0x00001000), ENABLE);
     
    RCC_APB2PeriphResetCmd(((uint32_t)0x00001000), DISABLE);
  }
  else if (SPIx == ((SPI_TypeDef *) (((uint32_t)0x40000000) + 0x3800)))
  {
     
    RCC_APB1PeriphResetCmd(((uint32_t)0x00004000), ENABLE);
     
    RCC_APB1PeriphResetCmd(((uint32_t)0x00004000), DISABLE);
  }
  else
  {
    if (SPIx == ((SPI_TypeDef *) (((uint32_t)0x40000000) + 0x3C00)))
    {
       
      RCC_APB1PeriphResetCmd(((uint32_t)0x00008000), ENABLE);
       
      RCC_APB1PeriphResetCmd(((uint32_t)0x00008000), DISABLE);
    }
  }
}








 
void SPI_Init(SPI_TypeDef* SPIx, SPI_InitTypeDef* SPI_InitStruct)
{
  uint16_t tmpreg = 0;
  
   
  ((void)0);   
  
   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);

 
   
  tmpreg = SPIx->CR1;
   
  tmpreg &= ((uint16_t)0x3040);
  
 
   
   
   
   
   
   
  tmpreg |= (uint16_t)((uint32_t)SPI_InitStruct->SPI_Direction | SPI_InitStruct->SPI_Mode |
                  SPI_InitStruct->SPI_DataSize | SPI_InitStruct->SPI_CPOL |  
                  SPI_InitStruct->SPI_CPHA | SPI_InitStruct->SPI_NSS |  
                  SPI_InitStruct->SPI_BaudRatePrescaler | SPI_InitStruct->SPI_FirstBit);
   
  SPIx->CR1 = tmpreg;
  
   
  SPIx->I2SCFGR &= ((uint16_t)0xF7FF);		

 
   
  SPIx->CRCPR = SPI_InitStruct->SPI_CRCPolynomial;
}















 
void I2S_Init(SPI_TypeDef* SPIx, I2S_InitTypeDef* I2S_InitStruct)
{
  uint16_t tmpreg = 0, i2sdiv = 2, i2sodd = 0, packetlength = 1;
  uint32_t tmp = 0;
  RCC_ClocksTypeDef RCC_Clocks;
  uint32_t sourceclock = 0;
  
   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);  

 
   
  SPIx->I2SCFGR &= ((uint16_t)0xF040); 
  SPIx->I2SPR = 0x0002;
  
   
  tmpreg = SPIx->I2SCFGR;
  
   
  if(I2S_InitStruct->I2S_AudioFreq == ((uint32_t)2))
  {
    i2sodd = (uint16_t)0;
    i2sdiv = (uint16_t)2;   
  }
   
  else
  {
     
    if(I2S_InitStruct->I2S_DataFormat == ((uint16_t)0x0000))
    {
       
      packetlength = 1;
    }
    else
    {
       
      packetlength = 2;
    }

     
    if(((uint32_t)SPIx) == (((uint32_t)0x40000000) + 0x3800))
    {
       
      tmp = ((uint32_t)(0x00020000));
    }
    else 
    {
             
      tmp = ((uint32_t)(0x00040000));
    }

    
 
#line 313 "..\\Source\\drivers\\./stm32lib/stm32f10x_spi.c"
     
    RCC_GetClocksFreq(&RCC_Clocks);      
      
     
    sourceclock = RCC_Clocks.SYSCLK_Frequency;    


     
    if(I2S_InitStruct->I2S_MCLKOutput == ((uint16_t)0x0200))
    {
       
      tmp = (uint16_t)(((((sourceclock / 256) * 10) / I2S_InitStruct->I2S_AudioFreq)) + 5);
    }
    else
    {
       
      tmp = (uint16_t)(((((sourceclock / (32 * packetlength)) *10 ) / I2S_InitStruct->I2S_AudioFreq)) + 5);
    }
    
     
    tmp = tmp / 10;  
      
     
    i2sodd = (uint16_t)(tmp & (uint16_t)0x0001);
   
     
    i2sdiv = (uint16_t)((tmp - i2sodd) / 2);
   
     
    i2sodd = (uint16_t) (i2sodd << 8);
  }
  
   
  if ((i2sdiv < 2) || (i2sdiv > 0xFF))
  {
     
    i2sdiv = 2;
    i2sodd = 0;
  }

   
  SPIx->I2SPR = (uint16_t)(i2sdiv | (uint16_t)(i2sodd | (uint16_t)I2S_InitStruct->I2S_MCLKOutput));  
 
   
  tmpreg |= (uint16_t)(((uint16_t)0x0800) | (uint16_t)(I2S_InitStruct->I2S_Mode |                   (uint16_t)(I2S_InitStruct->I2S_Standard | (uint16_t)(I2S_InitStruct->I2S_DataFormat |                   (uint16_t)I2S_InitStruct->I2S_CPOL))));


 
     
  SPIx->I2SCFGR = tmpreg;   
}





 
void SPI_StructInit(SPI_InitTypeDef* SPI_InitStruct)
{
 
   
  SPI_InitStruct->SPI_Direction = ((uint16_t)0x0000);
   
  SPI_InitStruct->SPI_Mode = ((uint16_t)0x0000);
   
  SPI_InitStruct->SPI_DataSize = ((uint16_t)0x0000);
   
  SPI_InitStruct->SPI_CPOL = ((uint16_t)0x0000);
   
  SPI_InitStruct->SPI_CPHA = ((uint16_t)0x0000);
   
  SPI_InitStruct->SPI_NSS = ((uint16_t)0x0000);
   
  SPI_InitStruct->SPI_BaudRatePrescaler = ((uint16_t)0x0000);
   
  SPI_InitStruct->SPI_FirstBit = ((uint16_t)0x0000);
   
  SPI_InitStruct->SPI_CRCPolynomial = 7;
}





 
void I2S_StructInit(I2S_InitTypeDef* I2S_InitStruct)
{
 
   
  I2S_InitStruct->I2S_Mode = ((uint16_t)0x0000);
  
   
  I2S_InitStruct->I2S_Standard = ((uint16_t)0x0000);
  
   
  I2S_InitStruct->I2S_DataFormat = ((uint16_t)0x0000);
  
   
  I2S_InitStruct->I2S_MCLKOutput = ((uint16_t)0x0000);
  
   
  I2S_InitStruct->I2S_AudioFreq = ((uint32_t)2);
  
   
  I2S_InitStruct->I2S_CPOL = ((uint16_t)0x0000);
}







 
void SPI_Cmd(SPI_TypeDef* SPIx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  if (NewState != DISABLE)
  {
     
    SPIx->CR1 |= ((uint16_t)0x0040);
  }
  else
  {
     
    SPIx->CR1 &= ((uint16_t)0xFFBF);
  }
}







 
void I2S_Cmd(SPI_TypeDef* SPIx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  if (NewState != DISABLE)
  {
     
    SPIx->I2SCFGR |= ((uint16_t)0x0400);
  }
  else
  {
     
    SPIx->I2SCFGR &= ((uint16_t)0xFBFF);
  }
}














 
void SPI_I2S_ITConfig(SPI_TypeDef* SPIx, uint8_t SPI_I2S_IT, FunctionalState NewState)
{
  uint16_t itpos = 0, itmask = 0 ;
   
  ((void)0);
  ((void)0);
  ((void)0);

   
  itpos = SPI_I2S_IT >> 4;

   
  itmask = (uint16_t)1 << (uint16_t)itpos;

  if (NewState != DISABLE)
  {
     
    SPIx->CR2 |= itmask;
  }
  else
  {
     
    SPIx->CR2 &= (uint16_t)~itmask;
  }
}













 
void SPI_I2S_DMACmd(SPI_TypeDef* SPIx, uint16_t SPI_I2S_DMAReq, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  ((void)0);
  if (NewState != DISABLE)
  {
     
    SPIx->CR2 |= SPI_I2S_DMAReq;
  }
  else
  {
     
    SPIx->CR2 &= (uint16_t)~SPI_I2S_DMAReq;
  }
}








 
void SPI_I2S_SendData(SPI_TypeDef* SPIx, uint16_t Data)
{
   
  ((void)0);
  
   
  SPIx->DR = Data;
}







 
uint16_t SPI_I2S_ReceiveData(SPI_TypeDef* SPIx)
{
   
  ((void)0);
  
   
  return SPIx->DR;
}









 
void SPI_NSSInternalSoftwareConfig(SPI_TypeDef* SPIx, uint16_t SPI_NSSInternalSoft)
{
   
  ((void)0);
  ((void)0);
  if (SPI_NSSInternalSoft != ((uint16_t)0xFEFF))
  {
     
    SPIx->CR1 |= ((uint16_t)0x0100);
  }
  else
  {
     
    SPIx->CR1 &= ((uint16_t)0xFEFF);
  }
}







 
void SPI_SSOutputCmd(SPI_TypeDef* SPIx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  if (NewState != DISABLE)
  {
     
    SPIx->CR2 |= ((uint16_t)0x0004);
  }
  else
  {
     
    SPIx->CR2 &= ((uint16_t)0xFFFB);
  }
}









 
void SPI_DataSizeConfig(SPI_TypeDef* SPIx, uint16_t SPI_DataSize)
{
   
  ((void)0);
  ((void)0);
   
  SPIx->CR1 &= (uint16_t)~((uint16_t)0x0800);
   
  SPIx->CR1 |= SPI_DataSize;
}





 
void SPI_TransmitCRC(SPI_TypeDef* SPIx)
{
   
  ((void)0);
  
   
  SPIx->CR1 |= ((uint16_t)0x1000);
}







 
void SPI_CalculateCRC(SPI_TypeDef* SPIx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  if (NewState != DISABLE)
  {
     
    SPIx->CR1 |= ((uint16_t)0x2000);
  }
  else
  {
     
    SPIx->CR1 &= ((uint16_t)0xDFFF);
  }
}









 
uint16_t SPI_GetCRC(SPI_TypeDef* SPIx, uint8_t SPI_CRC)
{
  uint16_t crcreg = 0;
   
  ((void)0);
  ((void)0);
  if (SPI_CRC != ((uint8_t)0x01))
  {
     
    crcreg = SPIx->TXCRCR;
  }
  else
  {
     
    crcreg = SPIx->RXCRCR;
  }
   
  return crcreg;
}





 
uint16_t SPI_GetCRCPolynomial(SPI_TypeDef* SPIx)
{
   
  ((void)0);
  
   
  return SPIx->CRCPR;
}









 
void SPI_BiDirectionalLineConfig(SPI_TypeDef* SPIx, uint16_t SPI_Direction)
{
   
  ((void)0);
  ((void)0);
  if (SPI_Direction == ((uint16_t)0x4000))
  {
     
    SPIx->CR1 |= ((uint16_t)0x4000);
  }
  else
  {
     
    SPIx->CR1 &= ((uint16_t)0xBFFF);
  }
}

















 
FlagStatus SPI_I2S_GetFlagStatus(SPI_TypeDef* SPIx, uint16_t SPI_I2S_FLAG)
{
  FlagStatus bitstatus = RESET;
   
  ((void)0);
  ((void)0);
   
  if ((SPIx->SR & SPI_I2S_FLAG) != (uint16_t)RESET)
  {
     
    bitstatus = SET;
  }
  else
  {
     
    bitstatus = RESET;
  }
   
  return  bitstatus;
}

















 
void SPI_I2S_ClearFlag(SPI_TypeDef* SPIx, uint16_t SPI_I2S_FLAG)
{
   
  ((void)0);
  ((void)0);
    
     
    SPIx->SR = (uint16_t)~SPI_I2S_FLAG;
}















 
ITStatus SPI_I2S_GetITStatus(SPI_TypeDef* SPIx, uint8_t SPI_I2S_IT)
{
  ITStatus bitstatus = RESET;
  uint16_t itpos = 0, itmask = 0, enablestatus = 0;

   
  ((void)0);
  ((void)0);

   
  itpos = 0x01 << (SPI_I2S_IT & 0x0F);

   
  itmask = SPI_I2S_IT >> 4;

   
  itmask = 0x01 << itmask;

   
  enablestatus = (SPIx->CR2 & itmask) ;

   
  if (((SPIx->SR & itpos) != (uint16_t)RESET) && enablestatus)
  {
     
    bitstatus = SET;
  }
  else
  {
     
    bitstatus = RESET;
  }
   
  return bitstatus;
}


















 
void SPI_I2S_ClearITPendingBit(SPI_TypeDef* SPIx, uint8_t SPI_I2S_IT)
{
  uint16_t itpos = 0;
   
  ((void)0);
  ((void)0);

   
  itpos = 0x01 << (SPI_I2S_IT & 0x0F);

   
  SPIx->SR = (uint16_t)~itpos;
}


  



  



  

 
#line 23 "..\\Source\\drivers\\drivers.c"

#line 1 "..\\Source\\drivers\\./stm32lib/stm32f10x_flash.c"



















 

 
#line 24 "..\\Source\\drivers\\./stm32lib/stm32f10x_flash.c"



 




  



 



  



  

 




 


 
#line 67 "..\\Source\\drivers\\./stm32lib/stm32f10x_flash.c"

 
#line 75 "..\\Source\\drivers\\./stm32lib/stm32f10x_flash.c"

 




 


    




  



 



  



 



  



 
  


 



 



























































































































 











 
void FLASH_SetLatency(uint32_t FLASH_Latency)
{
  uint32_t tmpreg = 0;
  
   
  ((void)0);
  
   
  tmpreg = ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->ACR;  
  
   
  tmpreg &= ((uint32_t)0x00000038);
  tmpreg |= FLASH_Latency;
  
   
  ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->ACR = tmpreg;
}









 
void FLASH_HalfCycleAccessCmd(uint32_t FLASH_HalfCycleAccess)
{
   
  ((void)0);
  
   
  ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->ACR &= ((uint32_t)0xFFFFFFF7);
  ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->ACR |= FLASH_HalfCycleAccess;
}









 
void FLASH_PrefetchBufferCmd(uint32_t FLASH_PrefetchBuffer)
{
   
  ((void)0);
  
   
  ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->ACR &= ((uint32_t)0xFFFFFFEF);
  ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->ACR |= FLASH_PrefetchBuffer;
}









 
void FLASH_Unlock(void)
{
   
  ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->KEYR = ((uint32_t)0x45670123);
  ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->KEYR = ((uint32_t)0xCDEF89AB);






}








 
void FLASH_UnlockBank1(void)
{
   
  ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->KEYR = ((uint32_t)0x45670123);
  ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->KEYR = ((uint32_t)0xCDEF89AB);
}

#line 362 "..\\Source\\drivers\\./stm32lib/stm32f10x_flash.c"









 
void FLASH_Lock(void)
{
   
  ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR |= ((uint32_t)0x00000080);





}









 
void FLASH_LockBank1(void)
{
   
  ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR |= ((uint32_t)0x00000080);
}

#line 411 "..\\Source\\drivers\\./stm32lib/stm32f10x_flash.c"







 
FLASH_Status FLASH_ErasePage(uint32_t Page_Address)
{
  FLASH_Status status = FLASH_COMPLETE;
   
  ((void)0);

#line 463 "..\\Source\\drivers\\./stm32lib/stm32f10x_flash.c"
   
  status = FLASH_WaitForLastOperation(((uint32_t)0x000B0000));
  
  if(status == FLASH_COMPLETE)
  { 
     
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR|= ((uint32_t)0x00000002);
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->AR = Page_Address; 
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR|= ((uint32_t)0x00000040);
    
     
    status = FLASH_WaitForLastOperation(((uint32_t)0x000B0000));
    
     
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR &= ((uint32_t)0x00001FFD);
  }


   
  return status;
}







 
FLASH_Status FLASH_EraseAllPages(void)
{
  FLASH_Status status = FLASH_COMPLETE;

#line 525 "..\\Source\\drivers\\./stm32lib/stm32f10x_flash.c"
   
  status = FLASH_WaitForLastOperation(((uint32_t)0x000B0000));
  if(status == FLASH_COMPLETE)
  {
     
     ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR |= ((uint32_t)0x00000004);
     ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR |= ((uint32_t)0x00000040);
    
     
    status = FLASH_WaitForLastOperation(((uint32_t)0x000B0000));

     
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR &= ((uint32_t)0x00001FFB);
  }


   
  return status;
}










 
FLASH_Status FLASH_EraseAllBank1Pages(void)
{
  FLASH_Status status = FLASH_COMPLETE;
   
  status = FLASH_WaitForLastBank1Operation(((uint32_t)0x000B0000));
  
  if(status == FLASH_COMPLETE)
  {
     
     ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR |= ((uint32_t)0x00000004);
     ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR |= ((uint32_t)0x00000040);
    
     
    status = FLASH_WaitForLastBank1Operation(((uint32_t)0x000B0000));
    
     
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR &= ((uint32_t)0x00001FFB);
  }    
   
  return status;
}

#line 607 "..\\Source\\drivers\\./stm32lib/stm32f10x_flash.c"








 
FLASH_Status FLASH_EraseOptionBytes(void)
{
  uint16_t rdptmp = ((uint16_t)0x00A5);

  FLASH_Status status = FLASH_COMPLETE;

    
  if(FLASH_GetReadOutProtectionStatus() != RESET)
  {
    rdptmp = 0x00;  
  }

   
  status = FLASH_WaitForLastOperation(((uint32_t)0x000B0000));
  if(status == FLASH_COMPLETE)
  {
     
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->OPTKEYR = ((uint32_t)0x45670123);
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->OPTKEYR = ((uint32_t)0xCDEF89AB);
    
     
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR |= ((uint32_t)0x00000020);
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR |= ((uint32_t)0x00000040);
     
    status = FLASH_WaitForLastOperation(((uint32_t)0x000B0000));
    
    if(status == FLASH_COMPLETE)
    {
       
      ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR &= ((uint32_t)0x00001FDF);
       
       
      ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR |= ((uint32_t)0x00000010);
       
      ((OB_TypeDef *) ((uint32_t)0x1FFFF800))->RDP = (uint16_t)rdptmp; 
       
      status = FLASH_WaitForLastOperation(((uint32_t)0x00002000));
 
      if(status != FLASH_TIMEOUT)
      {
         
        ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR &= ((uint32_t)0x00001FEF);
      }
    }
    else
    {
      if (status != FLASH_TIMEOUT)
      {
         
        ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR &= ((uint32_t)0x00001FEF);
      }
    }  
  }
   
  return status;
}








 
FLASH_Status FLASH_ProgramWord(uint32_t Address, uint32_t Data)
{
  FLASH_Status status = FLASH_COMPLETE;
  volatile uint32_t tmp = 0;

   
  ((void)0);

#line 811 "..\\Source\\drivers\\./stm32lib/stm32f10x_flash.c"
   
  status = FLASH_WaitForLastOperation(((uint32_t)0x00002000));
  
  if(status == FLASH_COMPLETE)
  {
    
 
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR |= ((uint32_t)0x00000001);
  
    *(volatile uint16_t*)Address = (uint16_t)Data;
     
    status = FLASH_WaitForLastOperation(((uint32_t)0x00002000));
 
    if(status == FLASH_COMPLETE)
    {
      
 
      tmp = Address + 2;

      *(volatile uint16_t*) tmp = Data >> 16;
    
       
      status = FLASH_WaitForLastOperation(((uint32_t)0x00002000));
        
       
      ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR &= ((uint32_t)0x00001FFE);
    }
    else
    {
       
      ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR &= ((uint32_t)0x00001FFE);
    }
  }         

   
   
  return status;
}








 
FLASH_Status FLASH_ProgramHalfWord(uint32_t Address, uint16_t Data)
{
  FLASH_Status status = FLASH_COMPLETE;
   
  ((void)0);

#line 899 "..\\Source\\drivers\\./stm32lib/stm32f10x_flash.c"
   
  status = FLASH_WaitForLastOperation(((uint32_t)0x00002000));
  
  if(status == FLASH_COMPLETE)
  {
     
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR |= ((uint32_t)0x00000001);
  
    *(volatile uint16_t*)Address = Data;
     
    status = FLASH_WaitForLastOperation(((uint32_t)0x00002000));
    
     
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR &= ((uint32_t)0x00001FFE);
  } 

  
   
  return status;
}









 
FLASH_Status FLASH_ProgramOptionByteData(uint32_t Address, uint8_t Data)
{
  FLASH_Status status = FLASH_COMPLETE;
   
  ((void)0);
  status = FLASH_WaitForLastOperation(((uint32_t)0x00002000));

  if(status == FLASH_COMPLETE)
  {
     
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->OPTKEYR = ((uint32_t)0x45670123);
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->OPTKEYR = ((uint32_t)0xCDEF89AB);
     
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR |= ((uint32_t)0x00000010); 
    *(volatile uint16_t*)Address = Data;
    
     
    status = FLASH_WaitForLastOperation(((uint32_t)0x00002000));
    if(status != FLASH_TIMEOUT)
    {
       
      ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR &= ((uint32_t)0x00001FEF);
    }
  }
   
  return status;
}


















 
FLASH_Status FLASH_EnableWriteProtection(uint32_t FLASH_Pages)
{
  uint16_t WRP0_Data = 0xFFFF, WRP1_Data = 0xFFFF, WRP2_Data = 0xFFFF, WRP3_Data = 0xFFFF;
  
  FLASH_Status status = FLASH_COMPLETE;
  
   
  ((void)0);
  
  FLASH_Pages = (uint32_t)(~FLASH_Pages);
  WRP0_Data = (uint16_t)(FLASH_Pages & ((uint32_t)0x000000FF));
  WRP1_Data = (uint16_t)((FLASH_Pages & ((uint32_t)0x0000FF00)) >> 8);
  WRP2_Data = (uint16_t)((FLASH_Pages & ((uint32_t)0x00FF0000)) >> 16);
  WRP3_Data = (uint16_t)((FLASH_Pages & ((uint32_t)0xFF000000)) >> 24);
  
   
  status = FLASH_WaitForLastOperation(((uint32_t)0x00002000));
  
  if(status == FLASH_COMPLETE)
  {
     
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->OPTKEYR = ((uint32_t)0x45670123);
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->OPTKEYR = ((uint32_t)0xCDEF89AB);
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR |= ((uint32_t)0x00000010);
    if(WRP0_Data != 0xFF)
    {
      ((OB_TypeDef *) ((uint32_t)0x1FFFF800))->WRP0 = WRP0_Data;
      
       
      status = FLASH_WaitForLastOperation(((uint32_t)0x00002000));
    }
    if((status == FLASH_COMPLETE) && (WRP1_Data != 0xFF))
    {
      ((OB_TypeDef *) ((uint32_t)0x1FFFF800))->WRP1 = WRP1_Data;
      
       
      status = FLASH_WaitForLastOperation(((uint32_t)0x00002000));
    }
    if((status == FLASH_COMPLETE) && (WRP2_Data != 0xFF))
    {
      ((OB_TypeDef *) ((uint32_t)0x1FFFF800))->WRP2 = WRP2_Data;
      
       
      status = FLASH_WaitForLastOperation(((uint32_t)0x00002000));
    }
    
    if((status == FLASH_COMPLETE)&& (WRP3_Data != 0xFF))
    {
      ((OB_TypeDef *) ((uint32_t)0x1FFFF800))->WRP3 = WRP3_Data;
     
       
      status = FLASH_WaitForLastOperation(((uint32_t)0x00002000));
    }
          
    if(status != FLASH_TIMEOUT)
    {
       
      ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR &= ((uint32_t)0x00001FEF);
    }
  } 
   
  return status;       
}










 
FLASH_Status FLASH_ReadOutProtection(FunctionalState NewState)
{
  FLASH_Status status = FLASH_COMPLETE;
   
  ((void)0);
  status = FLASH_WaitForLastOperation(((uint32_t)0x000B0000));
  if(status == FLASH_COMPLETE)
  {
     
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->OPTKEYR = ((uint32_t)0x45670123);
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->OPTKEYR = ((uint32_t)0xCDEF89AB);
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR |= ((uint32_t)0x00000020);
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR |= ((uint32_t)0x00000040);
     
    status = FLASH_WaitForLastOperation(((uint32_t)0x000B0000));
    if(status == FLASH_COMPLETE)
    {
       
      ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR &= ((uint32_t)0x00001FDF);
       
      ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR |= ((uint32_t)0x00000010); 
      if(NewState != DISABLE)
      {
        ((OB_TypeDef *) ((uint32_t)0x1FFFF800))->RDP = 0x00;
      }
      else
      {
        ((OB_TypeDef *) ((uint32_t)0x1FFFF800))->RDP = ((uint16_t)0x00A5);  
      }
       
      status = FLASH_WaitForLastOperation(((uint32_t)0x000B0000)); 
    
      if(status != FLASH_TIMEOUT)
      {
         
        ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR &= ((uint32_t)0x00001FEF);
      }
    }
    else 
    {
      if(status != FLASH_TIMEOUT)
      {
         
        ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR &= ((uint32_t)0x00001FDF);
      }
    }
  }
   
  return status;       
}


















 
FLASH_Status FLASH_UserOptionByteConfig(uint16_t OB_IWDG, uint16_t OB_STOP, uint16_t OB_STDBY)
{
  FLASH_Status status = FLASH_COMPLETE; 

   
  ((void)0);
  ((void)0);
  ((void)0);

   
  ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->OPTKEYR = ((uint32_t)0x45670123);
  ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->OPTKEYR = ((uint32_t)0xCDEF89AB);
  
   
  status = FLASH_WaitForLastOperation(((uint32_t)0x00002000));
  
  if(status == FLASH_COMPLETE)
  {  
     
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR |= ((uint32_t)0x00000010); 
           
    ((OB_TypeDef *) ((uint32_t)0x1FFFF800))->USER = OB_IWDG | (uint16_t)(OB_STOP | (uint16_t)(OB_STDBY | ((uint16_t)0xF8))); 
  
     
    status = FLASH_WaitForLastOperation(((uint32_t)0x00002000));
    if(status != FLASH_TIMEOUT)
    {
       
      ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR &= ((uint32_t)0x00001FEF);
    }
  }    
   
  return status;
}

#line 1208 "..\\Source\\drivers\\./stm32lib/stm32f10x_flash.c"







 
uint32_t FLASH_GetUserOptionByte(void)
{
   
  return (uint32_t)(((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->OBR >> 2);
}






 
uint32_t FLASH_GetWriteProtectionOptionByte(void)
{
   
  return (uint32_t)(((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->WRPR);
}






 
FlagStatus FLASH_GetReadOutProtectionStatus(void)
{
  FlagStatus readoutstatus = RESET;
  if ((((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->OBR & ((uint32_t)0x00000002)) != (uint32_t)RESET)
  {
    readoutstatus = SET;
  }
  else
  {
    readoutstatus = RESET;
  }
  return readoutstatus;
}






 
FlagStatus FLASH_GetPrefetchBufferStatus(void)
{
  FlagStatus bitstatus = RESET;
  
  if ((((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->ACR & ((uint32_t)0x00000020)) != (uint32_t)RESET)
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }
   
  return bitstatus; 
}














 
void FLASH_ITConfig(uint32_t FLASH_IT, FunctionalState NewState)
{
#line 1324 "..\\Source\\drivers\\./stm32lib/stm32f10x_flash.c"
   
  ((void)0); 
  ((void)0);

  if(NewState != DISABLE)
  {
     
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR |= FLASH_IT;
  }
  else
  {
     
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->CR &= ~(uint32_t)FLASH_IT;
  }

}
















 
FlagStatus FLASH_GetFlagStatus(uint32_t FLASH_FLAG)
{
  FlagStatus bitstatus = RESET;

#line 1401 "..\\Source\\drivers\\./stm32lib/stm32f10x_flash.c"
   
  ((void)0) ;
  if(FLASH_FLAG == ((uint32_t)0x00000001)) 
  {
    if((((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->OBR & ((uint32_t)0x00000001)) != (uint32_t)RESET)
    {
      bitstatus = SET;
    }
    else
    {
      bitstatus = RESET;
    }
  }
  else
  {
   if((((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->SR & FLASH_FLAG) != (uint32_t)RESET)
    {
      bitstatus = SET;
    }
    else
    {
      bitstatus = RESET;
    }
  }


   
  return bitstatus;
}












 
void FLASH_ClearFlag(uint32_t FLASH_FLAG)
{
#line 1461 "..\\Source\\drivers\\./stm32lib/stm32f10x_flash.c"
   
  ((void)0) ;
  
   
  ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->SR = FLASH_FLAG;

}








 
FLASH_Status FLASH_GetStatus(void)
{
  FLASH_Status flashstatus = FLASH_COMPLETE;
  
  if((((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->SR & ((uint32_t)0x00000001)) == ((uint32_t)0x00000001)) 
  {
    flashstatus = FLASH_BUSY;
  }
  else 
  {  
    if((((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->SR & ((uint32_t)0x00000004)) != 0)
    { 
      flashstatus = FLASH_ERROR_PG;
    }
    else 
    {
      if((((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->SR & ((uint32_t)0x00000010)) != 0 )
      {
        flashstatus = FLASH_ERROR_WRP;
      }
      else
      {
        flashstatus = FLASH_COMPLETE;
      }
    }
  }
   
  return flashstatus;
}








 
FLASH_Status FLASH_GetBank1Status(void)
{
  FLASH_Status flashstatus = FLASH_COMPLETE;
  
  if((((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->SR & ((uint32_t)0x00000001)) == ((uint32_t)0x00000001)) 
  {
    flashstatus = FLASH_BUSY;
  }
  else 
  {  
    if((((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->SR & ((uint32_t)0x00000004)) != 0)
    { 
      flashstatus = FLASH_ERROR_PG;
    }
    else 
    {
      if((((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->SR & ((uint32_t)0x00000010)) != 0 )
      {
        flashstatus = FLASH_ERROR_WRP;
      }
      else
      {
        flashstatus = FLASH_COMPLETE;
      }
    }
  }
   
  return flashstatus;
}

#line 1583 "..\\Source\\drivers\\./stm32lib/stm32f10x_flash.c"











 
FLASH_Status FLASH_WaitForLastOperation(uint32_t Timeout)
{ 
  FLASH_Status status = FLASH_COMPLETE;
   
   
  status = FLASH_GetBank1Status();
   
  while((status == FLASH_BUSY) && (Timeout != 0x00))
  {
    status = FLASH_GetBank1Status();
    Timeout--;
  }
  if(Timeout == 0x00 )
  {
    status = FLASH_TIMEOUT;
  }
   
  return status;
}








 
FLASH_Status FLASH_WaitForLastBank1Operation(uint32_t Timeout)
{ 
  FLASH_Status status = FLASH_COMPLETE;
   
   
  status = FLASH_GetBank1Status();
   
  while((status == ((uint32_t)0x00000001)) && (Timeout != 0x00))
  {
    status = FLASH_GetBank1Status();
    Timeout--;
  }
  if(Timeout == 0x00 )
  {
    status = FLASH_TIMEOUT;
  }
   
  return status;
}

#line 1671 "..\\Source\\drivers\\./stm32lib/stm32f10x_flash.c"



 



 



 

 
#line 25 "..\\Source\\drivers\\drivers.c"

#line 1 "..\\Source\\drivers\\./stm32lib/stm32f10x_exti.c"



















 

 
#line 24 "..\\Source\\drivers\\./stm32lib/stm32f10x_exti.c"



 




 



 



 



 





 



 



 



 



 



 



 



 





 
void EXTI_DeInit(void)
{
  ((EXTI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0400))->IMR = 0x00000000;
  ((EXTI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0400))->EMR = 0x00000000;
  ((EXTI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0400))->RTSR = 0x00000000; 
  ((EXTI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0400))->FTSR = 0x00000000; 
  ((EXTI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0400))->PR = 0x000FFFFF;
}







 
void EXTI_Init(EXTI_InitTypeDef* EXTI_InitStruct)
{
  uint32_t tmp = 0;

   
  ((void)0);
  ((void)0);
  ((void)0);  
  ((void)0);

  tmp = (uint32_t)((((uint32_t)0x40000000) + 0x10000) + 0x0400);
     
  if (EXTI_InitStruct->EXTI_LineCmd != DISABLE)
  {
     
    ((EXTI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0400))->IMR &= ~EXTI_InitStruct->EXTI_Line;
    ((EXTI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0400))->EMR &= ~EXTI_InitStruct->EXTI_Line;
    
    tmp += EXTI_InitStruct->EXTI_Mode;

    *(volatile uint32_t *) tmp |= EXTI_InitStruct->EXTI_Line;

     
    ((EXTI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0400))->RTSR &= ~EXTI_InitStruct->EXTI_Line;
    ((EXTI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0400))->FTSR &= ~EXTI_InitStruct->EXTI_Line;
    
     
    if (EXTI_InitStruct->EXTI_Trigger == EXTI_Trigger_Rising_Falling)
    {
       
      ((EXTI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0400))->RTSR |= EXTI_InitStruct->EXTI_Line;
      ((EXTI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0400))->FTSR |= EXTI_InitStruct->EXTI_Line;
    }
    else
    {
      tmp = (uint32_t)((((uint32_t)0x40000000) + 0x10000) + 0x0400);
      tmp += EXTI_InitStruct->EXTI_Trigger;

      *(volatile uint32_t *) tmp |= EXTI_InitStruct->EXTI_Line;
    }
  }
  else
  {
    tmp += EXTI_InitStruct->EXTI_Mode;

     
    *(volatile uint32_t *) tmp &= ~EXTI_InitStruct->EXTI_Line;
  }
}






 
void EXTI_StructInit(EXTI_InitTypeDef* EXTI_InitStruct)
{
  EXTI_InitStruct->EXTI_Line = ((uint32_t)0x00000);
  EXTI_InitStruct->EXTI_Mode = EXTI_Mode_Interrupt;
  EXTI_InitStruct->EXTI_Trigger = EXTI_Trigger_Falling;
  EXTI_InitStruct->EXTI_LineCmd = DISABLE;
}






 
void EXTI_GenerateSWInterrupt(uint32_t EXTI_Line)
{
   
  ((void)0);
  
  ((EXTI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0400))->SWIER |= EXTI_Line;
}







 
FlagStatus EXTI_GetFlagStatus(uint32_t EXTI_Line)
{
  FlagStatus bitstatus = RESET;
   
  ((void)0);
  
  if ((((EXTI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0400))->PR & EXTI_Line) != (uint32_t)RESET)
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }
  return bitstatus;
}






 
void EXTI_ClearFlag(uint32_t EXTI_Line)
{
   
  ((void)0);
  
  ((EXTI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0400))->PR = EXTI_Line;
}







 
ITStatus EXTI_GetITStatus(uint32_t EXTI_Line)
{
  ITStatus bitstatus = RESET;
  uint32_t enablestatus = 0;
   
  ((void)0);
  
  enablestatus =  ((EXTI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0400))->IMR & EXTI_Line;
  if (((((EXTI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0400))->PR & EXTI_Line) != (uint32_t)RESET) && (enablestatus != (uint32_t)RESET))
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }
  return bitstatus;
}






 
void EXTI_ClearITPendingBit(uint32_t EXTI_Line)
{
   
  ((void)0);
  
  ((EXTI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0400))->PR = EXTI_Line;
}



 



 



 

 
#line 27 "..\\Source\\drivers\\drivers.c"

#line 1 "..\\Source\\drivers\\./stm32lib/stm32f10x_can.c"



















 

 
#line 24 "..\\Source\\drivers\\./stm32lib/stm32f10x_can.c"
#line 25 "..\\Source\\drivers\\./stm32lib/stm32f10x_can.c"



 




  



 



 



 

 



 


 


 

 




 

 

 

 

 


 









 



 



 



 



 



 

static ITStatus CheckITStatus(uint32_t CAN_Reg, uint32_t It_Bit);



 



 





 
void CAN_DeInit(CAN_TypeDef* CANx)
{
   
  ((void)0);
 
  if (CANx == ((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400)))
  {
     
    RCC_APB1PeriphResetCmd(((uint32_t)0x02000000), ENABLE);
     
    RCC_APB1PeriphResetCmd(((uint32_t)0x02000000), DISABLE);
  }
  else
  {  
     
    RCC_APB1PeriphResetCmd(((uint32_t)0x04000000), ENABLE);
     
    RCC_APB1PeriphResetCmd(((uint32_t)0x04000000), DISABLE);
  }
}











 
uint8_t CAN_Init(CAN_TypeDef* CANx, CAN_InitTypeDef* CAN_InitStruct)
{
  uint8_t InitStatus = ((uint8_t)0x00);
  uint32_t wait_ack = 0x00000000;
   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);

   
  CANx->MCR &= (~(uint32_t)((uint16_t)0x0002));

   
  CANx->MCR |= ((uint16_t)0x0001) ;

   
  while (((CANx->MSR & ((uint16_t)0x0001)) != ((uint16_t)0x0001)) && (wait_ack != ((uint32_t)0x0000FFFF)))
  {
    wait_ack++;
  }

   
  if ((CANx->MSR & ((uint16_t)0x0001)) != ((uint16_t)0x0001))
  {
    InitStatus = ((uint8_t)0x00);
  }
  else 
  {
     
    if (CAN_InitStruct->CAN_TTCM == ENABLE)
    {
      CANx->MCR |= ((uint16_t)0x0080);
    }
    else
    {
      CANx->MCR &= ~(uint32_t)((uint16_t)0x0080);
    }

     
    if (CAN_InitStruct->CAN_ABOM == ENABLE)
    {
      CANx->MCR |= ((uint16_t)0x0040);
    }
    else
    {
      CANx->MCR &= ~(uint32_t)((uint16_t)0x0040);
    }

     
    if (CAN_InitStruct->CAN_AWUM == ENABLE)
    {
      CANx->MCR |= ((uint16_t)0x0020);
    }
    else
    {
      CANx->MCR &= ~(uint32_t)((uint16_t)0x0020);
    }

     
    if (CAN_InitStruct->CAN_NART == ENABLE)
    {
      CANx->MCR |= ((uint16_t)0x0010);
    }
    else
    {
      CANx->MCR &= ~(uint32_t)((uint16_t)0x0010);
    }

     
    if (CAN_InitStruct->CAN_RFLM == ENABLE)
    {
      CANx->MCR |= ((uint16_t)0x0008);
    }
    else
    {
      CANx->MCR &= ~(uint32_t)((uint16_t)0x0008);
    }

     
    if (CAN_InitStruct->CAN_TXFP == ENABLE)
    {
      CANx->MCR |= ((uint16_t)0x0004);
    }
    else
    {
      CANx->MCR &= ~(uint32_t)((uint16_t)0x0004);
    }

     
    CANx->BTR = (uint32_t)((uint32_t)CAN_InitStruct->CAN_Mode << 30) |                 ((uint32_t)CAN_InitStruct->CAN_SJW << 24) |                 ((uint32_t)CAN_InitStruct->CAN_BS1 << 16) |                 ((uint32_t)CAN_InitStruct->CAN_BS2 << 20) |                ((uint32_t)CAN_InitStruct->CAN_Prescaler - 1);





     
    CANx->MCR &= ~(uint32_t)((uint16_t)0x0001);

    
   wait_ack = 0;

   while (((CANx->MSR & ((uint16_t)0x0001)) == ((uint16_t)0x0001)) && (wait_ack != ((uint32_t)0x0000FFFF)))
   {
     wait_ack++;
   }

     
    if ((CANx->MSR & ((uint16_t)0x0001)) == ((uint16_t)0x0001))
    {
      InitStatus = ((uint8_t)0x00);
    }
    else
    {
      InitStatus = ((uint8_t)0x01) ;
    }
  }

   
  return InitStatus;
}








 
void CAN_FilterInit(CAN_FilterInitTypeDef* CAN_FilterInitStruct)
{
  uint32_t filter_number_bit_pos = 0;
   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);

  filter_number_bit_pos = ((uint32_t)1) << CAN_FilterInitStruct->CAN_FilterNumber;

   
  ((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400))->FMR |= ((uint32_t)0x00000001);

   
  ((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400))->FA1R &= ~(uint32_t)filter_number_bit_pos;

   
  if (CAN_FilterInitStruct->CAN_FilterScale == ((uint8_t)0x00))
  {
     
    ((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400))->FS1R &= ~(uint32_t)filter_number_bit_pos;

     
     
    ((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400))->sFilterRegister[CAN_FilterInitStruct->CAN_FilterNumber].FR1 = 
    ((0x0000FFFF & (uint32_t)CAN_FilterInitStruct->CAN_FilterMaskIdLow) << 16) |
        (0x0000FFFF & (uint32_t)CAN_FilterInitStruct->CAN_FilterIdLow);

     
     
    ((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400))->sFilterRegister[CAN_FilterInitStruct->CAN_FilterNumber].FR2 = 
    ((0x0000FFFF & (uint32_t)CAN_FilterInitStruct->CAN_FilterMaskIdHigh) << 16) |
        (0x0000FFFF & (uint32_t)CAN_FilterInitStruct->CAN_FilterIdHigh);
  }

  if (CAN_FilterInitStruct->CAN_FilterScale == ((uint8_t)0x01))
  {
     
    ((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400))->FS1R |= filter_number_bit_pos;
     
    ((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400))->sFilterRegister[CAN_FilterInitStruct->CAN_FilterNumber].FR1 = 
    ((0x0000FFFF & (uint32_t)CAN_FilterInitStruct->CAN_FilterIdHigh) << 16) |
        (0x0000FFFF & (uint32_t)CAN_FilterInitStruct->CAN_FilterIdLow);
     
    ((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400))->sFilterRegister[CAN_FilterInitStruct->CAN_FilterNumber].FR2 = 
    ((0x0000FFFF & (uint32_t)CAN_FilterInitStruct->CAN_FilterMaskIdHigh) << 16) |
        (0x0000FFFF & (uint32_t)CAN_FilterInitStruct->CAN_FilterMaskIdLow);
  }

   
  if (CAN_FilterInitStruct->CAN_FilterMode == ((uint8_t)0x00))
  {
     
    ((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400))->FM1R &= ~(uint32_t)filter_number_bit_pos;
  }
  else  
  {
     
    ((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400))->FM1R |= (uint32_t)filter_number_bit_pos;
  }

   
  if (CAN_FilterInitStruct->CAN_FilterFIFOAssignment == ((uint8_t)0x00))
  {
     
    ((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400))->FFA1R &= ~(uint32_t)filter_number_bit_pos;
  }

  if (CAN_FilterInitStruct->CAN_FilterFIFOAssignment == ((uint8_t)0x01))
  {
     
    ((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400))->FFA1R |= (uint32_t)filter_number_bit_pos;
  }
  
   
  if (CAN_FilterInitStruct->CAN_FilterActivation == ENABLE)
  {
    ((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400))->FA1R |= filter_number_bit_pos;
  }

   
  ((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400))->FMR &= ~((uint32_t)0x00000001);
}






 
void CAN_StructInit(CAN_InitTypeDef* CAN_InitStruct)
{
   
  
   
  CAN_InitStruct->CAN_TTCM = DISABLE;
  
   
  CAN_InitStruct->CAN_ABOM = DISABLE;
  
   
  CAN_InitStruct->CAN_AWUM = DISABLE;
  
   
  CAN_InitStruct->CAN_NART = DISABLE;
  
   
  CAN_InitStruct->CAN_RFLM = DISABLE;
  
   
  CAN_InitStruct->CAN_TXFP = DISABLE;
  
   
  CAN_InitStruct->CAN_Mode = ((uint8_t)0x00);
  
   
  CAN_InitStruct->CAN_SJW = ((uint8_t)0x00);
  
   
  CAN_InitStruct->CAN_BS1 = ((uint8_t)0x03);
  
   
  CAN_InitStruct->CAN_BS2 = ((uint8_t)0x02);
  
   
  CAN_InitStruct->CAN_Prescaler = 1;
}






 
void CAN_SlaveStartBank(uint8_t CAN_BankNumber) 
{
   
  ((void)0);
  
   
  ((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400))->FMR |= ((uint32_t)0x00000001);
  
   
  ((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400))->FMR &= (uint32_t)0xFFFFC0F1 ;
  ((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400))->FMR |= (uint32_t)(CAN_BankNumber)<<8;
  
   
  ((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400))->FMR &= ~((uint32_t)0x00000001);
}







 
void CAN_DBGFreeze(CAN_TypeDef* CANx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  
  if (NewState != DISABLE)
  {
     
    CANx->MCR |= ((uint32_t)0x00010000);
  }
  else
  {
     
    CANx->MCR &= ~((uint32_t)0x00010000);
  }
}












 
void CAN_TTComModeCmd(CAN_TypeDef* CANx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  if (NewState != DISABLE)
  {
     
    CANx->MCR |= ((uint16_t)0x0080);

     
    CANx->sTxMailBox[0].TDTR |= ((uint32_t)((uint32_t)0x00000100));
    CANx->sTxMailBox[1].TDTR |= ((uint32_t)((uint32_t)0x00000100));
    CANx->sTxMailBox[2].TDTR |= ((uint32_t)((uint32_t)0x00000100));
  }
  else
  {
     
    CANx->MCR &= (uint32_t)(~(uint32_t)((uint16_t)0x0080));

     
    CANx->sTxMailBox[0].TDTR &= ((uint32_t)~((uint32_t)0x00000100));
    CANx->sTxMailBox[1].TDTR &= ((uint32_t)~((uint32_t)0x00000100));
    CANx->sTxMailBox[2].TDTR &= ((uint32_t)~((uint32_t)0x00000100));
  }
}







 
uint8_t CAN_Transmit(CAN_TypeDef* CANx, CanTxMsg* TxMessage)
{
  uint8_t transmit_mailbox = 0;
   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);

   
  if ((CANx->TSR&((uint32_t)0x04000000)) == ((uint32_t)0x04000000))
  {
    transmit_mailbox = 0;
  }
  else if ((CANx->TSR&((uint32_t)0x08000000)) == ((uint32_t)0x08000000))
  {
    transmit_mailbox = 1;
  }
  else if ((CANx->TSR&((uint32_t)0x10000000)) == ((uint32_t)0x10000000))
  {
    transmit_mailbox = 2;
  }
  else
  {
    transmit_mailbox = ((uint8_t)0x04);
  }

  if (transmit_mailbox != ((uint8_t)0x04))
  {
     
    CANx->sTxMailBox[transmit_mailbox].TIR &= ((uint32_t)0x00000001);
    if (TxMessage->IDE == ((uint32_t)0x00000000))
    {
      ((void)0);  
      CANx->sTxMailBox[transmit_mailbox].TIR |= ((TxMessage->StdId << 21) |                                                   TxMessage->RTR);

    }
    else
    {
      ((void)0);
      CANx->sTxMailBox[transmit_mailbox].TIR |= ((TxMessage->ExtId << 3) |                                                   TxMessage->IDE |                                                   TxMessage->RTR);


    }
    
     
    TxMessage->DLC &= (uint8_t)0x0000000F;
    CANx->sTxMailBox[transmit_mailbox].TDTR &= (uint32_t)0xFFFFFFF0;
    CANx->sTxMailBox[transmit_mailbox].TDTR |= TxMessage->DLC;

     
    CANx->sTxMailBox[transmit_mailbox].TDLR = (((uint32_t)TxMessage->Data[3] << 24) | 
                                             ((uint32_t)TxMessage->Data[2] << 16) |
                                             ((uint32_t)TxMessage->Data[1] << 8) | 
                                             ((uint32_t)TxMessage->Data[0]));
    CANx->sTxMailBox[transmit_mailbox].TDHR = (((uint32_t)TxMessage->Data[7] << 24) | 
                                             ((uint32_t)TxMessage->Data[6] << 16) |
                                             ((uint32_t)TxMessage->Data[5] << 8) |
                                             ((uint32_t)TxMessage->Data[4]));
     
    CANx->sTxMailBox[transmit_mailbox].TIR |= ((uint32_t)0x00000001);
  }
  return transmit_mailbox;
}









 
uint8_t CAN_TransmitStatus(CAN_TypeDef* CANx, uint8_t TransmitMailbox)
{
  uint32_t state = 0;

   
  ((void)0);
  ((void)0);
 
  switch (TransmitMailbox)
  {
    case (((uint8_t)0x00)): 
      state =   CANx->TSR &  (((uint32_t)0x00000001) | ((uint32_t)0x00000002) | ((uint32_t)0x04000000));
      break;
    case (((uint8_t)0x01)): 
      state =   CANx->TSR &  (((uint32_t)0x00000100) | ((uint32_t)0x00000200) | ((uint32_t)0x08000000));
      break;
    case (((uint8_t)0x02)): 
      state =   CANx->TSR &  (((uint32_t)0x00010000) | ((uint32_t)0x00020000) | ((uint32_t)0x10000000));
      break;
    default:
      state = ((uint8_t)0x00);
      break;
  }
  switch (state)
  {
       
    case (0x0): state = ((uint8_t)0x02);
      break;
       
     case (((uint32_t)0x00000001) | ((uint32_t)0x04000000)): state = ((uint8_t)0x00);
      break;
     case (((uint32_t)0x00000100) | ((uint32_t)0x08000000)): state = ((uint8_t)0x00);
      break;
     case (((uint32_t)0x00010000) | ((uint32_t)0x10000000)): state = ((uint8_t)0x00);
      break;
       
    case (((uint32_t)0x00000001) | ((uint32_t)0x00000002) | ((uint32_t)0x04000000)):state = ((uint8_t)0x01);
      break;
    case (((uint32_t)0x00000100) | ((uint32_t)0x00000200) | ((uint32_t)0x08000000)):state = ((uint8_t)0x01);
      break;
    case (((uint32_t)0x00010000) | ((uint32_t)0x00020000) | ((uint32_t)0x10000000)):state = ((uint8_t)0x01);
      break;
    default: state = ((uint8_t)0x00);
      break;
  }
  return (uint8_t) state;
}






 
void CAN_CancelTransmit(CAN_TypeDef* CANx, uint8_t Mailbox)
{
   
  ((void)0);
  ((void)0);
   
  switch (Mailbox)
  {
    case (((uint8_t)0x00)): CANx->TSR |= ((uint32_t)0x00000080);
      break;
    case (((uint8_t)0x01)): CANx->TSR |= ((uint32_t)0x00008000);
      break;
    case (((uint8_t)0x02)): CANx->TSR |= ((uint32_t)0x00800000);
      break;
    default:
      break;
  }
}









 
void CAN_Receive(CAN_TypeDef* CANx, uint8_t FIFONumber, CanRxMsg* RxMessage)
{
   
  ((void)0);
  ((void)0);
   
  RxMessage->IDE = (uint8_t)0x04 & CANx->sFIFOMailBox[FIFONumber].RIR;
  if (RxMessage->IDE == ((uint32_t)0x00000000))
  {
    RxMessage->StdId = (uint32_t)0x000007FF & (CANx->sFIFOMailBox[FIFONumber].RIR >> 21);
  }
  else
  {
    RxMessage->ExtId = (uint32_t)0x1FFFFFFF & (CANx->sFIFOMailBox[FIFONumber].RIR >> 3);
  }
  
  RxMessage->RTR = (uint8_t)0x02 & CANx->sFIFOMailBox[FIFONumber].RIR;
   
  RxMessage->DLC = (uint8_t)0x0F & CANx->sFIFOMailBox[FIFONumber].RDTR;
   
  RxMessage->FMI = (uint8_t)0xFF & (CANx->sFIFOMailBox[FIFONumber].RDTR >> 8);
   
  RxMessage->Data[0] = (uint8_t)0xFF & CANx->sFIFOMailBox[FIFONumber].RDLR;
  RxMessage->Data[1] = (uint8_t)0xFF & (CANx->sFIFOMailBox[FIFONumber].RDLR >> 8);
  RxMessage->Data[2] = (uint8_t)0xFF & (CANx->sFIFOMailBox[FIFONumber].RDLR >> 16);
  RxMessage->Data[3] = (uint8_t)0xFF & (CANx->sFIFOMailBox[FIFONumber].RDLR >> 24);
  RxMessage->Data[4] = (uint8_t)0xFF & CANx->sFIFOMailBox[FIFONumber].RDHR;
  RxMessage->Data[5] = (uint8_t)0xFF & (CANx->sFIFOMailBox[FIFONumber].RDHR >> 8);
  RxMessage->Data[6] = (uint8_t)0xFF & (CANx->sFIFOMailBox[FIFONumber].RDHR >> 16);
  RxMessage->Data[7] = (uint8_t)0xFF & (CANx->sFIFOMailBox[FIFONumber].RDHR >> 24);
   
   
  if (FIFONumber == ((uint8_t)0x00))
  {
    CANx->RF0R |= ((uint8_t)0x20);
  }
   
  else  
  {
    CANx->RF1R |= ((uint8_t)0x20);
  }
}






 
void CAN_FIFORelease(CAN_TypeDef* CANx, uint8_t FIFONumber)
{
   
  ((void)0);
  ((void)0);
   
  if (FIFONumber == ((uint8_t)0x00))
  {
    CANx->RF0R |= ((uint8_t)0x20);
  }
   
  else  
  {
    CANx->RF1R |= ((uint8_t)0x20);
  }
}






 
uint8_t CAN_MessagePending(CAN_TypeDef* CANx, uint8_t FIFONumber)
{
  uint8_t message_pending=0;
   
  ((void)0);
  ((void)0);
  if (FIFONumber == ((uint8_t)0x00))
  {
    message_pending = (uint8_t)(CANx->RF0R&(uint32_t)0x03);
  }
  else if (FIFONumber == ((uint8_t)0x01))
  {
    message_pending = (uint8_t)(CANx->RF1R&(uint32_t)0x03);
  }
  else
  {
    message_pending = 0;
  }
  return message_pending;
}










 
uint8_t CAN_OperatingModeRequest(CAN_TypeDef* CANx, uint8_t CAN_OperatingMode)
{
  uint8_t status = ((uint8_t)0x00);
  
   
  uint32_t timeout = ((uint32_t)0x0000FFFF); 

   
  ((void)0);
  ((void)0);

  if (CAN_OperatingMode == ((uint8_t)0x00))
  {
     
    CANx->MCR = (uint32_t)((CANx->MCR & (uint32_t)(~(uint32_t)((uint16_t)0x0002))) | ((uint16_t)0x0001));

     
    while (((CANx->MSR & ((uint32_t) 0x00000003)) != ((uint16_t)0x0001)) && (timeout != 0))
    {
      timeout--;
    }
    if ((CANx->MSR & ((uint32_t) 0x00000003)) != ((uint16_t)0x0001))
    {
      status = ((uint8_t)0x00);
    }
    else
    {
      status = ((uint8_t)!((uint8_t)0x00));
    }
  }
  else  if (CAN_OperatingMode == ((uint8_t)0x01))
  {
     
    CANx->MCR &= (uint32_t)(~(((uint16_t)0x0002)|((uint16_t)0x0001)));

     
    while (((CANx->MSR & ((uint32_t) 0x00000003)) != 0) && (timeout!=0))
    {
      timeout--;
    }
    if ((CANx->MSR & ((uint32_t) 0x00000003)) != 0)
    {
      status = ((uint8_t)0x00);
    }
    else
    {
      status = ((uint8_t)!((uint8_t)0x00));
    }
  }
  else  if (CAN_OperatingMode == ((uint8_t)0x02))
  {
     
    CANx->MCR = (uint32_t)((CANx->MCR & (uint32_t)(~(uint32_t)((uint16_t)0x0001))) | ((uint16_t)0x0002));

     
    while (((CANx->MSR & ((uint32_t) 0x00000003)) != ((uint16_t)0x0002)) && (timeout!=0))
    {
      timeout--;
    }
    if ((CANx->MSR & ((uint32_t) 0x00000003)) != ((uint16_t)0x0002))
    {
      status = ((uint8_t)0x00);
    }
    else
    {
      status = ((uint8_t)!((uint8_t)0x00));
    }
  }
  else
  {
    status = ((uint8_t)0x00);
  }

  return  (uint8_t) status;
}






 
uint8_t CAN_Sleep(CAN_TypeDef* CANx)
{
  uint8_t sleepstatus = ((uint8_t)0x00);
  
   
  ((void)0);
    
   
   CANx->MCR = (((CANx->MCR) & (uint32_t)(~(uint32_t)((uint16_t)0x0001))) | ((uint16_t)0x0002));
   
   
  if ((CANx->MSR & (((uint16_t)0x0002)|((uint16_t)0x0001))) == ((uint16_t)0x0002))
  {
     
    sleepstatus =  ((uint8_t)0x01);
  }
   
   return (uint8_t)sleepstatus;
}






 
uint8_t CAN_WakeUp(CAN_TypeDef* CANx)
{
  uint32_t wait_slak = ((uint32_t)0x0000FFFF);
  uint8_t wakeupstatus = ((uint8_t)0x00);
  
   
  ((void)0);
    
   
  CANx->MCR &= ~(uint32_t)((uint16_t)0x0002);
    
   
  while(((CANx->MSR & ((uint16_t)0x0002)) == ((uint16_t)0x0002))&&(wait_slak!=0x00))
  {
   wait_slak--;
  }
  if((CANx->MSR & ((uint16_t)0x0002)) != ((uint16_t)0x0002))
  {
    
    wakeupstatus = ((uint8_t)0x01);
  }
   
  return (uint8_t)wakeupstatus;
}














 
 
uint8_t CAN_GetLastErrorCode(CAN_TypeDef* CANx)
{
  uint8_t errorcode=0;
  
   
  ((void)0);
  
   
  errorcode = (((uint8_t)CANx->ESR) & (uint8_t)((uint32_t)0x00000070));
  
   
  return errorcode;
}










 
uint8_t CAN_GetReceiveErrorCounter(CAN_TypeDef* CANx)
{
  uint8_t counter=0;
  
   
  ((void)0);
  
   
  counter = (uint8_t)((CANx->ESR & ((uint32_t)0xFF000000))>> 24);
  
   
  return counter;
}






 
uint8_t CAN_GetLSBTransmitErrorCounter(CAN_TypeDef* CANx)
{
  uint8_t counter=0;
  
   
  ((void)0);
  
   
  counter = (uint8_t)((CANx->ESR & ((uint32_t)0x00FF0000))>> 16);
  
   
  return counter;
}























 
void CAN_ITConfig(CAN_TypeDef* CANx, uint32_t CAN_IT, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  ((void)0);

  if (NewState != DISABLE)
  {
     
    CANx->IER |= CAN_IT;
  }
  else
  {
     
    CANx->IER &= ~CAN_IT;
  }
}





















 
FlagStatus CAN_GetFlagStatus(CAN_TypeDef* CANx, uint32_t CAN_FLAG)
{
  FlagStatus bitstatus = RESET;
  
   
  ((void)0);
  ((void)0);
  

  if((CAN_FLAG & ((uint32_t)0x00F00000)) != (uint32_t)RESET)
  { 
     
    if ((CANx->ESR & (CAN_FLAG & 0x000FFFFF)) != (uint32_t)RESET)
    { 
       
      bitstatus = SET;
    }
    else
    { 
       
      bitstatus = RESET;
    }
  }
  else if((CAN_FLAG & ((uint32_t)0x01000000)) != (uint32_t)RESET)
  { 
     
    if ((CANx->MSR & (CAN_FLAG & 0x000FFFFF)) != (uint32_t)RESET)
    { 
       
      bitstatus = SET;
    }
    else
    { 
       
      bitstatus = RESET;
    }
  }
  else if((CAN_FLAG & ((uint32_t)0x08000000)) != (uint32_t)RESET)
  { 
     
    if ((CANx->TSR & (CAN_FLAG & 0x000FFFFF)) != (uint32_t)RESET)
    { 
       
      bitstatus = SET;
    }
    else
    { 
       
      bitstatus = RESET;
    }
  }
  else if((CAN_FLAG & ((uint32_t)0x02000000)) != (uint32_t)RESET)
  { 
     
    if ((CANx->RF0R & (CAN_FLAG & 0x000FFFFF)) != (uint32_t)RESET)
    { 
       
      bitstatus = SET;
    }
    else
    { 
       
      bitstatus = RESET;
    }
  }
  else  
  { 
     
    if ((uint32_t)(CANx->RF1R & (CAN_FLAG & 0x000FFFFF)) != (uint32_t)RESET)
    { 
       
      bitstatus = SET;
    }
    else
    { 
       
      bitstatus = RESET;
    }
  }
   
  return  bitstatus;
}

















 
void CAN_ClearFlag(CAN_TypeDef* CANx, uint32_t CAN_FLAG)
{
  uint32_t flagtmp=0;
   
  ((void)0);
  ((void)0);
  
  if (CAN_FLAG == ((uint32_t)0x30F00070))  
  {
     
    CANx->ESR = (uint32_t)RESET;
  }
  else  
  {
    flagtmp = CAN_FLAG & 0x000FFFFF;

    if ((CAN_FLAG & ((uint32_t)0x02000000))!=(uint32_t)RESET)
    {
       
      CANx->RF0R = (uint32_t)(flagtmp);
    }
    else if ((CAN_FLAG & ((uint32_t)0x04000000))!=(uint32_t)RESET)
    {
       
      CANx->RF1R = (uint32_t)(flagtmp);
    }
    else if ((CAN_FLAG & ((uint32_t)0x08000000))!=(uint32_t)RESET)
    {
       
      CANx->TSR = (uint32_t)(flagtmp);
    }
    else  
    {
       
      CANx->MSR = (uint32_t)(flagtmp);
    }
  }
}





















 
ITStatus CAN_GetITStatus(CAN_TypeDef* CANx, uint32_t CAN_IT)
{
  ITStatus itstatus = RESET;
   
  ((void)0);
  ((void)0);
  
   
 if((CANx->IER & CAN_IT) != RESET)
 {
    
    switch (CAN_IT)
    {
      case ((uint32_t)0x00000001):
                
	             itstatus = CheckITStatus(CANx->TSR, ((uint32_t)0x00000001)|((uint32_t)0x00000100)|((uint32_t)0x00010000));  
	      break;
      case ((uint32_t)0x00000002):
                
	             itstatus = CheckITStatus(CANx->RF0R, ((uint8_t)0x03));  
	      break;
      case ((uint32_t)0x00000004):
                
               itstatus = CheckITStatus(CANx->RF0R, ((uint8_t)0x08));  
	      break;
      case ((uint32_t)0x00000008):
                
               itstatus = CheckITStatus(CANx->RF0R, ((uint8_t)0x10));  
	      break;
      case ((uint32_t)0x00000010):
                
               itstatus = CheckITStatus(CANx->RF1R, ((uint8_t)0x03));  
	      break;
      case ((uint32_t)0x00000020):
                
	             itstatus = CheckITStatus(CANx->RF1R, ((uint8_t)0x08));  
	      break;
      case ((uint32_t)0x00000040):
                
	             itstatus = CheckITStatus(CANx->RF1R, ((uint8_t)0x10));  
	      break;
      case ((uint32_t)0x00010000):
                
               itstatus = CheckITStatus(CANx->MSR, ((uint16_t)0x0008));  
	      break;
      case ((uint32_t)0x00020000):
                
	             itstatus = CheckITStatus(CANx->MSR, ((uint16_t)0x0010));  
	      break;
      case ((uint32_t)0x00000100):
                
	             itstatus = CheckITStatus(CANx->ESR, ((uint32_t)0x00000001));  
	      break;
      case ((uint32_t)0x00000200):
                
	             itstatus = CheckITStatus(CANx->ESR, ((uint32_t)0x00000002));  
	      break;
      case ((uint32_t)0x00000400):
                
	             itstatus = CheckITStatus(CANx->ESR, ((uint32_t)0x00000004));  
	      break;
      case ((uint32_t)0x00000800):
                
	             itstatus = CheckITStatus(CANx->ESR, ((uint32_t)0x00000070));  
	      break;
      case ((uint32_t)0x00008000):
                 
               itstatus = CheckITStatus(CANx->MSR, ((uint16_t)0x0004)); 
	      break;
      default :
                
              itstatus = RESET;
              break;
    }
  }
  else
  {
    
    itstatus  = RESET;
  }
  
   
  return  itstatus;
}


















 
void CAN_ClearITPendingBit(CAN_TypeDef* CANx, uint32_t CAN_IT)
{
   
  ((void)0);
  ((void)0);

  switch (CAN_IT)
  {
      case ((uint32_t)0x00000001):
               
	      CANx->TSR = ((uint32_t)0x00000001)|((uint32_t)0x00000100)|((uint32_t)0x00010000);  
	      break;
      case ((uint32_t)0x00000004):
               
	      CANx->RF0R = ((uint8_t)0x08); 
	      break;
      case ((uint32_t)0x00000008):
               
	      CANx->RF0R = ((uint8_t)0x10); 
	      break;
      case ((uint32_t)0x00000020):
               
	      CANx->RF1R = ((uint8_t)0x08);  
	      break;
      case ((uint32_t)0x00000040):
               
	      CANx->RF1R = ((uint8_t)0x10); 
	      break;
      case ((uint32_t)0x00010000):
               
	      CANx->MSR = ((uint16_t)0x0008);  
	      break;
      case ((uint32_t)0x00020000):
                
	      CANx->MSR = ((uint16_t)0x0010);   
	      break;
      case ((uint32_t)0x00000100):
               
	      CANx->MSR = ((uint16_t)0x0004);
              
  
	      break;
      case ((uint32_t)0x00000200):
               
	      CANx->MSR = ((uint16_t)0x0004); 
              
 
	      break;
      case ((uint32_t)0x00000400):
                
	      CANx->MSR = ((uint16_t)0x0004); 
              
 
	      break;
      case ((uint32_t)0x00000800):
               
	      CANx->ESR = RESET; 
               
	      CANx->MSR = ((uint16_t)0x0004); 
	      break;
      case ((uint32_t)0x00008000):
               
	      CANx->ESR = RESET; 
               
	      CANx->MSR = ((uint16_t)0x0004); 
	      
 
	      break;
      default :
	      break;
   }
}






 
static ITStatus CheckITStatus(uint32_t CAN_Reg, uint32_t It_Bit)
{
  ITStatus pendingbitstatus = RESET;
  
  if ((CAN_Reg & It_Bit) != (uint32_t)RESET)
  {
     
    pendingbitstatus = SET;
  }
  else
  {
     
    pendingbitstatus = RESET;
  }
  return pendingbitstatus;
}




 



 



 

 
#line 29 "..\\Source\\drivers\\drivers.c"

#line 1 "..\\Source\\drivers\\./stm32lib/stm32f10x_rtc.c"



















 

 
#line 24 "..\\Source\\drivers\\./stm32lib/stm32f10x_rtc.c"



 




 



  


 



 





 



 



 



 



 



 



 



 











 
void RTC_ITConfig(uint16_t RTC_IT, FunctionalState NewState)
{
   
  ((void)0);  
  ((void)0);
  
  if (NewState != DISABLE)
  {
    ((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->CRH |= RTC_IT;
  }
  else
  {
    ((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->CRH &= (uint16_t)~RTC_IT;
  }
}





 
void RTC_EnterConfigMode(void)
{
   
  ((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->CRL |= ((uint8_t)0x10);
}





 
void RTC_ExitConfigMode(void)
{
   
  ((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->CRL &= (uint16_t)~((uint16_t)((uint8_t)0x10)); 
}





 
uint32_t RTC_GetCounter(void)
{
  uint16_t tmp = 0;
  tmp = ((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->CNTL;
  return (((uint32_t)((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->CNTH << 16 ) | tmp) ;
}





 
void RTC_SetCounter(uint32_t CounterValue)
{ 
  RTC_EnterConfigMode();
   
  ((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->CNTH = CounterValue >> 16;
   
  ((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->CNTL = (CounterValue & ((uint32_t)0x0000FFFF));
  RTC_ExitConfigMode();
}





 
void RTC_SetPrescaler(uint32_t PrescalerValue)
{
   
  ((void)0);
  
  RTC_EnterConfigMode();
   
  ((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->PRLH = (PrescalerValue & ((uint32_t)0x000F0000)) >> 16;
   
  ((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->PRLL = (PrescalerValue & ((uint32_t)0x0000FFFF));
  RTC_ExitConfigMode();
}





 
void RTC_SetAlarm(uint32_t AlarmValue)
{  
  RTC_EnterConfigMode();
   
  ((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->ALRH = AlarmValue >> 16;
   
  ((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->ALRL = (AlarmValue & ((uint32_t)0x0000FFFF));
  RTC_ExitConfigMode();
}





 
uint32_t RTC_GetDivider(void)
{
  uint32_t tmp = 0x00;
  tmp = ((uint32_t)((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->DIVH & (uint32_t)0x000F) << 16;
  tmp |= ((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->DIVL;
  return tmp;
}






 
void RTC_WaitForLastTask(void)
{
   
  while ((((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->CRL & ((uint16_t)0x0020)) == (uint16_t)RESET)
  {
  }
}








 
void RTC_WaitForSynchro(void)
{
   
  ((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->CRL &= (uint16_t)~((uint16_t)0x0008);
   
  while ((((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->CRL & ((uint16_t)0x0008)) == (uint16_t)RESET)
  {
  }
}











 
FlagStatus RTC_GetFlagStatus(uint16_t RTC_FLAG)
{
  FlagStatus bitstatus = RESET;
  
   
  ((void)0); 
  
  if ((((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->CRL & RTC_FLAG) != (uint16_t)RESET)
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }
  return bitstatus;
}











 
void RTC_ClearFlag(uint16_t RTC_FLAG)
{
   
  ((void)0); 
    
   
  ((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->CRL &= (uint16_t)~RTC_FLAG;
}









 
ITStatus RTC_GetITStatus(uint16_t RTC_IT)
{
  ITStatus bitstatus = RESET;
   
  ((void)0); 
  
  bitstatus = (ITStatus)(((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->CRL & RTC_IT);
  if (((((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->CRH & RTC_IT) != (uint16_t)RESET) && (bitstatus != (uint16_t)RESET))
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }
  return bitstatus;
}









 
void RTC_ClearITPendingBit(uint16_t RTC_IT)
{
   
  ((void)0);  
  
   
  ((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->CRL &= (uint16_t)~RTC_IT;
}



 



 



 

 
#line 31 "..\\Source\\drivers\\drivers.c"

#line 1 "..\\Source\\drivers\\./stm32lib/stm32f10x_bkp.c"



















 

 
#line 24 "..\\Source\\drivers\\./stm32lib/stm32f10x_bkp.c"
#line 25 "..\\Source\\drivers\\./stm32lib/stm32f10x_bkp.c"



 




 



 



 



 

 


 

 




 



 

 




 



 



 

 





  




 



 



 



 



 



 



 





 
void BKP_DeInit(void)
{
  RCC_BackupResetCmd(ENABLE);
  RCC_BackupResetCmd(DISABLE);
}








 
void BKP_TamperPinLevelConfig(uint16_t BKP_TamperPinLevel)
{
   
  ((void)0);
  *(volatile uint32_t *) (((uint32_t)0x42000000) + ((((((uint32_t)0x40000000) + 0x6C00) - ((uint32_t)0x40000000)) + 0x30) * 32) + (0x01 * 4)) = BKP_TamperPinLevel;
}






 
void BKP_TamperPinCmd(FunctionalState NewState)
{
   
  ((void)0);
  *(volatile uint32_t *) (((uint32_t)0x42000000) + ((((((uint32_t)0x40000000) + 0x6C00) - ((uint32_t)0x40000000)) + 0x30) * 32) + (0x00 * 4)) = (uint32_t)NewState;
}






 
void BKP_ITConfig(FunctionalState NewState)
{
   
  ((void)0);
  *(volatile uint32_t *) (((uint32_t)0x42000000) + ((((((uint32_t)0x40000000) + 0x6C00) - ((uint32_t)0x40000000)) + 0x34) * 32) + (0x02 * 4)) = (uint32_t)NewState;
}













 
void BKP_RTCOutputConfig(uint16_t BKP_RTCOutputSource)
{
  uint16_t tmpreg = 0;
   
  ((void)0);
  tmpreg = ((BKP_TypeDef *) (((uint32_t)0x40000000) + 0x6C00))->RTCCR;
   
  tmpreg &= ((uint16_t)0xFC7F);
  
   
  tmpreg |= BKP_RTCOutputSource;
   
  ((BKP_TypeDef *) (((uint32_t)0x40000000) + 0x6C00))->RTCCR = tmpreg;
}






 
void BKP_SetRTCCalibrationValue(uint8_t CalibrationValue)
{
  uint16_t tmpreg = 0;
   
  ((void)0);
  tmpreg = ((BKP_TypeDef *) (((uint32_t)0x40000000) + 0x6C00))->RTCCR;
   
  tmpreg &= ((uint16_t)0xFF80);
   
  tmpreg |= CalibrationValue;
   
  ((BKP_TypeDef *) (((uint32_t)0x40000000) + 0x6C00))->RTCCR = tmpreg;
}







 
void BKP_WriteBackupRegister(uint16_t BKP_DR, uint16_t Data)
{
  volatile uint32_t tmp = 0;

   
  ((void)0);

  tmp = (uint32_t)(((uint32_t)0x40000000) + 0x6C00); 
  tmp += BKP_DR;

  *(volatile uint32_t *) tmp = Data;
}






 
uint16_t BKP_ReadBackupRegister(uint16_t BKP_DR)
{
  volatile uint32_t tmp = 0;

   
  ((void)0);

  tmp = (uint32_t)(((uint32_t)0x40000000) + 0x6C00); 
  tmp += BKP_DR;

  return (*(volatile uint16_t *) tmp);
}





 
FlagStatus BKP_GetFlagStatus(void)
{
  return (FlagStatus)(*(volatile uint32_t *) (((uint32_t)0x42000000) + ((((((uint32_t)0x40000000) + 0x6C00) - ((uint32_t)0x40000000)) + 0x34) * 32) + (0x08 * 4)));
}





 
void BKP_ClearFlag(void)
{
   
  ((BKP_TypeDef *) (((uint32_t)0x40000000) + 0x6C00))->CSR |= ((uint16_t)0x0001);
}





 
ITStatus BKP_GetITStatus(void)
{
  return (ITStatus)(*(volatile uint32_t *) (((uint32_t)0x42000000) + ((((((uint32_t)0x40000000) + 0x6C00) - ((uint32_t)0x40000000)) + 0x34) * 32) + (0x09 * 4)));
}





 
void BKP_ClearITPendingBit(void)
{
   
  ((BKP_TypeDef *) (((uint32_t)0x40000000) + 0x6C00))->CSR |= ((uint16_t)0x0002);
}



 



 



 

 
#line 33 "..\\Source\\drivers\\drivers.c"

#line 1 "..\\Source\\drivers\\./stm32lib/stm32f10x_dma.c"



















 

 
#line 24 "..\\Source\\drivers\\./stm32lib/stm32f10x_dma.c"
#line 25 "..\\Source\\drivers\\./stm32lib/stm32f10x_dma.c"



 




  



  


 



 


 
#line 55 "..\\Source\\drivers\\./stm32lib/stm32f10x_dma.c"

 






 


 




 



 



 



 



 



 



 



 







 
void DMA_DeInit(DMA_Channel_TypeDef* DMAy_Channelx)
{
   
  ((void)0);
  
   
  DMAy_Channelx->CCR &= (uint16_t)(~((uint16_t)0x0001));
  
   
  DMAy_Channelx->CCR  = 0;
  
   
  DMAy_Channelx->CNDTR = 0;
  
   
  DMAy_Channelx->CPAR  = 0;
  
   
  DMAy_Channelx->CMAR = 0;
  
  if (DMAy_Channelx == ((DMA_Channel_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x0008)))
  {
     
    ((DMA_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x0000))->IFCR |= ((uint32_t)(((uint32_t)0x00000001) | ((uint32_t)0x00000002) | ((uint32_t)0x00000004) | ((uint32_t)0x00000008)));
  }
  else if (DMAy_Channelx == ((DMA_Channel_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x001C)))
  {
     
    ((DMA_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x0000))->IFCR |= ((uint32_t)(((uint32_t)0x00000010) | ((uint32_t)0x00000020) | ((uint32_t)0x00000040) | ((uint32_t)0x00000080)));
  }
  else if (DMAy_Channelx == ((DMA_Channel_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x0030)))
  {
     
    ((DMA_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x0000))->IFCR |= ((uint32_t)(((uint32_t)0x00000100) | ((uint32_t)0x00000200) | ((uint32_t)0x00000400) | ((uint32_t)0x00000800)));
  }
  else if (DMAy_Channelx == ((DMA_Channel_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x0044)))
  {
     
    ((DMA_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x0000))->IFCR |= ((uint32_t)(((uint32_t)0x00001000) | ((uint32_t)0x00002000) | ((uint32_t)0x00004000) | ((uint32_t)0x00008000)));
  }
  else if (DMAy_Channelx == ((DMA_Channel_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x0058)))
  {
     
    ((DMA_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x0000))->IFCR |= ((uint32_t)(((uint32_t)0x00010000) | ((uint32_t)0x00020000) | ((uint32_t)0x00040000) | ((uint32_t)0x00080000)));
  }
  else if (DMAy_Channelx == ((DMA_Channel_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x006C)))
  {
     
    ((DMA_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x0000))->IFCR |= ((uint32_t)(((uint32_t)0x00100000) | ((uint32_t)0x00200000) | ((uint32_t)0x00400000) | ((uint32_t)0x00800000)));
  }
  else if (DMAy_Channelx == ((DMA_Channel_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x0080)))
  {
     
    ((DMA_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x0000))->IFCR |= ((uint32_t)(((uint32_t)0x01000000) | ((uint32_t)0x02000000) | ((uint32_t)0x04000000) | ((uint32_t)0x08000000)));
  }
  else if (DMAy_Channelx == ((DMA_Channel_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x0408)))
  {
     
    ((DMA_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x0400))->IFCR |= ((uint32_t)(((uint32_t)0x00000001) | ((uint32_t)0x00000002) | ((uint32_t)0x00000004) | ((uint32_t)0x00000008)));
  }
  else if (DMAy_Channelx == ((DMA_Channel_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x041C)))
  {
     
    ((DMA_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x0400))->IFCR |= ((uint32_t)(((uint32_t)0x00000010) | ((uint32_t)0x00000020) | ((uint32_t)0x00000040) | ((uint32_t)0x00000080)));
  }
  else if (DMAy_Channelx == ((DMA_Channel_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x0430)))
  {
     
    ((DMA_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x0400))->IFCR |= ((uint32_t)(((uint32_t)0x00000100) | ((uint32_t)0x00000200) | ((uint32_t)0x00000400) | ((uint32_t)0x00000800)));
  }
  else if (DMAy_Channelx == ((DMA_Channel_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x0444)))
  {
     
    ((DMA_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x0400))->IFCR |= ((uint32_t)(((uint32_t)0x00001000) | ((uint32_t)0x00002000) | ((uint32_t)0x00004000) | ((uint32_t)0x00008000)));
  }
  else
  { 
    if (DMAy_Channelx == ((DMA_Channel_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x0458)))
    {
       
      ((DMA_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x0400))->IFCR |= ((uint32_t)(((uint32_t)0x00010000) | ((uint32_t)0x00020000) | ((uint32_t)0x00040000) | ((uint32_t)0x00080000)));
    }
  }
}









 
void DMA_Init(DMA_Channel_TypeDef* DMAy_Channelx, DMA_InitTypeDef* DMA_InitStruct)
{
  uint32_t tmpreg = 0;

   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);

 
   
  tmpreg = DMAy_Channelx->CCR;
   
  tmpreg &= ((uint32_t)0xFFFF800F);
   
   
   
   
   
   
   
   
   
  tmpreg |= DMA_InitStruct->DMA_DIR | DMA_InitStruct->DMA_Mode |
            DMA_InitStruct->DMA_PeripheralInc | DMA_InitStruct->DMA_MemoryInc |
            DMA_InitStruct->DMA_PeripheralDataSize | DMA_InitStruct->DMA_MemoryDataSize |
            DMA_InitStruct->DMA_Priority | DMA_InitStruct->DMA_M2M;

   
  DMAy_Channelx->CCR = tmpreg;

 
   
  DMAy_Channelx->CNDTR = DMA_InitStruct->DMA_BufferSize;

 
   
  DMAy_Channelx->CPAR = DMA_InitStruct->DMA_PeripheralBaseAddr;

 
   
  DMAy_Channelx->CMAR = DMA_InitStruct->DMA_MemoryBaseAddr;
}






 
void DMA_StructInit(DMA_InitTypeDef* DMA_InitStruct)
{
 
   
  DMA_InitStruct->DMA_PeripheralBaseAddr = 0;
   
  DMA_InitStruct->DMA_MemoryBaseAddr = 0;
   
  DMA_InitStruct->DMA_DIR = ((uint32_t)0x00000000);
   
  DMA_InitStruct->DMA_BufferSize = 0;
   
  DMA_InitStruct->DMA_PeripheralInc = ((uint32_t)0x00000000);
   
  DMA_InitStruct->DMA_MemoryInc = ((uint32_t)0x00000000);
   
  DMA_InitStruct->DMA_PeripheralDataSize = ((uint32_t)0x00000000);
   
  DMA_InitStruct->DMA_MemoryDataSize = ((uint32_t)0x00000000);
   
  DMA_InitStruct->DMA_Mode = ((uint32_t)0x00000000);
   
  DMA_InitStruct->DMA_Priority = ((uint32_t)0x00000000);
   
  DMA_InitStruct->DMA_M2M = ((uint32_t)0x00000000);
}








 
void DMA_Cmd(DMA_Channel_TypeDef* DMAy_Channelx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);

  if (NewState != DISABLE)
  {
     
    DMAy_Channelx->CCR |= ((uint16_t)0x0001);
  }
  else
  {
     
    DMAy_Channelx->CCR &= (uint16_t)(~((uint16_t)0x0001));
  }
}














 
void DMA_ITConfig(DMA_Channel_TypeDef* DMAy_Channelx, uint32_t DMA_IT, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  ((void)0);
  if (NewState != DISABLE)
  {
     
    DMAy_Channelx->CCR |= DMA_IT;
  }
  else
  {
     
    DMAy_Channelx->CCR &= ~DMA_IT;
  }
}









 
void DMA_SetCurrDataCounter(DMA_Channel_TypeDef* DMAy_Channelx, uint16_t DataNumber)
{
   
  ((void)0);
  
 
   
  DMAy_Channelx->CNDTR = DataNumber;  
}








 
uint16_t DMA_GetCurrDataCounter(DMA_Channel_TypeDef* DMAy_Channelx)
{
   
  ((void)0);
   
  return ((uint16_t)(DMAy_Channelx->CNDTR));
}






















































 
FlagStatus DMA_GetFlagStatus(uint32_t DMAy_FLAG)
{
  FlagStatus bitstatus = RESET;
  uint32_t tmpreg = 0;
  
   
  ((void)0);

   
  if ((DMAy_FLAG & ((uint32_t)0x10000000)) != (uint32_t)RESET)
  {
     
    tmpreg = ((DMA_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x0400))->ISR ;
  }
  else
  {
     
    tmpreg = ((DMA_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x0000))->ISR ;
  }

   
  if ((tmpreg & DMAy_FLAG) != (uint32_t)RESET)
  {
     
    bitstatus = SET;
  }
  else
  {
     
    bitstatus = RESET;
  }
  
   
  return  bitstatus;
}






















































 
void DMA_ClearFlag(uint32_t DMAy_FLAG)
{
   
  ((void)0);

   
  if ((DMAy_FLAG & ((uint32_t)0x10000000)) != (uint32_t)RESET)
  {
     
    ((DMA_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x0400))->IFCR = DMAy_FLAG;
  }
  else
  {
     
    ((DMA_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x0000))->IFCR = DMAy_FLAG;
  }
}






















































 
ITStatus DMA_GetITStatus(uint32_t DMAy_IT)
{
  ITStatus bitstatus = RESET;
  uint32_t tmpreg = 0;

   
  ((void)0);

   
  if ((DMAy_IT & ((uint32_t)0x10000000)) != (uint32_t)RESET)
  {
     
    tmpreg = ((DMA_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x0400))->ISR;
  }
  else
  {
     
    tmpreg = ((DMA_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x0000))->ISR;
  }

   
  if ((tmpreg & DMAy_IT) != (uint32_t)RESET)
  {
     
    bitstatus = SET;
  }
  else
  {
     
    bitstatus = RESET;
  }
   
  return  bitstatus;
}






















































 
void DMA_ClearITPendingBit(uint32_t DMAy_IT)
{
   
  ((void)0);

   
  if ((DMAy_IT & ((uint32_t)0x10000000)) != (uint32_t)RESET)
  {
     
    ((DMA_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x0400))->IFCR = DMAy_IT;
  }
  else
  {
     
    ((DMA_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x0000))->IFCR = DMAy_IT;
  }
}



 



 



 

 
#line 35 "..\\Source\\drivers\\drivers.c"

#line 1 "..\\Source\\drivers\\./stm32lib/stm32f10x_sdio.c"



















 

 
#line 24 "..\\Source\\drivers\\./stm32lib/stm32f10x_sdio.c"
#line 25 "..\\Source\\drivers\\./stm32lib/stm32f10x_sdio.c"



 




  



  

 


 

 




 

 




 



 



 



 

 




 



 



 



 



 

 

 


 

 


 

 


 

 


 




 



 



 



 



 



 



 



 



 



 





 
void SDIO_DeInit(void)
{
  ((SDIO_TypeDef *) (((uint32_t)0x40000000) + 0x18000))->POWER = 0x00000000;
  ((SDIO_TypeDef *) (((uint32_t)0x40000000) + 0x18000))->CLKCR = 0x00000000;
  ((SDIO_TypeDef *) (((uint32_t)0x40000000) + 0x18000))->ARG = 0x00000000;
  ((SDIO_TypeDef *) (((uint32_t)0x40000000) + 0x18000))->CMD = 0x00000000;
  ((SDIO_TypeDef *) (((uint32_t)0x40000000) + 0x18000))->DTIMER = 0x00000000;
  ((SDIO_TypeDef *) (((uint32_t)0x40000000) + 0x18000))->DLEN = 0x00000000;
  ((SDIO_TypeDef *) (((uint32_t)0x40000000) + 0x18000))->DCTRL = 0x00000000;
  ((SDIO_TypeDef *) (((uint32_t)0x40000000) + 0x18000))->ICR = 0x00C007FF;
  ((SDIO_TypeDef *) (((uint32_t)0x40000000) + 0x18000))->MASK = 0x00000000;
}







 
void SDIO_Init(SDIO_InitTypeDef* SDIO_InitStruct)
{
  uint32_t tmpreg = 0;
    
   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0); 
   
   
   
  tmpreg = ((SDIO_TypeDef *) (((uint32_t)0x40000000) + 0x18000))->CLKCR;
  
   
  tmpreg &= ((uint32_t)0xFFFF8100);
  
   
   
   
   
   
   
  tmpreg |= (SDIO_InitStruct->SDIO_ClockDiv  | SDIO_InitStruct->SDIO_ClockPowerSave |
             SDIO_InitStruct->SDIO_ClockBypass | SDIO_InitStruct->SDIO_BusWide |
             SDIO_InitStruct->SDIO_ClockEdge | SDIO_InitStruct->SDIO_HardwareFlowControl); 
  
   
  ((SDIO_TypeDef *) (((uint32_t)0x40000000) + 0x18000))->CLKCR = tmpreg;
}






 
void SDIO_StructInit(SDIO_InitTypeDef* SDIO_InitStruct)
{
   
  SDIO_InitStruct->SDIO_ClockDiv = 0x00;
  SDIO_InitStruct->SDIO_ClockEdge = ((uint32_t)0x00000000);
  SDIO_InitStruct->SDIO_ClockBypass = ((uint32_t)0x00000000);
  SDIO_InitStruct->SDIO_ClockPowerSave = ((uint32_t)0x00000000);
  SDIO_InitStruct->SDIO_BusWide = ((uint32_t)0x00000000);
  SDIO_InitStruct->SDIO_HardwareFlowControl = ((uint32_t)0x00000000);
}





 
void SDIO_ClockCmd(FunctionalState NewState)
{
   
  ((void)0);
  
  *(volatile uint32_t *) (((uint32_t)0x42000000) + ((((((uint32_t)0x40000000) + 0x18000) - ((uint32_t)0x40000000)) + 0x04) * 32) + (0x08 * 4)) = (uint32_t)NewState;
}








 
void SDIO_SetPowerState(uint32_t SDIO_PowerState)
{
   
  ((void)0);
  
  ((SDIO_TypeDef *) (((uint32_t)0x40000000) + 0x18000))->POWER &= ((uint32_t)0xFFFFFFFC);
  ((SDIO_TypeDef *) (((uint32_t)0x40000000) + 0x18000))->POWER |= SDIO_PowerState;
}









 
uint32_t SDIO_GetPowerState(void)
{
  return (((SDIO_TypeDef *) (((uint32_t)0x40000000) + 0x18000))->POWER & (~((uint32_t)0xFFFFFFFC)));
}

































 
void SDIO_ITConfig(uint32_t SDIO_IT, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  
  if (NewState != DISABLE)
  {
     
    ((SDIO_TypeDef *) (((uint32_t)0x40000000) + 0x18000))->MASK |= SDIO_IT;
  }
  else
  {
     
    ((SDIO_TypeDef *) (((uint32_t)0x40000000) + 0x18000))->MASK &= ~SDIO_IT;
  } 
}






 
void SDIO_DMACmd(FunctionalState NewState)
{
   
  ((void)0);
  
  *(volatile uint32_t *) (((uint32_t)0x42000000) + ((((((uint32_t)0x40000000) + 0x18000) - ((uint32_t)0x40000000)) + 0x2C) * 32) + (0x03 * 4)) = (uint32_t)NewState;
}







 
void SDIO_SendCommand(SDIO_CmdInitTypeDef *SDIO_CmdInitStruct)
{
  uint32_t tmpreg = 0;
  
   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  
 
   
  ((SDIO_TypeDef *) (((uint32_t)0x40000000) + 0x18000))->ARG = SDIO_CmdInitStruct->SDIO_Argument;
  
   
   
  tmpreg = ((SDIO_TypeDef *) (((uint32_t)0x40000000) + 0x18000))->CMD;
   
  tmpreg &= ((uint32_t)0xFFFFF800);
   
   
   
   
  tmpreg |= (uint32_t)SDIO_CmdInitStruct->SDIO_CmdIndex | SDIO_CmdInitStruct->SDIO_Response
           | SDIO_CmdInitStruct->SDIO_Wait | SDIO_CmdInitStruct->SDIO_CPSM;
  
   
  ((SDIO_TypeDef *) (((uint32_t)0x40000000) + 0x18000))->CMD = tmpreg;
}






 
void SDIO_CmdStructInit(SDIO_CmdInitTypeDef* SDIO_CmdInitStruct)
{
   
  SDIO_CmdInitStruct->SDIO_Argument = 0x00;
  SDIO_CmdInitStruct->SDIO_CmdIndex = 0x00;
  SDIO_CmdInitStruct->SDIO_Response = ((uint32_t)0x00000000);
  SDIO_CmdInitStruct->SDIO_Wait = ((uint32_t)0x00000000);
  SDIO_CmdInitStruct->SDIO_CPSM = ((uint32_t)0x00000000);
}





 
uint8_t SDIO_GetCommandResponse(void)
{
  return (uint8_t)(((SDIO_TypeDef *) (((uint32_t)0x40000000) + 0x18000))->RESPCMD);
}










 
uint32_t SDIO_GetResponse(uint32_t SDIO_RESP)
{
  volatile uint32_t tmp = 0;

   
  ((void)0);

  tmp = ((uint32_t)((((uint32_t)0x40000000) + 0x18000) + 0x14)) + SDIO_RESP;
  
  return (*(volatile uint32_t *) tmp); 
}







 
void SDIO_DataConfig(SDIO_DataInitTypeDef* SDIO_DataInitStruct)
{
  uint32_t tmpreg = 0;
  
   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);

 
   
  ((SDIO_TypeDef *) (((uint32_t)0x40000000) + 0x18000))->DTIMER = SDIO_DataInitStruct->SDIO_DataTimeOut;

 
   
  ((SDIO_TypeDef *) (((uint32_t)0x40000000) + 0x18000))->DLEN = SDIO_DataInitStruct->SDIO_DataLength;

   
   
  tmpreg = ((SDIO_TypeDef *) (((uint32_t)0x40000000) + 0x18000))->DCTRL;
   
  tmpreg &= ((uint32_t)0xFFFFFF08);
   
   
   
   
  tmpreg |= (uint32_t)SDIO_DataInitStruct->SDIO_DataBlockSize | SDIO_DataInitStruct->SDIO_TransferDir
           | SDIO_DataInitStruct->SDIO_TransferMode | SDIO_DataInitStruct->SDIO_DPSM;

   
  ((SDIO_TypeDef *) (((uint32_t)0x40000000) + 0x18000))->DCTRL = tmpreg;
}






 
void SDIO_DataStructInit(SDIO_DataInitTypeDef* SDIO_DataInitStruct)
{
   
  SDIO_DataInitStruct->SDIO_DataTimeOut = 0xFFFFFFFF;
  SDIO_DataInitStruct->SDIO_DataLength = 0x00;
  SDIO_DataInitStruct->SDIO_DataBlockSize = ((uint32_t)0x00000000);
  SDIO_DataInitStruct->SDIO_TransferDir = ((uint32_t)0x00000000);
  SDIO_DataInitStruct->SDIO_TransferMode = ((uint32_t)0x00000000);  
  SDIO_DataInitStruct->SDIO_DPSM = ((uint32_t)0x00000000);
}





 
uint32_t SDIO_GetDataCounter(void)
{ 
  return ((SDIO_TypeDef *) (((uint32_t)0x40000000) + 0x18000))->DCOUNT;
}





 
uint32_t SDIO_ReadData(void)
{ 
  return ((SDIO_TypeDef *) (((uint32_t)0x40000000) + 0x18000))->FIFO;
}





 
void SDIO_WriteData(uint32_t Data)
{ 
  ((SDIO_TypeDef *) (((uint32_t)0x40000000) + 0x18000))->FIFO = Data;
}





 
uint32_t SDIO_GetFIFOCount(void)
{ 
  return ((SDIO_TypeDef *) (((uint32_t)0x40000000) + 0x18000))->FIFOCNT;
}






 
void SDIO_StartSDIOReadWait(FunctionalState NewState)
{ 
   
  ((void)0);
  
  *(volatile uint32_t *) (((uint32_t)0x42000000) + ((((((uint32_t)0x40000000) + 0x18000) - ((uint32_t)0x40000000)) + 0x2C) * 32) + (0x08 * 4)) = (uint32_t) NewState;
}






 
void SDIO_StopSDIOReadWait(FunctionalState NewState)
{ 
   
  ((void)0);
  
  *(volatile uint32_t *) (((uint32_t)0x42000000) + ((((((uint32_t)0x40000000) + 0x18000) - ((uint32_t)0x40000000)) + 0x2C) * 32) + (0x09 * 4)) = (uint32_t) NewState;
}








 
void SDIO_SetSDIOReadWaitMode(uint32_t SDIO_ReadWaitMode)
{
   
  ((void)0);
  
  *(volatile uint32_t *) (((uint32_t)0x42000000) + ((((((uint32_t)0x40000000) + 0x18000) - ((uint32_t)0x40000000)) + 0x2C) * 32) + (0x0A * 4)) = SDIO_ReadWaitMode;
}






 
void SDIO_SetSDIOOperation(FunctionalState NewState)
{ 
   
  ((void)0);
  
  *(volatile uint32_t *) (((uint32_t)0x42000000) + ((((((uint32_t)0x40000000) + 0x18000) - ((uint32_t)0x40000000)) + 0x2C) * 32) + (0x0B * 4)) = (uint32_t)NewState;
}






 
void SDIO_SendSDIOSuspendCmd(FunctionalState NewState)
{ 
   
  ((void)0);
  
  *(volatile uint32_t *) (((uint32_t)0x42000000) + ((((((uint32_t)0x40000000) + 0x18000) - ((uint32_t)0x40000000)) + 0x0C) * 32) + (0x0B * 4)) = (uint32_t)NewState;
}






 
void SDIO_CommandCompletionCmd(FunctionalState NewState)
{ 
   
  ((void)0);
  
  *(volatile uint32_t *) (((uint32_t)0x42000000) + ((((((uint32_t)0x40000000) + 0x18000) - ((uint32_t)0x40000000)) + 0x0C) * 32) + (0x0C * 4)) = (uint32_t)NewState;
}





 
void SDIO_CEATAITCmd(FunctionalState NewState)
{ 
   
  ((void)0);
  
  *(volatile uint32_t *) (((uint32_t)0x42000000) + ((((((uint32_t)0x40000000) + 0x18000) - ((uint32_t)0x40000000)) + 0x0C) * 32) + (0x0D * 4)) = (uint32_t)((~((uint32_t)NewState)) & ((uint32_t)0x1));
}





 
void SDIO_SendCEATACmd(FunctionalState NewState)
{ 
   
  ((void)0);
  
  *(volatile uint32_t *) (((uint32_t)0x42000000) + ((((((uint32_t)0x40000000) + 0x18000) - ((uint32_t)0x40000000)) + 0x0C) * 32) + (0x0E * 4)) = (uint32_t)NewState;
}































 
FlagStatus SDIO_GetFlagStatus(uint32_t SDIO_FLAG)
{ 
  FlagStatus bitstatus = RESET;
  
   
  ((void)0);
  
  if ((((SDIO_TypeDef *) (((uint32_t)0x40000000) + 0x18000))->STA & SDIO_FLAG) != (uint32_t)RESET)
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }
  return bitstatus;
}




















 
void SDIO_ClearFlag(uint32_t SDIO_FLAG)
{ 
   
  ((void)0);
   
  ((SDIO_TypeDef *) (((uint32_t)0x40000000) + 0x18000))->ICR = SDIO_FLAG;
}































 
ITStatus SDIO_GetITStatus(uint32_t SDIO_IT)
{ 
  ITStatus bitstatus = RESET;
  
   
  ((void)0);
  if ((((SDIO_TypeDef *) (((uint32_t)0x40000000) + 0x18000))->STA & SDIO_IT) != (uint32_t)RESET)  
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }
  return bitstatus;
}



















 
void SDIO_ClearITPendingBit(uint32_t SDIO_IT)
{ 
   
  ((void)0);
   
  ((SDIO_TypeDef *) (((uint32_t)0x40000000) + 0x18000))->ICR = SDIO_IT;
}





 



 



 

 
#line 37 "..\\Source\\drivers\\drivers.c"

#line 1 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.c"



















 

 
#line 24 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.c"
#line 25 "..\\Source\\drivers\\./stm32lib/stm32f10x_tim.c"



 




 



 



 



 

 







 



 



 



 



 



 

static void TI1_Config(TIM_TypeDef* TIMx, uint16_t TIM_ICPolarity, uint16_t TIM_ICSelection,
                       uint16_t TIM_ICFilter);
static void TI2_Config(TIM_TypeDef* TIMx, uint16_t TIM_ICPolarity, uint16_t TIM_ICSelection,
                       uint16_t TIM_ICFilter);
static void TI3_Config(TIM_TypeDef* TIMx, uint16_t TIM_ICPolarity, uint16_t TIM_ICSelection,
                       uint16_t TIM_ICFilter);
static void TI4_Config(TIM_TypeDef* TIMx, uint16_t TIM_ICPolarity, uint16_t TIM_ICSelection,
                       uint16_t TIM_ICFilter);


 



 



 



 



 



 



 



 





 
void TIM_DeInit(TIM_TypeDef* TIMx)
{
   
  ((void)0); 
 
  if (TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2C00)))
  {
    RCC_APB2PeriphResetCmd(((uint32_t)0x00000800), ENABLE);
    RCC_APB2PeriphResetCmd(((uint32_t)0x00000800), DISABLE);  
  }     
  else if (TIMx == ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0000)))
  {
    RCC_APB1PeriphResetCmd(((uint32_t)0x00000001), ENABLE);
    RCC_APB1PeriphResetCmd(((uint32_t)0x00000001), DISABLE);
  }
  else if (TIMx == ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0400)))
  {
    RCC_APB1PeriphResetCmd(((uint32_t)0x00000002), ENABLE);
    RCC_APB1PeriphResetCmd(((uint32_t)0x00000002), DISABLE);
  }
  else if (TIMx == ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800)))
  {
    RCC_APB1PeriphResetCmd(((uint32_t)0x00000004), ENABLE);
    RCC_APB1PeriphResetCmd(((uint32_t)0x00000004), DISABLE);
  } 
  else if (TIMx == ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0C00)))
  {
    RCC_APB1PeriphResetCmd(((uint32_t)0x00000008), ENABLE);
    RCC_APB1PeriphResetCmd(((uint32_t)0x00000008), DISABLE);
  } 
  else if (TIMx == ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x1000)))
  {
    RCC_APB1PeriphResetCmd(((uint32_t)0x00000010), ENABLE);
    RCC_APB1PeriphResetCmd(((uint32_t)0x00000010), DISABLE);
  } 
  else if (TIMx == ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x1400)))
  {
    RCC_APB1PeriphResetCmd(((uint32_t)0x00000020), ENABLE);
    RCC_APB1PeriphResetCmd(((uint32_t)0x00000020), DISABLE);
  } 
  else if (TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3400)))
  {
    RCC_APB2PeriphResetCmd(((uint32_t)0x00002000), ENABLE);
    RCC_APB2PeriphResetCmd(((uint32_t)0x00002000), DISABLE);
  }
  else if (TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x4C00)))
  {      
    RCC_APB2PeriphResetCmd(((uint32_t)0x00080000), ENABLE);
    RCC_APB2PeriphResetCmd(((uint32_t)0x00080000), DISABLE);  
   }  
  else if (TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x5000)))
  {      
    RCC_APB2PeriphResetCmd(((uint32_t)0x00100000), ENABLE);
    RCC_APB2PeriphResetCmd(((uint32_t)0x00100000), DISABLE);  
  }  
  else if (TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x5400))) 
  {     
    RCC_APB2PeriphResetCmd(((uint32_t)0x00200000), ENABLE);
    RCC_APB2PeriphResetCmd(((uint32_t)0x00200000), DISABLE);  
  }  
  else if (TIMx == ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x1800)))
  {      
    RCC_APB1PeriphResetCmd(((uint32_t)0x00000040), ENABLE);
    RCC_APB1PeriphResetCmd(((uint32_t)0x00000040), DISABLE);  
  }  
  else if (TIMx == ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x1C00))) 
  {       
    RCC_APB1PeriphResetCmd(((uint32_t)0x00000080), ENABLE);
    RCC_APB1PeriphResetCmd(((uint32_t)0x00000080), DISABLE);  
  }
  else if (TIMx == ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x2000))) 
  {       
    RCC_APB1PeriphResetCmd(((uint32_t)0x00000100), ENABLE);
    RCC_APB1PeriphResetCmd(((uint32_t)0x00000100), DISABLE);  
  }        
  else if (TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x4000)))
  {
    RCC_APB2PeriphResetCmd(((uint32_t)0x00010000), ENABLE);
    RCC_APB2PeriphResetCmd(((uint32_t)0x00010000), DISABLE);
  } 
  else if (TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x4400)))
  {
    RCC_APB2PeriphResetCmd(((uint32_t)0x00020000), ENABLE);
    RCC_APB2PeriphResetCmd(((uint32_t)0x00020000), DISABLE);
  } 
  else
  {
    if (TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x4800)))
    {
      RCC_APB2PeriphResetCmd(((uint32_t)0x00040000), ENABLE);
      RCC_APB2PeriphResetCmd(((uint32_t)0x00040000), DISABLE);
    }  
  }
}









 
void TIM_TimeBaseInit(TIM_TypeDef* TIMx, TIM_TimeBaseInitTypeDef* TIM_TimeBaseInitStruct)
{
  uint16_t tmpcr1 = 0;

   
  ((void)0); 
  ((void)0);
  ((void)0);

  tmpcr1 = TIMx->CR1;  

  if((TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2C00))) || (TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3400)))|| (TIMx == ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0000))) || (TIMx == ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0400)))||
     (TIMx == ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800))) || (TIMx == ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0C00)))) 
  {
     
    tmpcr1 &= (uint16_t)(~((uint16_t)(((uint16_t)0x0010) | ((uint16_t)0x0060))));
    tmpcr1 |= (uint32_t)TIM_TimeBaseInitStruct->TIM_CounterMode;
  }
 
  if((TIMx != ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x1000))) && (TIMx != ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x1400))))
  {
     
    tmpcr1 &= (uint16_t)(~((uint16_t)((uint16_t)0x0300)));
    tmpcr1 |= (uint32_t)TIM_TimeBaseInitStruct->TIM_ClockDivision;
  }

  TIMx->CR1 = tmpcr1;

   
  TIMx->ARR = TIM_TimeBaseInitStruct->TIM_Period ;
 
   
  TIMx->PSC = TIM_TimeBaseInitStruct->TIM_Prescaler;
    
  if ((TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2C00))) || (TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3400)))|| (TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x4000)))|| (TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x4400))) || (TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x4800))))  
  {
     
    TIMx->RCR = TIM_TimeBaseInitStruct->TIM_RepetitionCounter;
  }

  
 
  TIMx->EGR = ((uint16_t)0x0001);           
}








 
void TIM_OC1Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct)
{
  uint16_t tmpccmrx = 0, tmpccer = 0, tmpcr2 = 0;
   
   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);   
  
  TIMx->CCER &= (uint16_t)(~(uint16_t)((uint16_t)0x0001));
   
  tmpccer = TIMx->CCER;
   
  tmpcr2 =  TIMx->CR2;
  
   
  tmpccmrx = TIMx->CCMR1;
    
   
  tmpccmrx &= (uint16_t)(~((uint16_t)((uint16_t)0x0070)));
  tmpccmrx &= (uint16_t)(~((uint16_t)((uint16_t)0x0003)));

   
  tmpccmrx |= TIM_OCInitStruct->TIM_OCMode;
  
   
  tmpccer &= (uint16_t)(~((uint16_t)((uint16_t)0x0002)));
   
  tmpccer |= TIM_OCInitStruct->TIM_OCPolarity;
  
   
  tmpccer |= TIM_OCInitStruct->TIM_OutputState;
    
  if((TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2C00))) || (TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3400)))|| (TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x4000)))||
     (TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x4400)))|| (TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x4800))))
  {
    ((void)0);
    ((void)0);
    ((void)0);
    ((void)0);
    
     
    tmpccer &= (uint16_t)(~((uint16_t)((uint16_t)0x0008)));
     
    tmpccer |= TIM_OCInitStruct->TIM_OCNPolarity;
    
     
    tmpccer &= (uint16_t)(~((uint16_t)((uint16_t)0x0004)));    
     
    tmpccer |= TIM_OCInitStruct->TIM_OutputNState;
    
     
    tmpcr2 &= (uint16_t)(~((uint16_t)((uint16_t)0x0100)));
    tmpcr2 &= (uint16_t)(~((uint16_t)((uint16_t)0x0200)));
    
     
    tmpcr2 |= TIM_OCInitStruct->TIM_OCIdleState;
     
    tmpcr2 |= TIM_OCInitStruct->TIM_OCNIdleState;
  }
   
  TIMx->CR2 = tmpcr2;
  
   
  TIMx->CCMR1 = tmpccmrx;

   
  TIMx->CCR1 = TIM_OCInitStruct->TIM_Pulse; 
 
   
  TIMx->CCER = tmpccer;
}









 
void TIM_OC2Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct)
{
  uint16_t tmpccmrx = 0, tmpccer = 0, tmpcr2 = 0;
   
   
  ((void)0); 
  ((void)0);
  ((void)0);
  ((void)0);   
    
  TIMx->CCER &= (uint16_t)(~((uint16_t)((uint16_t)0x0010)));
  
     
  tmpccer = TIMx->CCER;
   
  tmpcr2 =  TIMx->CR2;
  
   
  tmpccmrx = TIMx->CCMR1;
    
   
  tmpccmrx &= (uint16_t)(~((uint16_t)((uint16_t)0x7000)));
  tmpccmrx &= (uint16_t)(~((uint16_t)((uint16_t)0x0300)));
  
   
  tmpccmrx |= (uint16_t)(TIM_OCInitStruct->TIM_OCMode << 8);
  
   
  tmpccer &= (uint16_t)(~((uint16_t)((uint16_t)0x0020)));
   
  tmpccer |= (uint16_t)(TIM_OCInitStruct->TIM_OCPolarity << 4);
  
   
  tmpccer |= (uint16_t)(TIM_OCInitStruct->TIM_OutputState << 4);
    
  if((TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2C00))) || (TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3400))))
  {
    ((void)0);
    ((void)0);
    ((void)0);
    ((void)0);
    
     
    tmpccer &= (uint16_t)(~((uint16_t)((uint16_t)0x0080)));
     
    tmpccer |= (uint16_t)(TIM_OCInitStruct->TIM_OCNPolarity << 4);
    
     
    tmpccer &= (uint16_t)(~((uint16_t)((uint16_t)0x0040)));    
     
    tmpccer |= (uint16_t)(TIM_OCInitStruct->TIM_OutputNState << 4);
    
     
    tmpcr2 &= (uint16_t)(~((uint16_t)((uint16_t)0x0400)));
    tmpcr2 &= (uint16_t)(~((uint16_t)((uint16_t)0x0800)));
    
     
    tmpcr2 |= (uint16_t)(TIM_OCInitStruct->TIM_OCIdleState << 2);
     
    tmpcr2 |= (uint16_t)(TIM_OCInitStruct->TIM_OCNIdleState << 2);
  }
   
  TIMx->CR2 = tmpcr2;
  
   
  TIMx->CCMR1 = tmpccmrx;

   
  TIMx->CCR2 = TIM_OCInitStruct->TIM_Pulse;
  
   
  TIMx->CCER = tmpccer;
}








 
void TIM_OC3Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct)
{
  uint16_t tmpccmrx = 0, tmpccer = 0, tmpcr2 = 0;
   
   
  ((void)0); 
  ((void)0);
  ((void)0);
  ((void)0);   
   
  TIMx->CCER &= (uint16_t)(~((uint16_t)((uint16_t)0x0100)));
  
   
  tmpccer = TIMx->CCER;
   
  tmpcr2 =  TIMx->CR2;
  
   
  tmpccmrx = TIMx->CCMR2;
    
   
  tmpccmrx &= (uint16_t)(~((uint16_t)((uint16_t)0x0070)));
  tmpccmrx &= (uint16_t)(~((uint16_t)((uint16_t)0x0003)));  
   
  tmpccmrx |= TIM_OCInitStruct->TIM_OCMode;
  
   
  tmpccer &= (uint16_t)(~((uint16_t)((uint16_t)0x0200)));
   
  tmpccer |= (uint16_t)(TIM_OCInitStruct->TIM_OCPolarity << 8);
  
   
  tmpccer |= (uint16_t)(TIM_OCInitStruct->TIM_OutputState << 8);
    
  if((TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2C00))) || (TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3400))))
  {
    ((void)0);
    ((void)0);
    ((void)0);
    ((void)0);
    
     
    tmpccer &= (uint16_t)(~((uint16_t)((uint16_t)0x0800)));
     
    tmpccer |= (uint16_t)(TIM_OCInitStruct->TIM_OCNPolarity << 8);
     
    tmpccer &= (uint16_t)(~((uint16_t)((uint16_t)0x0400)));
    
     
    tmpccer |= (uint16_t)(TIM_OCInitStruct->TIM_OutputNState << 8);
     
    tmpcr2 &= (uint16_t)(~((uint16_t)((uint16_t)0x1000)));
    tmpcr2 &= (uint16_t)(~((uint16_t)((uint16_t)0x2000)));
     
    tmpcr2 |= (uint16_t)(TIM_OCInitStruct->TIM_OCIdleState << 4);
     
    tmpcr2 |= (uint16_t)(TIM_OCInitStruct->TIM_OCNIdleState << 4);
  }
   
  TIMx->CR2 = tmpcr2;
  
   
  TIMx->CCMR2 = tmpccmrx;

   
  TIMx->CCR3 = TIM_OCInitStruct->TIM_Pulse;
  
   
  TIMx->CCER = tmpccer;
}








 
void TIM_OC4Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct)
{
  uint16_t tmpccmrx = 0, tmpccer = 0, tmpcr2 = 0;
   
   
  ((void)0); 
  ((void)0);
  ((void)0);
  ((void)0);   
   
  TIMx->CCER &= (uint16_t)(~((uint16_t)((uint16_t)0x1000)));
  
   
  tmpccer = TIMx->CCER;
   
  tmpcr2 =  TIMx->CR2;
  
   
  tmpccmrx = TIMx->CCMR2;
    
   
  tmpccmrx &= (uint16_t)(~((uint16_t)((uint16_t)0x7000)));
  tmpccmrx &= (uint16_t)(~((uint16_t)((uint16_t)0x0300)));
  
   
  tmpccmrx |= (uint16_t)(TIM_OCInitStruct->TIM_OCMode << 8);
  
   
  tmpccer &= (uint16_t)(~((uint16_t)((uint16_t)0x2000)));
   
  tmpccer |= (uint16_t)(TIM_OCInitStruct->TIM_OCPolarity << 12);
  
   
  tmpccer |= (uint16_t)(TIM_OCInitStruct->TIM_OutputState << 12);
    
  if((TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2C00))) || (TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3400))))
  {
    ((void)0);
     
    tmpcr2 &= (uint16_t)(~((uint16_t)((uint16_t)0x4000)));
     
    tmpcr2 |= (uint16_t)(TIM_OCInitStruct->TIM_OCIdleState << 6);
  }
   
  TIMx->CR2 = tmpcr2;
  
     
  TIMx->CCMR2 = tmpccmrx;

   
  TIMx->CCR4 = TIM_OCInitStruct->TIM_Pulse;
  
   
  TIMx->CCER = tmpccer;
}








 
void TIM_ICInit(TIM_TypeDef* TIMx, TIM_ICInitTypeDef* TIM_ICInitStruct)
{
   
  ((void)0);  
  ((void)0);
  ((void)0);
  ((void)0);
  
  if((TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2C00))) || (TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3400))) || (TIMx == ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0000))) || (TIMx == ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0400))) ||
     (TIMx == ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800))) ||(TIMx == ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0C00))))
  {
    ((void)0);
  }
  else
  {
    ((void)0);
  }
  if (TIM_ICInitStruct->TIM_Channel == ((uint16_t)0x0000))
  {
    ((void)0);
     
    TI1_Config(TIMx, TIM_ICInitStruct->TIM_ICPolarity,
               TIM_ICInitStruct->TIM_ICSelection,
               TIM_ICInitStruct->TIM_ICFilter);
     
    TIM_SetIC1Prescaler(TIMx, TIM_ICInitStruct->TIM_ICPrescaler);
  }
  else if (TIM_ICInitStruct->TIM_Channel == ((uint16_t)0x0004))
  {
    ((void)0);
     
    TI2_Config(TIMx, TIM_ICInitStruct->TIM_ICPolarity,
               TIM_ICInitStruct->TIM_ICSelection,
               TIM_ICInitStruct->TIM_ICFilter);
     
    TIM_SetIC2Prescaler(TIMx, TIM_ICInitStruct->TIM_ICPrescaler);
  }
  else if (TIM_ICInitStruct->TIM_Channel == ((uint16_t)0x0008))
  {
    ((void)0);
     
    TI3_Config(TIMx,  TIM_ICInitStruct->TIM_ICPolarity,
               TIM_ICInitStruct->TIM_ICSelection,
               TIM_ICInitStruct->TIM_ICFilter);
     
    TIM_SetIC3Prescaler(TIMx, TIM_ICInitStruct->TIM_ICPrescaler);
  }
  else
  {
    ((void)0);
     
    TI4_Config(TIMx, TIM_ICInitStruct->TIM_ICPolarity,
               TIM_ICInitStruct->TIM_ICSelection,
               TIM_ICInitStruct->TIM_ICFilter);
     
    TIM_SetIC4Prescaler(TIMx, TIM_ICInitStruct->TIM_ICPrescaler);
  }
}








 
void TIM_PWMIConfig(TIM_TypeDef* TIMx, TIM_ICInitTypeDef* TIM_ICInitStruct)
{
  uint16_t icoppositepolarity = ((uint16_t)0x0000);
  uint16_t icoppositeselection = ((uint16_t)0x0001);
   
  ((void)0);
   
  if (TIM_ICInitStruct->TIM_ICPolarity == ((uint16_t)0x0000))
  {
    icoppositepolarity = ((uint16_t)0x0002);
  }
  else
  {
    icoppositepolarity = ((uint16_t)0x0000);
  }
   
  if (TIM_ICInitStruct->TIM_ICSelection == ((uint16_t)0x0001))
  {
    icoppositeselection = ((uint16_t)0x0002);
  }
  else
  {
    icoppositeselection = ((uint16_t)0x0001);
  }
  if (TIM_ICInitStruct->TIM_Channel == ((uint16_t)0x0000))
  {
     
    TI1_Config(TIMx, TIM_ICInitStruct->TIM_ICPolarity, TIM_ICInitStruct->TIM_ICSelection,
               TIM_ICInitStruct->TIM_ICFilter);
     
    TIM_SetIC1Prescaler(TIMx, TIM_ICInitStruct->TIM_ICPrescaler);
     
    TI2_Config(TIMx, icoppositepolarity, icoppositeselection, TIM_ICInitStruct->TIM_ICFilter);
     
    TIM_SetIC2Prescaler(TIMx, TIM_ICInitStruct->TIM_ICPrescaler);
  }
  else
  { 
     
    TI2_Config(TIMx, TIM_ICInitStruct->TIM_ICPolarity, TIM_ICInitStruct->TIM_ICSelection,
               TIM_ICInitStruct->TIM_ICFilter);
     
    TIM_SetIC2Prescaler(TIMx, TIM_ICInitStruct->TIM_ICPrescaler);
     
    TI1_Config(TIMx, icoppositepolarity, icoppositeselection, TIM_ICInitStruct->TIM_ICFilter);
     
    TIM_SetIC1Prescaler(TIMx, TIM_ICInitStruct->TIM_ICPrescaler);
  }
}








 
void TIM_BDTRConfig(TIM_TypeDef* TIMx, TIM_BDTRInitTypeDef *TIM_BDTRInitStruct)
{
   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  
 
  TIMx->BDTR = (uint32_t)TIM_BDTRInitStruct->TIM_OSSRState | TIM_BDTRInitStruct->TIM_OSSIState |
             TIM_BDTRInitStruct->TIM_LOCKLevel | TIM_BDTRInitStruct->TIM_DeadTime |
             TIM_BDTRInitStruct->TIM_Break | TIM_BDTRInitStruct->TIM_BreakPolarity |
             TIM_BDTRInitStruct->TIM_AutomaticOutput;
}






 
void TIM_TimeBaseStructInit(TIM_TimeBaseInitTypeDef* TIM_TimeBaseInitStruct)
{
   
  TIM_TimeBaseInitStruct->TIM_Period = 0xFFFF;
  TIM_TimeBaseInitStruct->TIM_Prescaler = 0x0000;
  TIM_TimeBaseInitStruct->TIM_ClockDivision = ((uint16_t)0x0000);
  TIM_TimeBaseInitStruct->TIM_CounterMode = ((uint16_t)0x0000);
  TIM_TimeBaseInitStruct->TIM_RepetitionCounter = 0x0000;
}






 
void TIM_OCStructInit(TIM_OCInitTypeDef* TIM_OCInitStruct)
{
   
  TIM_OCInitStruct->TIM_OCMode = ((uint16_t)0x0000);
  TIM_OCInitStruct->TIM_OutputState = ((uint16_t)0x0000);
  TIM_OCInitStruct->TIM_OutputNState = ((uint16_t)0x0000);
  TIM_OCInitStruct->TIM_Pulse = 0x0000;
  TIM_OCInitStruct->TIM_OCPolarity = ((uint16_t)0x0000);
  TIM_OCInitStruct->TIM_OCNPolarity = ((uint16_t)0x0000);
  TIM_OCInitStruct->TIM_OCIdleState = ((uint16_t)0x0000);
  TIM_OCInitStruct->TIM_OCNIdleState = ((uint16_t)0x0000);
}






 
void TIM_ICStructInit(TIM_ICInitTypeDef* TIM_ICInitStruct)
{
   
  TIM_ICInitStruct->TIM_Channel = ((uint16_t)0x0000);
  TIM_ICInitStruct->TIM_ICPolarity = ((uint16_t)0x0000);
  TIM_ICInitStruct->TIM_ICSelection = ((uint16_t)0x0001);
  TIM_ICInitStruct->TIM_ICPrescaler = ((uint16_t)0x0000);
  TIM_ICInitStruct->TIM_ICFilter = 0x00;
}






 
void TIM_BDTRStructInit(TIM_BDTRInitTypeDef* TIM_BDTRInitStruct)
{
   
  TIM_BDTRInitStruct->TIM_OSSRState = ((uint16_t)0x0000);
  TIM_BDTRInitStruct->TIM_OSSIState = ((uint16_t)0x0000);
  TIM_BDTRInitStruct->TIM_LOCKLevel = ((uint16_t)0x0000);
  TIM_BDTRInitStruct->TIM_DeadTime = 0x00;
  TIM_BDTRInitStruct->TIM_Break = ((uint16_t)0x0000);
  TIM_BDTRInitStruct->TIM_BreakPolarity = ((uint16_t)0x0000);
  TIM_BDTRInitStruct->TIM_AutomaticOutput = ((uint16_t)0x0000);
}







 
void TIM_Cmd(TIM_TypeDef* TIMx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  
  if (NewState != DISABLE)
  {
     
    TIMx->CR1 |= ((uint16_t)0x0001);
  }
  else
  {
     
    TIMx->CR1 &= (uint16_t)(~((uint16_t)((uint16_t)0x0001)));
  }
}







 
void TIM_CtrlPWMOutputs(TIM_TypeDef* TIMx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  if (NewState != DISABLE)
  {
     
    TIMx->BDTR |= ((uint16_t)0x8000);
  }
  else
  {
     
    TIMx->BDTR &= (uint16_t)(~((uint16_t)((uint16_t)0x8000)));
  }  
}
























 
void TIM_ITConfig(TIM_TypeDef* TIMx, uint16_t TIM_IT, FunctionalState NewState)
{  
   
  ((void)0);
  ((void)0);
  ((void)0);
  
  if (NewState != DISABLE)
  {
     
    TIMx->DIER |= TIM_IT;
  }
  else
  {
     
    TIMx->DIER &= (uint16_t)~TIM_IT;
  }
}


















 
void TIM_GenerateEvent(TIM_TypeDef* TIMx, uint16_t TIM_EventSource)
{ 
   
  ((void)0);
  ((void)0);
  
   
  TIMx->EGR = TIM_EventSource;
}


















 
void TIM_DMAConfig(TIM_TypeDef* TIMx, uint16_t TIM_DMABase, uint16_t TIM_DMABurstLength)
{
   
  ((void)0);
  ((void)0);
  ((void)0);
   
  TIMx->DCR = TIM_DMABase | TIM_DMABurstLength;
}

















 
void TIM_DMACmd(TIM_TypeDef* TIMx, uint16_t TIM_DMASource, FunctionalState NewState)
{ 
   
  ((void)0);
  ((void)0);
  ((void)0);
  
  if (NewState != DISABLE)
  {
     
    TIMx->DIER |= TIM_DMASource; 
  }
  else
  {
     
    TIMx->DIER &= (uint16_t)~TIM_DMASource;
  }
}






 
void TIM_InternalClockConfig(TIM_TypeDef* TIMx)
{
   
  ((void)0);
   
  TIMx->SMCR &=  (uint16_t)(~((uint16_t)((uint16_t)0x0007)));
}











 
void TIM_ITRxExternalClockConfig(TIM_TypeDef* TIMx, uint16_t TIM_InputTriggerSource)
{
   
  ((void)0);
  ((void)0);
   
  TIM_SelectInputTrigger(TIMx, TIM_InputTriggerSource);
   
  TIMx->SMCR |= ((uint16_t)0x0007);
}
















 
void TIM_TIxExternalClockConfig(TIM_TypeDef* TIMx, uint16_t TIM_TIxExternalCLKSource,
                                uint16_t TIM_ICPolarity, uint16_t ICFilter)
{
   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
   
  if (TIM_TIxExternalCLKSource == ((uint16_t)0x0060))
  {
    TI2_Config(TIMx, TIM_ICPolarity, ((uint16_t)0x0001), ICFilter);
  }
  else
  {
    TI1_Config(TIMx, TIM_ICPolarity, ((uint16_t)0x0001), ICFilter);
  }
   
  TIM_SelectInputTrigger(TIMx, TIM_TIxExternalCLKSource);
   
  TIMx->SMCR |= ((uint16_t)0x0007);
}

















 
void TIM_ETRClockMode1Config(TIM_TypeDef* TIMx, uint16_t TIM_ExtTRGPrescaler, uint16_t TIM_ExtTRGPolarity,
                             uint16_t ExtTRGFilter)
{
  uint16_t tmpsmcr = 0;
   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
   
  TIM_ETRConfig(TIMx, TIM_ExtTRGPrescaler, TIM_ExtTRGPolarity, ExtTRGFilter);
  
   
  tmpsmcr = TIMx->SMCR;
   
  tmpsmcr &= (uint16_t)(~((uint16_t)((uint16_t)0x0007)));
   
  tmpsmcr |= ((uint16_t)0x0007);
   
  tmpsmcr &= (uint16_t)(~((uint16_t)((uint16_t)0x0070)));
  tmpsmcr |= ((uint16_t)0x0070);
   
  TIMx->SMCR = tmpsmcr;
}

















 
void TIM_ETRClockMode2Config(TIM_TypeDef* TIMx, uint16_t TIM_ExtTRGPrescaler, 
                             uint16_t TIM_ExtTRGPolarity, uint16_t ExtTRGFilter)
{
   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
   
  TIM_ETRConfig(TIMx, TIM_ExtTRGPrescaler, TIM_ExtTRGPolarity, ExtTRGFilter);
   
  TIMx->SMCR |= ((uint16_t)0x4000);
}

















 
void TIM_ETRConfig(TIM_TypeDef* TIMx, uint16_t TIM_ExtTRGPrescaler, uint16_t TIM_ExtTRGPolarity,
                   uint16_t ExtTRGFilter)
{
  uint16_t tmpsmcr = 0;
   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  tmpsmcr = TIMx->SMCR;
   
  tmpsmcr &= ((uint16_t)0x00FF);
   
  tmpsmcr |= (uint16_t)(TIM_ExtTRGPrescaler | (uint16_t)(TIM_ExtTRGPolarity | (uint16_t)(ExtTRGFilter << (uint16_t)8)));
   
  TIMx->SMCR = tmpsmcr;
}










 
void TIM_PrescalerConfig(TIM_TypeDef* TIMx, uint16_t Prescaler, uint16_t TIM_PSCReloadMode)
{
   
  ((void)0);
  ((void)0);
   
  TIMx->PSC = Prescaler;
   
  TIMx->EGR = TIM_PSCReloadMode;
}












 
void TIM_CounterModeConfig(TIM_TypeDef* TIMx, uint16_t TIM_CounterMode)
{
  uint16_t tmpcr1 = 0;
   
  ((void)0);
  ((void)0);
  tmpcr1 = TIMx->CR1;
   
  tmpcr1 &= (uint16_t)(~((uint16_t)(((uint16_t)0x0010) | ((uint16_t)0x0060))));
   
  tmpcr1 |= TIM_CounterMode;
   
  TIMx->CR1 = tmpcr1;
}















 
void TIM_SelectInputTrigger(TIM_TypeDef* TIMx, uint16_t TIM_InputTriggerSource)
{
  uint16_t tmpsmcr = 0;
   
  ((void)0);
  ((void)0);
   
  tmpsmcr = TIMx->SMCR;
   
  tmpsmcr &= (uint16_t)(~((uint16_t)((uint16_t)0x0070)));
   
  tmpsmcr |= TIM_InputTriggerSource;
   
  TIMx->SMCR = tmpsmcr;
}



















 
void TIM_EncoderInterfaceConfig(TIM_TypeDef* TIMx, uint16_t TIM_EncoderMode,
                                uint16_t TIM_IC1Polarity, uint16_t TIM_IC2Polarity)
{
  uint16_t tmpsmcr = 0;
  uint16_t tmpccmr1 = 0;
  uint16_t tmpccer = 0;
    
   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);

   
  tmpsmcr = TIMx->SMCR;
  
   
  tmpccmr1 = TIMx->CCMR1;
  
   
  tmpccer = TIMx->CCER;
  
   
  tmpsmcr &= (uint16_t)(~((uint16_t)((uint16_t)0x0007)));
  tmpsmcr |= TIM_EncoderMode;
  
   
  tmpccmr1 &= (uint16_t)(((uint16_t)~((uint16_t)((uint16_t)0x0003))) & (uint16_t)(~((uint16_t)((uint16_t)0x0300))));
  tmpccmr1 |= ((uint16_t)0x0001) | ((uint16_t)0x0100);
  
   
  tmpccer &= (uint16_t)(((uint16_t)~((uint16_t)((uint16_t)0x0002))) & ((uint16_t)~((uint16_t)((uint16_t)0x0020))));
  tmpccer |= (uint16_t)(TIM_IC1Polarity | (uint16_t)(TIM_IC2Polarity << (uint16_t)4));
  
   
  TIMx->SMCR = tmpsmcr;
   
  TIMx->CCMR1 = tmpccmr1;
   
  TIMx->CCER = tmpccer;
}









 
void TIM_ForcedOC1Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction)
{
  uint16_t tmpccmr1 = 0;
   
  ((void)0);
  ((void)0);
  tmpccmr1 = TIMx->CCMR1;
   
  tmpccmr1 &= (uint16_t)~((uint16_t)((uint16_t)0x0070));
   
  tmpccmr1 |= TIM_ForcedAction;
   
  TIMx->CCMR1 = tmpccmr1;
}









 
void TIM_ForcedOC2Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction)
{
  uint16_t tmpccmr1 = 0;
   
  ((void)0);
  ((void)0);
  tmpccmr1 = TIMx->CCMR1;
   
  tmpccmr1 &= (uint16_t)~((uint16_t)((uint16_t)0x7000));
   
  tmpccmr1 |= (uint16_t)(TIM_ForcedAction << 8);
   
  TIMx->CCMR1 = tmpccmr1;
}









 
void TIM_ForcedOC3Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction)
{
  uint16_t tmpccmr2 = 0;
   
  ((void)0);
  ((void)0);
  tmpccmr2 = TIMx->CCMR2;
   
  tmpccmr2 &= (uint16_t)~((uint16_t)((uint16_t)0x0070));
   
  tmpccmr2 |= TIM_ForcedAction;
   
  TIMx->CCMR2 = tmpccmr2;
}









 
void TIM_ForcedOC4Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction)
{
  uint16_t tmpccmr2 = 0;
   
  ((void)0);
  ((void)0);
  tmpccmr2 = TIMx->CCMR2;
   
  tmpccmr2 &= (uint16_t)~((uint16_t)((uint16_t)0x7000));
   
  tmpccmr2 |= (uint16_t)(TIM_ForcedAction << 8);
   
  TIMx->CCMR2 = tmpccmr2;
}







 
void TIM_ARRPreloadConfig(TIM_TypeDef* TIMx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  if (NewState != DISABLE)
  {
     
    TIMx->CR1 |= ((uint16_t)0x0080);
  }
  else
  {
     
    TIMx->CR1 &= (uint16_t)~((uint16_t)((uint16_t)0x0080));
  }
}







 
void TIM_SelectCOM(TIM_TypeDef* TIMx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  if (NewState != DISABLE)
  {
     
    TIMx->CR2 |= ((uint16_t)0x0004);
  }
  else
  {
     
    TIMx->CR2 &= (uint16_t)~((uint16_t)((uint16_t)0x0004));
  }
}








 
void TIM_SelectCCDMA(TIM_TypeDef* TIMx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  if (NewState != DISABLE)
  {
     
    TIMx->CR2 |= ((uint16_t)0x0008);
  }
  else
  {
     
    TIMx->CR2 &= (uint16_t)~((uint16_t)((uint16_t)0x0008));
  }
}








 
void TIM_CCPreloadControl(TIM_TypeDef* TIMx, FunctionalState NewState)
{ 
   
  ((void)0);
  ((void)0);
  if (NewState != DISABLE)
  {
     
    TIMx->CR2 |= ((uint16_t)0x0001);
  }
  else
  {
     
    TIMx->CR2 &= (uint16_t)~((uint16_t)((uint16_t)0x0001));
  }
}









 
void TIM_OC1PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload)
{
  uint16_t tmpccmr1 = 0;
   
  ((void)0);
  ((void)0);
  tmpccmr1 = TIMx->CCMR1;
   
  tmpccmr1 &= (uint16_t)~((uint16_t)((uint16_t)0x0008));
   
  tmpccmr1 |= TIM_OCPreload;
   
  TIMx->CCMR1 = tmpccmr1;
}










 
void TIM_OC2PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload)
{
  uint16_t tmpccmr1 = 0;
   
  ((void)0);
  ((void)0);
  tmpccmr1 = TIMx->CCMR1;
   
  tmpccmr1 &= (uint16_t)~((uint16_t)((uint16_t)0x0800));
   
  tmpccmr1 |= (uint16_t)(TIM_OCPreload << 8);
   
  TIMx->CCMR1 = tmpccmr1;
}









 
void TIM_OC3PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload)
{
  uint16_t tmpccmr2 = 0;
   
  ((void)0);
  ((void)0);
  tmpccmr2 = TIMx->CCMR2;
   
  tmpccmr2 &= (uint16_t)~((uint16_t)((uint16_t)0x0008));
   
  tmpccmr2 |= TIM_OCPreload;
   
  TIMx->CCMR2 = tmpccmr2;
}









 
void TIM_OC4PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload)
{
  uint16_t tmpccmr2 = 0;
   
  ((void)0);
  ((void)0);
  tmpccmr2 = TIMx->CCMR2;
   
  tmpccmr2 &= (uint16_t)~((uint16_t)((uint16_t)0x0800));
   
  tmpccmr2 |= (uint16_t)(TIM_OCPreload << 8);
   
  TIMx->CCMR2 = tmpccmr2;
}









 
void TIM_OC1FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast)
{
  uint16_t tmpccmr1 = 0;
   
  ((void)0);
  ((void)0);
   
  tmpccmr1 = TIMx->CCMR1;
   
  tmpccmr1 &= (uint16_t)~((uint16_t)((uint16_t)0x0004));
   
  tmpccmr1 |= TIM_OCFast;
   
  TIMx->CCMR1 = tmpccmr1;
}










 
void TIM_OC2FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast)
{
  uint16_t tmpccmr1 = 0;
   
  ((void)0);
  ((void)0);
   
  tmpccmr1 = TIMx->CCMR1;
   
  tmpccmr1 &= (uint16_t)~((uint16_t)((uint16_t)0x0400));
   
  tmpccmr1 |= (uint16_t)(TIM_OCFast << 8);
   
  TIMx->CCMR1 = tmpccmr1;
}









 
void TIM_OC3FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast)
{
  uint16_t tmpccmr2 = 0;
   
  ((void)0);
  ((void)0);
   
  tmpccmr2 = TIMx->CCMR2;
   
  tmpccmr2 &= (uint16_t)~((uint16_t)((uint16_t)0x0004));
   
  tmpccmr2 |= TIM_OCFast;
   
  TIMx->CCMR2 = tmpccmr2;
}









 
void TIM_OC4FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast)
{
  uint16_t tmpccmr2 = 0;
   
  ((void)0);
  ((void)0);
   
  tmpccmr2 = TIMx->CCMR2;
   
  tmpccmr2 &= (uint16_t)~((uint16_t)((uint16_t)0x0400));
   
  tmpccmr2 |= (uint16_t)(TIM_OCFast << 8);
   
  TIMx->CCMR2 = tmpccmr2;
}









 
void TIM_ClearOC1Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear)
{
  uint16_t tmpccmr1 = 0;
   
  ((void)0);
  ((void)0);

  tmpccmr1 = TIMx->CCMR1;

   
  tmpccmr1 &= (uint16_t)~((uint16_t)((uint16_t)0x0080));
   
  tmpccmr1 |= TIM_OCClear;
   
  TIMx->CCMR1 = tmpccmr1;
}









 
void TIM_ClearOC2Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear)
{
  uint16_t tmpccmr1 = 0;
   
  ((void)0);
  ((void)0);
  tmpccmr1 = TIMx->CCMR1;
   
  tmpccmr1 &= (uint16_t)~((uint16_t)((uint16_t)0x8000));
   
  tmpccmr1 |= (uint16_t)(TIM_OCClear << 8);
   
  TIMx->CCMR1 = tmpccmr1;
}









 
void TIM_ClearOC3Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear)
{
  uint16_t tmpccmr2 = 0;
   
  ((void)0);
  ((void)0);
  tmpccmr2 = TIMx->CCMR2;
   
  tmpccmr2 &= (uint16_t)~((uint16_t)((uint16_t)0x0080));
   
  tmpccmr2 |= TIM_OCClear;
   
  TIMx->CCMR2 = tmpccmr2;
}









 
void TIM_ClearOC4Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear)
{
  uint16_t tmpccmr2 = 0;
   
  ((void)0);
  ((void)0);
  tmpccmr2 = TIMx->CCMR2;
   
  tmpccmr2 &= (uint16_t)~((uint16_t)((uint16_t)0x8000));
   
  tmpccmr2 |= (uint16_t)(TIM_OCClear << 8);
   
  TIMx->CCMR2 = tmpccmr2;
}









 
void TIM_OC1PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity)
{
  uint16_t tmpccer = 0;
   
  ((void)0);
  ((void)0);
  tmpccer = TIMx->CCER;
   
  tmpccer &= (uint16_t)~((uint16_t)((uint16_t)0x0002));
  tmpccer |= TIM_OCPolarity;
   
  TIMx->CCER = tmpccer;
}









 
void TIM_OC1NPolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCNPolarity)
{
  uint16_t tmpccer = 0;
   
  ((void)0);
  ((void)0);
   
  tmpccer = TIMx->CCER;
   
  tmpccer &= (uint16_t)~((uint16_t)((uint16_t)0x0008));
  tmpccer |= TIM_OCNPolarity;
   
  TIMx->CCER = tmpccer;
}









 
void TIM_OC2PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity)
{
  uint16_t tmpccer = 0;
   
  ((void)0);
  ((void)0);
  tmpccer = TIMx->CCER;
   
  tmpccer &= (uint16_t)~((uint16_t)((uint16_t)0x0020));
  tmpccer |= (uint16_t)(TIM_OCPolarity << 4);
   
  TIMx->CCER = tmpccer;
}









 
void TIM_OC2NPolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCNPolarity)
{
  uint16_t tmpccer = 0;
   
  ((void)0);
  ((void)0);
  
  tmpccer = TIMx->CCER;
   
  tmpccer &= (uint16_t)~((uint16_t)((uint16_t)0x0080));
  tmpccer |= (uint16_t)(TIM_OCNPolarity << 4);
   
  TIMx->CCER = tmpccer;
}









 
void TIM_OC3PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity)
{
  uint16_t tmpccer = 0;
   
  ((void)0);
  ((void)0);
  tmpccer = TIMx->CCER;
   
  tmpccer &= (uint16_t)~((uint16_t)((uint16_t)0x0200));
  tmpccer |= (uint16_t)(TIM_OCPolarity << 8);
   
  TIMx->CCER = tmpccer;
}









 
void TIM_OC3NPolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCNPolarity)
{
  uint16_t tmpccer = 0;
 
   
  ((void)0);
  ((void)0);
    
  tmpccer = TIMx->CCER;
   
  tmpccer &= (uint16_t)~((uint16_t)((uint16_t)0x0800));
  tmpccer |= (uint16_t)(TIM_OCNPolarity << 8);
   
  TIMx->CCER = tmpccer;
}









 
void TIM_OC4PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity)
{
  uint16_t tmpccer = 0;
   
  ((void)0);
  ((void)0);
  tmpccer = TIMx->CCER;
   
  tmpccer &= (uint16_t)~((uint16_t)((uint16_t)0x2000));
  tmpccer |= (uint16_t)(TIM_OCPolarity << 12);
   
  TIMx->CCER = tmpccer;
}













 
void TIM_CCxCmd(TIM_TypeDef* TIMx, uint16_t TIM_Channel, uint16_t TIM_CCx)
{
  uint16_t tmp = 0;

   
  ((void)0);
  ((void)0);
  ((void)0);

  tmp = ((uint16_t)0x0001) << TIM_Channel;

   
  TIMx->CCER &= (uint16_t)~ tmp;

    
  TIMx->CCER |=  (uint16_t)(TIM_CCx << TIM_Channel);
}












 
void TIM_CCxNCmd(TIM_TypeDef* TIMx, uint16_t TIM_Channel, uint16_t TIM_CCxN)
{
  uint16_t tmp = 0;

   
  ((void)0);
  ((void)0);
  ((void)0);

  tmp = ((uint16_t)0x0004) << TIM_Channel;

   
  TIMx->CCER &= (uint16_t) ~tmp;

    
  TIMx->CCER |=  (uint16_t)(TIM_CCxN << TIM_Channel);
}























 
void TIM_SelectOCxM(TIM_TypeDef* TIMx, uint16_t TIM_Channel, uint16_t TIM_OCMode)
{
  uint32_t tmp = 0;
  uint16_t tmp1 = 0;

   
  ((void)0);
  ((void)0);
  ((void)0);

  tmp = (uint32_t) TIMx;
  tmp += ((uint16_t)0x0018);

  tmp1 = ((uint16_t)0x0001) << (uint16_t)TIM_Channel;

   
  TIMx->CCER &= (uint16_t) ~tmp1;

  if((TIM_Channel == ((uint16_t)0x0000)) ||(TIM_Channel == ((uint16_t)0x0008)))
  {
    tmp += (TIM_Channel>>1);

     
    *(volatile uint32_t *) tmp &= (uint32_t)~((uint32_t)((uint16_t)0x0070));
   
     
    *(volatile uint32_t *) tmp |= TIM_OCMode;
  }
  else
  {
    tmp += (uint16_t)(TIM_Channel - (uint16_t)4)>> (uint16_t)1;

     
    *(volatile uint32_t *) tmp &= (uint32_t)~((uint32_t)((uint16_t)0x7000));
    
     
    *(volatile uint32_t *) tmp |= (uint16_t)(TIM_OCMode << 8);
  }
}







 
void TIM_UpdateDisableConfig(TIM_TypeDef* TIMx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  if (NewState != DISABLE)
  {
     
    TIMx->CR1 |= ((uint16_t)0x0002);
  }
  else
  {
     
    TIMx->CR1 &= (uint16_t)~((uint16_t)((uint16_t)0x0002));
  }
}











 
void TIM_UpdateRequestConfig(TIM_TypeDef* TIMx, uint16_t TIM_UpdateSource)
{
   
  ((void)0);
  ((void)0);
  if (TIM_UpdateSource != ((uint16_t)0x0000))
  {
     
    TIMx->CR1 |= ((uint16_t)0x0004);
  }
  else
  {
     
    TIMx->CR1 &= (uint16_t)~((uint16_t)((uint16_t)0x0004));
  }
}







 
void TIM_SelectHallSensor(TIM_TypeDef* TIMx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  if (NewState != DISABLE)
  {
     
    TIMx->CR2 |= ((uint16_t)0x0080);
  }
  else
  {
     
    TIMx->CR2 &= (uint16_t)~((uint16_t)((uint16_t)0x0080));
  }
}









 
void TIM_SelectOnePulseMode(TIM_TypeDef* TIMx, uint16_t TIM_OPMode)
{
   
  ((void)0);
  ((void)0);
   
  TIMx->CR1 &= (uint16_t)~((uint16_t)((uint16_t)0x0008));
   
  TIMx->CR1 |= TIM_OPMode;
}





















 
void TIM_SelectOutputTrigger(TIM_TypeDef* TIMx, uint16_t TIM_TRGOSource)
{
   
  ((void)0);
  ((void)0);
   
  TIMx->CR2 &= (uint16_t)~((uint16_t)((uint16_t)0x0070));
   
  TIMx->CR2 |=  TIM_TRGOSource;
}












 
void TIM_SelectSlaveMode(TIM_TypeDef* TIMx, uint16_t TIM_SlaveMode)
{
   
  ((void)0);
  ((void)0);
  
  TIMx->SMCR &= (uint16_t)~((uint16_t)((uint16_t)0x0007));
   
  TIMx->SMCR |= TIM_SlaveMode;
}










 
void TIM_SelectMasterSlaveMode(TIM_TypeDef* TIMx, uint16_t TIM_MasterSlaveMode)
{
   
  ((void)0);
  ((void)0);
   
  TIMx->SMCR &= (uint16_t)~((uint16_t)((uint16_t)0x0080));
  
   
  TIMx->SMCR |= TIM_MasterSlaveMode;
}






 
void TIM_SetCounter(TIM_TypeDef* TIMx, uint16_t Counter)
{
   
  ((void)0);
   
  TIMx->CNT = Counter;
}






 
void TIM_SetAutoreload(TIM_TypeDef* TIMx, uint16_t Autoreload)
{
   
  ((void)0);
   
  TIMx->ARR = Autoreload;
}






 
void TIM_SetCompare1(TIM_TypeDef* TIMx, uint16_t Compare1)
{
   
  ((void)0);
   
  TIMx->CCR1 = Compare1;
}






 
void TIM_SetCompare2(TIM_TypeDef* TIMx, uint16_t Compare2)
{
   
  ((void)0);
   
  TIMx->CCR2 = Compare2;
}






 
void TIM_SetCompare3(TIM_TypeDef* TIMx, uint16_t Compare3)
{
   
  ((void)0);
   
  TIMx->CCR3 = Compare3;
}






 
void TIM_SetCompare4(TIM_TypeDef* TIMx, uint16_t Compare4)
{
   
  ((void)0);
   
  TIMx->CCR4 = Compare4;
}











 
void TIM_SetIC1Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC)
{
   
  ((void)0);
  ((void)0);
   
  TIMx->CCMR1 &= (uint16_t)~((uint16_t)((uint16_t)0x000C));
   
  TIMx->CCMR1 |= TIM_ICPSC;
}











 
void TIM_SetIC2Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC)
{
   
  ((void)0);
  ((void)0);
   
  TIMx->CCMR1 &= (uint16_t)~((uint16_t)((uint16_t)0x0C00));
   
  TIMx->CCMR1 |= (uint16_t)(TIM_ICPSC << 8);
}











 
void TIM_SetIC3Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC)
{
   
  ((void)0);
  ((void)0);
   
  TIMx->CCMR2 &= (uint16_t)~((uint16_t)((uint16_t)0x000C));
   
  TIMx->CCMR2 |= TIM_ICPSC;
}











 
void TIM_SetIC4Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC)
{  
   
  ((void)0);
  ((void)0);
   
  TIMx->CCMR2 &= (uint16_t)~((uint16_t)((uint16_t)0x0C00));
   
  TIMx->CCMR2 |= (uint16_t)(TIM_ICPSC << 8);
}











 
void TIM_SetClockDivision(TIM_TypeDef* TIMx, uint16_t TIM_CKD)
{
   
  ((void)0);
  ((void)0);
   
  TIMx->CR1 &= (uint16_t)~((uint16_t)((uint16_t)0x0300));
   
  TIMx->CR1 |= TIM_CKD;
}





 
uint16_t TIM_GetCapture1(TIM_TypeDef* TIMx)
{
   
  ((void)0);
   
  return TIMx->CCR1;
}





 
uint16_t TIM_GetCapture2(TIM_TypeDef* TIMx)
{
   
  ((void)0);
   
  return TIMx->CCR2;
}





 
uint16_t TIM_GetCapture3(TIM_TypeDef* TIMx)
{
   
  ((void)0); 
   
  return TIMx->CCR3;
}





 
uint16_t TIM_GetCapture4(TIM_TypeDef* TIMx)
{
   
  ((void)0);
   
  return TIMx->CCR4;
}





 
uint16_t TIM_GetCounter(TIM_TypeDef* TIMx)
{
   
  ((void)0);
   
  return TIMx->CNT;
}





 
uint16_t TIM_GetPrescaler(TIM_TypeDef* TIMx)
{
   
  ((void)0);
   
  return TIMx->PSC;
}


























 
FlagStatus TIM_GetFlagStatus(TIM_TypeDef* TIMx, uint16_t TIM_FLAG)
{ 
  ITStatus bitstatus = RESET;  
   
  ((void)0);
  ((void)0);
  
  if ((TIMx->SR & TIM_FLAG) != (uint16_t)RESET)
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }
  return bitstatus;
}


























 
void TIM_ClearFlag(TIM_TypeDef* TIMx, uint16_t TIM_FLAG)
{  
   
  ((void)0);
  ((void)0);
   
   
  TIMx->SR = (uint16_t)~TIM_FLAG;
}






















 
ITStatus TIM_GetITStatus(TIM_TypeDef* TIMx, uint16_t TIM_IT)
{
  ITStatus bitstatus = RESET;  
  uint16_t itstatus = 0x0, itenable = 0x0;
   
  ((void)0);
  ((void)0);
   
  itstatus = TIMx->SR & TIM_IT;
  
  itenable = TIMx->DIER & TIM_IT;
  if ((itstatus != (uint16_t)RESET) && (itenable != (uint16_t)RESET))
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }
  return bitstatus;
}






















 
void TIM_ClearITPendingBit(TIM_TypeDef* TIMx, uint16_t TIM_IT)
{
   
  ((void)0);
  ((void)0);
   
  TIMx->SR = (uint16_t)~TIM_IT;
}
















 
static void TI1_Config(TIM_TypeDef* TIMx, uint16_t TIM_ICPolarity, uint16_t TIM_ICSelection,
                       uint16_t TIM_ICFilter)
{
  uint16_t tmpccmr1 = 0, tmpccer = 0;
   
  TIMx->CCER &= (uint16_t)~((uint16_t)((uint16_t)0x0001));
  tmpccmr1 = TIMx->CCMR1;
  tmpccer = TIMx->CCER;
   
  tmpccmr1 &= (uint16_t)(((uint16_t)~((uint16_t)((uint16_t)0x0003))) & ((uint16_t)~((uint16_t)((uint16_t)0x00F0))));
  tmpccmr1 |= (uint16_t)(TIM_ICSelection | (uint16_t)(TIM_ICFilter << (uint16_t)4));
  
  if((TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2C00))) || (TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3400))) || (TIMx == ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0000))) || (TIMx == ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0400))) ||
     (TIMx == ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800))) ||(TIMx == ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0C00))))
  {
     
    tmpccer &= (uint16_t)~((uint16_t)(((uint16_t)0x0002)));
    tmpccer |= (uint16_t)(TIM_ICPolarity | (uint16_t)((uint16_t)0x0001));
  }
  else
  {
     
    tmpccer &= (uint16_t)~((uint16_t)(((uint16_t)0x0002) | ((uint16_t)0x0008)));
    tmpccer |= (uint16_t)(TIM_ICPolarity | (uint16_t)((uint16_t)0x0001));
  }

   
  TIMx->CCMR1 = tmpccmr1;
  TIMx->CCER = tmpccer;
}
















 
static void TI2_Config(TIM_TypeDef* TIMx, uint16_t TIM_ICPolarity, uint16_t TIM_ICSelection,
                       uint16_t TIM_ICFilter)
{
  uint16_t tmpccmr1 = 0, tmpccer = 0, tmp = 0;
   
  TIMx->CCER &= (uint16_t)~((uint16_t)((uint16_t)0x0010));
  tmpccmr1 = TIMx->CCMR1;
  tmpccer = TIMx->CCER;
  tmp = (uint16_t)(TIM_ICPolarity << 4);
   
  tmpccmr1 &= (uint16_t)(((uint16_t)~((uint16_t)((uint16_t)0x0300))) & ((uint16_t)~((uint16_t)((uint16_t)0xF000))));
  tmpccmr1 |= (uint16_t)(TIM_ICFilter << 12);
  tmpccmr1 |= (uint16_t)(TIM_ICSelection << 8);
  
  if((TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2C00))) || (TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3400))) || (TIMx == ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0000))) || (TIMx == ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0400))) ||
     (TIMx == ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800))) ||(TIMx == ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0C00))))
  {
     
    tmpccer &= (uint16_t)~((uint16_t)(((uint16_t)0x0020)));
    tmpccer |=  (uint16_t)(tmp | (uint16_t)((uint16_t)0x0010));
  }
  else
  {
     
    tmpccer &= (uint16_t)~((uint16_t)(((uint16_t)0x0020) | ((uint16_t)0x0080)));
    tmpccer |= (uint16_t)(TIM_ICPolarity | (uint16_t)((uint16_t)0x0010));
  }
  
   
  TIMx->CCMR1 = tmpccmr1 ;
  TIMx->CCER = tmpccer;
}
















 
static void TI3_Config(TIM_TypeDef* TIMx, uint16_t TIM_ICPolarity, uint16_t TIM_ICSelection,
                       uint16_t TIM_ICFilter)
{
  uint16_t tmpccmr2 = 0, tmpccer = 0, tmp = 0;
   
  TIMx->CCER &= (uint16_t)~((uint16_t)((uint16_t)0x0100));
  tmpccmr2 = TIMx->CCMR2;
  tmpccer = TIMx->CCER;
  tmp = (uint16_t)(TIM_ICPolarity << 8);
   
  tmpccmr2 &= (uint16_t)(((uint16_t)~((uint16_t)((uint16_t)0x0003))) & ((uint16_t)~((uint16_t)((uint16_t)0x00F0))));
  tmpccmr2 |= (uint16_t)(TIM_ICSelection | (uint16_t)(TIM_ICFilter << (uint16_t)4));
    
  if((TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2C00))) || (TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3400))) || (TIMx == ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0000))) || (TIMx == ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0400))) ||
     (TIMx == ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800))) ||(TIMx == ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0C00))))
  {
     
    tmpccer &= (uint16_t)~((uint16_t)(((uint16_t)0x0200)));
    tmpccer |= (uint16_t)(tmp | (uint16_t)((uint16_t)0x0100));
  }
  else
  {
     
    tmpccer &= (uint16_t)~((uint16_t)(((uint16_t)0x0200) | ((uint16_t)0x0800)));
    tmpccer |= (uint16_t)(TIM_ICPolarity | (uint16_t)((uint16_t)0x0100));
  }
  
   
  TIMx->CCMR2 = tmpccmr2;
  TIMx->CCER = tmpccer;
}
















 
static void TI4_Config(TIM_TypeDef* TIMx, uint16_t TIM_ICPolarity, uint16_t TIM_ICSelection,
                       uint16_t TIM_ICFilter)
{
  uint16_t tmpccmr2 = 0, tmpccer = 0, tmp = 0;

    
  TIMx->CCER &= (uint16_t)~((uint16_t)((uint16_t)0x1000));
  tmpccmr2 = TIMx->CCMR2;
  tmpccer = TIMx->CCER;
  tmp = (uint16_t)(TIM_ICPolarity << 12);
   
  tmpccmr2 &= (uint16_t)((uint16_t)(~(uint16_t)((uint16_t)0x0300)) & ((uint16_t)~((uint16_t)((uint16_t)0xF000))));
  tmpccmr2 |= (uint16_t)(TIM_ICSelection << 8);
  tmpccmr2 |= (uint16_t)(TIM_ICFilter << 12);
  
  if((TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2C00))) || (TIMx == ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3400))) || (TIMx == ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0000))) || (TIMx == ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0400))) ||
     (TIMx == ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0800))) ||(TIMx == ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0C00))))
  {
     
    tmpccer &= (uint16_t)~((uint16_t)(((uint16_t)0x2000)));
    tmpccer |= (uint16_t)(tmp | (uint16_t)((uint16_t)0x1000));
  }
  else
  {
     
    tmpccer &= (uint16_t)~((uint16_t)(((uint16_t)0x0200) | ((uint16_t)0x8000)));
    tmpccer |= (uint16_t)(TIM_ICPolarity | (uint16_t)((uint16_t)0x1000));
  }
   
  TIMx->CCMR2 = tmpccmr2;
  TIMx->CCER = tmpccer;
}



 



 



 

 
#line 39 "..\\Source\\drivers\\drivers.c"


#line 1 "..\\Source\\drivers\\./Stm32Flash/Stm32Flash.c"
#line 2 "..\\Source\\drivers\\./Stm32Flash/Stm32Flash.c"


void stm32_flash_disp(unsigned long ulStartAddr,unsigned long ulEndAddr)
{
	char tip[32] = {0};
	uint32_t temp = 0;
	uint32_t Address = 0x00;
	uint8_t dat[4] = {0};
	
	

	 
	Address = ulStartAddr;

	while((Address < ulEndAddr))
	{
		temp = (*(volatile uint32_t*) Address);
		dat[0] = temp;
		dat[1] = temp >> 8;
		dat[2] = temp >> 16;
		dat[3] = temp >> 24;

		if ((Address % ((uint16_t)0x800)) == 0)
		{
			memset(tip,0,sizeof(tip));
			snprintf(tip,sizeof(tip),"%08X~%08X:\r\n",Address,Address + ((uint16_t)0x800));
			DBG_Print(0,"%s",tip);
		}
		DBG_PrintBuf(0,0,dat,4);
		Address += 4;
	}
}


void Stm32FlashReadTest(void)
{
	char tip[32] = {0};
	uint32_t temp = 0;
	uint32_t Address = 0x00;
	uint8_t dat[4] = {0};
	uint32_t ulStartAddr = ((uint32_t)0x08000000);
	uint32_t ulEndAddr = ((uint32_t)0x08004000);

	 
	Address = ulStartAddr;

	while((Address < ulEndAddr))
	{
		temp = (*(volatile uint32_t*) Address);
		dat[0] = temp;
		dat[1] = temp >> 8;
		dat[2] = temp >> 16;
		dat[3] = temp >> 24;

		if ((Address % ((uint16_t)0x800)) == 0)
		{
			memset(tip,0,sizeof(tip));
			snprintf(tip,sizeof(tip),"%08X~%08X:\r\n",Address,Address + ((uint16_t)0x800));
			DBG_Print(0,"%s",tip);
		}
		DBG_PrintBuf(0,0,dat,4);
		Address += 4;
	}
}

void Stm32FlashWriteTest(void)
{
	uint32_t EraseCounter = 0x00;
	uint32_t Address = 0x00;
	uint32_t Data = 0x1234ABCD;
	uint32_t NbrOfPage = 0x00;
	volatile FLASH_Status FLASHStatus = FLASH_COMPLETE;

	DBG_Print(0,"Stm32 Flash Write Test Start...\r\n");
	 	   
	   
	  FLASH_UnlockBank1();
	
	   
	  NbrOfPage = (((uint32_t)0x08004000) - ((uint32_t)0x08000000)) / ((uint16_t)0x800);
	
	   
	  FLASH_ClearFlag(((uint32_t)0x00000020) | ((uint32_t)0x00000004) | ((uint32_t)0x00000010)); 
	
	   
	  for(EraseCounter = 0; (EraseCounter < NbrOfPage) && (FLASHStatus == FLASH_COMPLETE); EraseCounter++)
	  {
		FLASHStatus = FLASH_ErasePage(((uint32_t)0x08000000) + (((uint16_t)0x800) * EraseCounter));
	  }
	  
	   
	  Address = ((uint32_t)0x08000000);
	
	  while((Address < ((uint32_t)0x08004000)) && (FLASHStatus == FLASH_COMPLETE))
	  {
		FLASHStatus = FLASH_ProgramWord(Address, Data);
		Address = Address + 4;
	  }

	  FLASH_LockBank1();
	  DBG_Print(0,"Stm32 Flash Write Test Finish.\r\n");
}

void stm32_flash_write(unsigned long addr,void *buf,unsigned int len)
{
	unsigned char *ptr = (unsigned char *)buf;
	unsigned short temp = 0;

	if ((buf == 0) || (len == 0)) return ;
	FLASH_UnlockBank1();

	while (len >= 2)
	{
		temp = *(unsigned short *)ptr;
		FLASH_ProgramHalfWord(addr, temp);
		len -= 2;
		addr += 2;
		ptr += 2;
	}
	if (len == 1)
	{
		temp = (unsigned short)(ptr[0]) | 0xFF00;
		FLASH_ProgramHalfWord(addr, temp);
	}
	FLASH_LockBank1();
}

void stm32_flash_read(unsigned long addr,unsigned int wantToReadBytes,void *buf,unsigned int bufsize)
{
	unsigned long temp = 0;
	unsigned int rb = 0;
	unsigned char *ptr = (unsigned char *)buf;

	if (wantToReadBytes > bufsize)
	{
		wantToReadBytes = bufsize;
	}
	
	while (1)
	{
		temp = *(unsigned long *)addr;
		addr += 4;
		if (rb < wantToReadBytes)
		{
			if ((wantToReadBytes - rb) >= 4)
			{
				memcpy(ptr+rb,&temp,4);
			}
			else
			{
				memcpy(ptr+rb,&temp,wantToReadBytes - rb);
			}
			rb += 4;
		}
		else
		{
			break;
		}
	}
}



void stm32_flash_erase_sector(unsigned long sector_id)
{
	 	   
	   
	  FLASH_UnlockBank1();
	   
	  FLASH_ClearFlag(((uint32_t)0x00000020) | ((uint32_t)0x00000004) | ((uint32_t)0x00000010)); 
	  FLASH_ErasePage(sector_id * ((uint16_t)0x800));

	  FLASH_LockBank1();

	return ;
}


int Stm32FlashWritePage(uint32_t StartAddress,void *pdat)
{
	uint32_t EraseCounter = 0x00, Address = 0x00;
	uint32_t Data = 0;
	uint32_t NbrOfPage = 0x00;
	volatile FLASH_Status FLASHStatus = FLASH_COMPLETE;
	uint8_t *ptr = (uint8_t *)pdat;

	if (pdat == 0) return -1;
	 	   
	   
	  FLASH_UnlockBank1();
	
	   
	  NbrOfPage = 1;
	
	   
	  FLASH_ClearFlag(((uint32_t)0x00000020) | ((uint32_t)0x00000004) | ((uint32_t)0x00000010)); 

	   
	  for(EraseCounter = 0; (EraseCounter < NbrOfPage) && (FLASHStatus == FLASH_COMPLETE); EraseCounter++)
	  {
		FLASHStatus = FLASH_ErasePage(StartAddress);
	  }

	   
	  Address = StartAddress;
	
	  while((Address < (StartAddress + ((uint16_t)0x800))) && (FLASHStatus == FLASH_COMPLETE))
	  {
		Data = *((uint32_t *)ptr);
		FLASHStatus = FLASH_ProgramWord(Address, Data);
		Address = Address + 4;
		ptr += 4;
	  }

	  FLASH_LockBank1();

	return 0;
}

static uint32_t s_WriteCnt = 0;
static uint32_t s_IapStartAddress = 0;
static uint32_t s_IapEndAddress = 0;


int IAP_ProgramInit(unsigned int StartAddress,unsigned int EndAddress)
{
	s_IapStartAddress = StartAddress;
	s_IapEndAddress = EndAddress;
	s_WriteCnt = 0;
	return 0;
}

int IAP_ProgramWrite(void *pdat,unsigned int ulDatLen)
{
	if (ulDatLen < ((uint16_t)0x800)) return -1;
	if (s_IapEndAddress && 
		((s_IapStartAddress + s_WriteCnt * ((uint16_t)0x800)) >= s_IapEndAddress))
	{
		return -2;
	}

	Stm32FlashWritePage(s_IapStartAddress + s_WriteCnt * ((uint16_t)0x800),pdat);
	s_WriteCnt++;
	return s_WriteCnt;
}

#line 42 "..\\Source\\drivers\\drivers.c"

#line 1 "..\\Source\\drivers\\./gpio/gpio.c"
#line 2 "..\\Source\\drivers\\./gpio/gpio.c"

void _gpio_init(uint32_t rcc,GPIO_TypeDef* port,uint16_t pin,GPIOMode_TypeDef mode)
{
	GPIO_InitTypeDef  gpio_init;

	if ((rcc == 0) || (port == 0) || (pin == 0))
	{
		return ;
	}
	RCC_APB2PeriphClockCmd(rcc, ENABLE);

	gpio_init.GPIO_Pin   = pin;
	gpio_init.GPIO_Speed = GPIO_Speed_50MHz;
	gpio_init.GPIO_Mode  = mode;
	GPIO_Init(port, &gpio_init);
}

void pin_low(uint32_t rcc,GPIO_TypeDef* port,uint16_t pin)
{
	if (rcc && port && pin)
	{
		GPIO_ResetBits(port, pin);
	}
}

void pin_high(uint32_t rcc,GPIO_TypeDef* port,uint16_t pin)
{
	if (rcc && port && pin)
	{
		GPIO_SetBits(port, pin);
	}
}

void pin_toggle(uint32_t rcc,GPIO_TypeDef* port,uint16_t pin)
{
	if (rcc && port && pin)
	{
		uint16_t pins;

		pins = GPIO_ReadOutputData(port);
		if (pins & pin) 
		{
			GPIO_ResetBits(port, pin);
		} 
		else
		{
			GPIO_SetBits(port, pin);
		}
	}
}


unsigned char pin_read_in(uint32_t rcc,GPIO_TypeDef* port,uint16_t pin)
{
	unsigned char dat = 0;

	if (rcc && port && pin)
	{
		dat = GPIO_ReadInputDataBit(port,pin);
	}

	return (dat ? 1 : 0);
}






#line 44 "..\\Source\\drivers\\drivers.c"
#line 1 "..\\Source\\drivers\\./usart/usart.c"
#line 2 "..\\Source\\drivers\\./usart/usart.c"



typedef struct tagUsartRecv
{
	unsigned int read_idx;
	unsigned int write_idx;
	unsigned char timeout;

	unsigned char recving_flag;		
	unsigned char recv_data_packet_cnt;
	unsigned char data_packet_ridx;
	unsigned char data_packet_widx;
	unsigned int data_packet_read_idx[4];
	unsigned int data_packet_write_idx[4];

	unsigned int last_write_idx;
}UsartRecv;


UsartRecv s_stUsart1Recv = {0};
UsartRecv s_stUsart2Recv = {0};
UsartRecv s_stUsart3Recv = {0};
UsartRecv s_stUsart4Recv = {0};
UsartRecv s_stUsart5Recv = {0};
UsartRecv s_stUsart6Recv = {0};
UsartRecv s_stUsart7Recv = {0};
UsartRecv s_stUsart8Recv = {0};


unsigned char s_usart1_buf[(2048 + 384)] = {0};
unsigned char s_usart2_buf[128] = {0};
unsigned char s_usart3_buf[1536] = {0};
unsigned char s_usart4_buf[(1024)] = {0};
unsigned char s_usart5_buf[128] = {0};
unsigned char s_usart6_buf[128] = {0};
unsigned char s_usart7_buf[128] = {0};
unsigned char s_usart8_buf[(128)] = {0};


USART_TypeDef *pUSARTx[] = {((USART_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3800)),((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4400)),((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4800)),((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4C00)),((USART_TypeDef *) (((uint32_t)0x40000000) + 0x5000)),((USART_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x7000)),((USART_TypeDef *) (((uint32_t)0x40000000) + 0x7800)),((USART_TypeDef *) (((uint32_t)0x40000000) + 0x7C00))};


usart_data_arrive_callback apfusartcb[8] = {0};

_one_dat_arrive_func ast_one_dat_arrive_func[8] = {0};




static OS_SEM semUsart1TxWait;
static OS_SEM semUsart1RxWait;
unsigned char s_usart1_sem_flag = 0;

static OS_SEM semUsart2TxWait;
static OS_SEM semUsart2RxWait;
unsigned char s_usart2_sem_flag = 0;

static OS_SEM semUsart3TxWait;
static OS_SEM semUsart3RxWait;
unsigned char s_usart3_sem_flag = 0;

static OS_SEM semUsart4TxWait;
static OS_SEM semUsart4RxWait;
unsigned char s_usart4_sem_flag = 0;

static OS_SEM semUsart5TxWait;
static OS_SEM semUsart5RxWait;
unsigned char s_usart5_sem_flag = 0;

static OS_SEM semUsart6TxWait;
static OS_SEM semUsart6RxWait;
unsigned char s_usart6_sem_flag = 0;

static OS_SEM semUsart7TxWait;
static OS_SEM semUsart7RxWait;
unsigned char s_usart7_sem_flag = 0;

static OS_SEM semUsart8TxWait;
static OS_SEM semUsart8RxWait;
unsigned char s_usart8_sem_flag = 0;


void create_usart1_sem(void)
{
	if (s_usart1_sem_flag == 0)
	{
		os_create_sem(&semUsart1TxWait,"usart1_tx",1);
		os_create_sem(&semUsart1RxWait,"usart1_rx",0);
		s_usart1_sem_flag = 1;
	}
}

void create_usart2_sem(void)
{
	if (s_usart2_sem_flag == 0)
	{
		os_create_sem(&semUsart2TxWait,"usart2_tx",1);
		os_create_sem(&semUsart2RxWait,"usart2_rx",0);
		s_usart2_sem_flag = 1;
	}
}

void create_usart3_sem(void)
{
	if (s_usart3_sem_flag == 0)
	{
		os_create_sem(&semUsart3TxWait,"usart3_tx",1);
		os_create_sem(&semUsart3RxWait,"usart3_rx",0);
		s_usart3_sem_flag = 1;
	}
}


void create_usart4_sem(void)
{
	if (s_usart4_sem_flag == 0)
	{
		os_create_sem(&semUsart4TxWait,"usart4_tx",1);
		os_create_sem(&semUsart4RxWait,"usart4_rx",0);
		s_usart4_sem_flag = 1;
	}
}

void create_usart6_sem(void)
{
	if (s_usart6_sem_flag == 0)
	{
		os_create_sem(&semUsart6TxWait,"usart6_tx",1);
		os_create_sem(&semUsart6RxWait,"usart6_rx",0);
		s_usart6_sem_flag = 1;
	}
}

void create_usart7_sem(void)
{
	if (s_usart7_sem_flag == 0)
	{
		os_create_sem(&semUsart7TxWait,"usart7_tx",1);
		os_create_sem(&semUsart7RxWait,"usart7_rx",0);
		s_usart7_sem_flag = 1;
	}
}

void create_usart8_sem(void)
{
	if (s_usart8_sem_flag == 0)
	{
		os_create_sem(&semUsart8TxWait,"usart8_tx",1);
		os_create_sem(&semUsart8RxWait,"usart8_rx",0);
		s_usart8_sem_flag = 1;
	}
}


void create_usart5_sem(void)
{
	if (s_usart5_sem_flag == 0)
	{
		os_create_sem(&semUsart5TxWait,"usart5_tx",1);
		os_create_sem(&semUsart5RxWait,"usart5_rx",0);
		s_usart5_sem_flag = 1;
	}
}


void wait_usart1_rx_sem(unsigned int timeout)
{
	os_sem_pend(&semUsart1RxWait,timeout);
}


void wait_usart2_rx_sem(unsigned int timeout)
{
	os_sem_pend(&semUsart2RxWait,timeout);
}

void wait_usart3_rx_sem(unsigned int timeout)
{
	os_sem_pend(&semUsart3RxWait,timeout);
}

void wait_usart4_rx_sem(unsigned int timeout)
{
	os_sem_pend(&semUsart4RxWait,timeout);
}

void wait_usart5_rx_sem(unsigned int timeout)
{
	os_sem_pend(&semUsart5RxWait,timeout);
}

void wait_usart6_rx_sem(unsigned int timeout)
{
	os_sem_pend(&semUsart6RxWait,timeout);
}

void wait_usart7_rx_sem(unsigned int timeout)
{
	os_sem_pend(&semUsart7RxWait,timeout);
}

void wait_usart8_rx_sem(unsigned int timeout)
{
	os_sem_pend(&semUsart8RxWait,timeout);
}






void post_usart1_rx_sem(void)
{
	os_sem_post(&semUsart1RxWait);
}

void post_usart2_rx_sem(void)
{
	os_sem_post(&semUsart2RxWait);
}


void post_usart3_rx_sem(void)
{
	os_sem_post(&semUsart3RxWait);
}


void post_usart4_rx_sem(void)
{
	os_sem_post(&semUsart4RxWait);
}

void post_usart5_rx_sem(void)
{
	os_sem_post(&semUsart5RxWait);
}

void post_usart6_rx_sem(void)
{
	os_sem_post(&semUsart6RxWait);
}

void post_usart7_rx_sem(void)
{
	os_sem_post(&semUsart7RxWait);
}

void post_usart8_rx_sem(void)
{
	os_sem_post(&semUsart8RxWait);
}



void wait_usart1_tx_sem(unsigned int timeout)
{
	os_sem_pend(&semUsart1TxWait,timeout);
}

void wait_usart2_tx_sem(unsigned int timeout)
{
	os_sem_pend(&semUsart2TxWait,timeout);
}

void wait_usart3_tx_sem(unsigned int timeout)
{
	os_sem_pend(&semUsart3TxWait,timeout);
}


void wait_usart4_tx_sem(unsigned int timeout)
{
	os_sem_pend(&semUsart4TxWait,timeout);
}

void wait_usart5_tx_sem(unsigned int timeout)
{
	os_sem_pend(&semUsart5TxWait,timeout);
}

void wait_usart6_tx_sem(unsigned int timeout)
{
	os_sem_pend(&semUsart6TxWait,timeout);
}

void wait_usart7_tx_sem(unsigned int timeout)
{
	os_sem_pend(&semUsart7TxWait,timeout);
}

void wait_usart8_tx_sem(unsigned int timeout)
{
	os_sem_pend(&semUsart8TxWait,timeout);
}





void post_usart1_tx_sem(void)
{
	os_sem_post(&semUsart1TxWait);
}

void post_usart2_tx_sem(void)
{
	os_sem_post(&semUsart2TxWait);
}

void post_usart3_tx_sem(void)
{
	os_sem_post(&semUsart3TxWait);
}


void post_usart4_tx_sem(void)
{
	os_sem_post(&semUsart4TxWait);
}

void post_usart5_tx_sem(void)
{
	os_sem_post(&semUsart5TxWait);
}

void post_usart6_tx_sem(void)
{
	os_sem_post(&semUsart6TxWait);
}

void post_usart7_tx_sem(void)
{
	os_sem_post(&semUsart7TxWait);
}

void post_usart8_tx_sem(void)
{
	os_sem_post(&semUsart8TxWait);
}



#line 514 "..\\Source\\drivers\\./usart/usart.c"






 
void _usart_irq_handler(UsartRecv *pUsartRecv,
								void *usart_buf,unsigned int usart_buf_len,
								unsigned char ch)
{
	unsigned char *ptr = (unsigned char *)usart_buf;
	unsigned int write_idx = pUsartRecv->write_idx;
	unsigned int old_write_idx = pUsartRecv->write_idx;

	
	write_idx++;
	if (write_idx >= usart_buf_len)
	{
		write_idx = 0;
	}

	
	if (write_idx != pUsartRecv->read_idx)
	{
		ptr[old_write_idx] = ch;
		pUsartRecv->write_idx = write_idx;

		pUsartRecv->timeout = 0;
		pUsartRecv->recving_flag = 1;
	}
}


void _usart_rx_timing(UsartRecv *pUsartRecv,void (*pPostSemFunc)(void))
{
	if (pUsartRecv->recving_flag)
	{
		pUsartRecv->timeout++;
		if (pUsartRecv->timeout >= 6)
		{
			unsigned int widx = 0;
			unsigned int idx = 0;

			pUsartRecv->recving_flag = 0;	
			

			
			widx = pUsartRecv->data_packet_widx;
			widx++;
			if (widx >= 4)
			{
				widx = 0;
			}

			 
			if (pUsartRecv->recv_data_packet_cnt < 4)
			
			{
				idx = pUsartRecv->data_packet_widx;

				 
				pUsartRecv->data_packet_read_idx[idx] = pUsartRecv->last_write_idx;
				 
				pUsartRecv->data_packet_write_idx[idx] = pUsartRecv->write_idx;
				
				pUsartRecv->recv_data_packet_cnt++; 
				pUsartRecv->data_packet_widx = widx;
				 
				pUsartRecv->last_write_idx = pUsartRecv->write_idx;
				
				
				if (pPostSemFunc) pPostSemFunc();
			}

		}

	}
}

void usart_rx_timing(unsigned char channel)
{
	switch (channel)
	{
	case 0:
	_usart_rx_timing(&s_stUsart1Recv,post_usart1_rx_sem);
	break;
	case 1:
	_usart_rx_timing(&s_stUsart2Recv,post_usart2_rx_sem);
	break;
	case 2:
	_usart_rx_timing(&s_stUsart3Recv,post_usart3_rx_sem);
	break;
	case 3:
	_usart_rx_timing(&s_stUsart4Recv,post_usart4_rx_sem);
	break;
	case 4:
		_usart_rx_timing(&s_stUsart5Recv,post_usart5_rx_sem);
	break;
	case 5:
		_usart_rx_timing(&s_stUsart6Recv,post_usart6_rx_sem);

	break;
	case 6:
		_usart_rx_timing(&s_stUsart7Recv,post_usart7_rx_sem);
	break;

	case 7:
		_usart_rx_timing(&s_stUsart8Recv,post_usart8_rx_sem);
	break;


	default:break;
	}
}

unsigned int _usart_read(UsartRecv *pUsartRecv,
								void *usart_buf,unsigned int usart_buf_len,
								void *pOut,unsigned int outbuflen)
{
	unsigned int rlen = 0;

	
	if (pUsartRecv->recv_data_packet_cnt)
	{
		unsigned int idx = 0;
		unsigned int read_idx = 0;
		unsigned int write_idx = 0;
		unsigned int templen = 0;
		unsigned int seg1_len = 0;
		unsigned int seg2_len = 0;

		idx = pUsartRecv->data_packet_ridx;
		read_idx = pUsartRecv->data_packet_read_idx[idx];
		write_idx = pUsartRecv->data_packet_write_idx[idx];

		
		if (write_idx >= read_idx)
		{
			templen = write_idx - read_idx;
		}
		else
		{
			templen = write_idx + usart_buf_len - read_idx ;
		}

		if ((pOut == 0) || (outbuflen == 0))	
		{
			rlen = templen;
		}
		else
		{
			rlen = (templen > outbuflen) ? outbuflen : templen;
			memset(pOut,0,outbuflen);
			if ((rlen + read_idx) <= usart_buf_len)
			{
				if (rlen) memcpy(pOut,(unsigned char *)usart_buf + read_idx,rlen);
			}
			else		
			{
				seg1_len = usart_buf_len - read_idx;
				seg2_len = rlen - seg1_len;
				if (seg1_len) memcpy(pOut,(unsigned char *)usart_buf + read_idx,seg1_len);
				if (seg2_len) memcpy((unsigned char *)pOut + seg1_len,usart_buf,seg2_len);
			}

			pUsartRecv->recv_data_packet_cnt--;
			pUsartRecv->data_packet_ridx = idx + 1;
			if (pUsartRecv->data_packet_ridx >= 4)
			{
				pUsartRecv->data_packet_ridx = 0;
			}			
			pUsartRecv->read_idx = write_idx;		
		}
	}
	return rlen;
}

unsigned int usart_read(unsigned char channel,void *pOut,unsigned int outbuflen,unsigned int timeout)
{
	unsigned int rlen = 0;

	switch (channel)
	{
	case 0:
	wait_usart1_rx_sem(timeout);
	rlen = _usart_read(&s_stUsart1Recv,s_usart1_buf,(2048 + 384),pOut,outbuflen);
	break;
	case 1:
	wait_usart2_rx_sem(timeout);
	rlen = _usart_read(&s_stUsart2Recv,s_usart2_buf,128,pOut,outbuflen);
	break;
	case 2:
	wait_usart3_rx_sem(timeout);
	rlen = _usart_read(&s_stUsart3Recv,s_usart3_buf,1536,pOut,outbuflen);
	break;
	case 3:
	wait_usart4_rx_sem(timeout);
	rlen = _usart_read(&s_stUsart4Recv,s_usart4_buf,(1024),pOut,outbuflen);
	break;
	case 4:
	wait_usart5_rx_sem(timeout);
	rlen = _usart_read(&s_stUsart5Recv,s_usart5_buf,128,pOut,outbuflen);
	break;
	case 5:
		wait_usart6_rx_sem(timeout);
		rlen = _usart_read(&s_stUsart6Recv,s_usart6_buf,128,pOut,outbuflen);
	break;
	case 6:
		wait_usart7_rx_sem(timeout);
		rlen = _usart_read(&s_stUsart7Recv,s_usart7_buf,128,pOut,outbuflen);
	break;
	case 7:
		wait_usart8_rx_sem(timeout);
		rlen = _usart_read(&s_stUsart8Recv,s_usart8_buf,(128),pOut,outbuflen);
	break;
	default:break;
	}

	return rlen;
}

void USART1_IRQHandler(void)
{
	if (USART_GetITStatus(((USART_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3800)), ((uint16_t)0x0525)) == SET)
	{
		unsigned char ch = 0;
		ch = USART_ReceiveData(((USART_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3800)));

		_usart_irq_handler(&s_stUsart1Recv,s_usart1_buf,(2048 + 384),ch);
		
        USART_ClearITPendingBit(((USART_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3800)), ((uint16_t)0x0525));          
	}
}

void USART2_IRQHandler(void)
{
	if (USART_GetITStatus(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4400)), ((uint16_t)0x0525)) == SET)
	{
		unsigned char ch = 0;
		ch = USART_ReceiveData(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4400)));

		_usart_irq_handler(&s_stUsart2Recv,s_usart2_buf,128,ch);
		if (ast_one_dat_arrive_func[1])
		{
			ast_one_dat_arrive_func[1](ch);
		}

		
        USART_ClearITPendingBit(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4400)), ((uint16_t)0x0525));          
	}

}

void USART3_IRQHandler(void)
{
	if (USART_GetITStatus(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4800)), ((uint16_t)0x0525)) == SET)
	{

		unsigned char ch = 0;
		ch = USART_ReceiveData(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4800)));

		_usart_irq_handler(&s_stUsart3Recv,s_usart3_buf,1536,ch);
		
		USART_ClearITPendingBit(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4800)), ((uint16_t)0x0525)); 		 

	}
}




void UART4_IRQHandler(void)
{
	if (USART_GetITStatus(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4C00)), ((uint16_t)0x0525)) == SET)
	{
		unsigned char ch = 0;
		ch = USART_ReceiveData(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4C00)));

		_usart_irq_handler(&s_stUsart4Recv,s_usart4_buf,(1024),ch);
		if (ast_one_dat_arrive_func[3])
		{
			ast_one_dat_arrive_func[3](ch);
		}
		
        USART_ClearITPendingBit(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4C00)), ((uint16_t)0x0525));          
	}
}

void UART5_IRQHandler(void)
{
	if (USART_GetITStatus(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x5000)), ((uint16_t)0x0525)) == SET)
	{
		unsigned char ch = 0;
		ch = USART_ReceiveData(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x5000)));

		_usart_irq_handler(&s_stUsart5Recv,s_usart5_buf,128,ch);
		if (ast_one_dat_arrive_func[4])
		{
			ast_one_dat_arrive_func[4](ch);
		}
		
		USART_ClearITPendingBit(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x5000)), ((uint16_t)0x0525));		    
	}
}

void UART6_IRQHandler(void)
{
	if (USART_GetITStatus(((USART_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x7000)), ((uint16_t)0x0525)) == SET)
	{
		unsigned char ch = 0;
		ch = USART_ReceiveData(((USART_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x7000)));

		_usart_irq_handler(&s_stUsart6Recv,s_usart6_buf,128,ch);
		
		USART_ClearITPendingBit(((USART_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x7000)), ((uint16_t)0x0525)); 		 
	}
}

void UART7_IRQHandler(void)
{
	if (USART_GetITStatus(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x7800)), ((uint16_t)0x0525)) == SET)
	{
		unsigned char ch = 0;
		ch = USART_ReceiveData(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x7800)));

		_usart_irq_handler(&s_stUsart7Recv,s_usart7_buf,128,ch);
		if (ast_one_dat_arrive_func[6])
		{
			ast_one_dat_arrive_func[6](ch);
		}
		USART_ClearITPendingBit(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x7800)), ((uint16_t)0x0525));
	}
}

void UART8_IRQHandler(void)
{
	if (USART_GetITStatus(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x7C00)), ((uint16_t)0x0525)) == SET)
	{
		unsigned char ch = 0;
		ch = USART_ReceiveData(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x7C00)));

		_usart_irq_handler(&s_stUsart8Recv,s_usart8_buf,(128),ch);
		if (ast_one_dat_arrive_func[7])
		{
			ast_one_dat_arrive_func[7](ch);
		}
		
		USART_ClearITPendingBit(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x7C00)), ((uint16_t)0x0525)); 		 
	}
}


void USART1_NVIC_Configuration(void)
{
   NVIC_InitTypeDef NVIC_InitStructure;

   
  NVIC_InitStructure.NVIC_IRQChannel = USART1_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 3;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 3;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
}

void USART2_NVIC_Configuration(void)
{
   NVIC_InitTypeDef NVIC_InitStructure;

   
  NVIC_InitStructure.NVIC_IRQChannel = USART2_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 3;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 1;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
}

void USART3_NVIC_Configuration(void)
{
   NVIC_InitTypeDef NVIC_InitStructure;

   
  NVIC_InitStructure.NVIC_IRQChannel = USART3_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 2;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 1;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
}

void USART4_NVIC_Configuration(void)
{
   NVIC_InitTypeDef NVIC_InitStructure;

   
  NVIC_InitStructure.NVIC_IRQChannel = UART4_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 3;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 3;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
}

void USART5_NVIC_Configuration(void)
{
   NVIC_InitTypeDef NVIC_InitStructure;

   
  NVIC_InitStructure.NVIC_IRQChannel = UART5_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 3;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 3;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
}

void USART6_NVIC_Configuration(void)
{
   NVIC_InitTypeDef NVIC_InitStructure;

   
  NVIC_InitStructure.NVIC_IRQChannel = UART6_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 3;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 3;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
}

void USART7_NVIC_Configuration(void)
{
   NVIC_InitTypeDef NVIC_InitStructure;

   
  NVIC_InitStructure.NVIC_IRQChannel = UART7_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 3;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 3;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
}

void USART8_NVIC_Configuration(void)
{
   NVIC_InitTypeDef NVIC_InitStructure;

   
  NVIC_InitStructure.NVIC_IRQChannel = UART8_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 3;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 3;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
}



void USART1_Init(unsigned long bps,char iParity)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	USART_InitTypeDef USART_InitStructure;

	 



	RCC_APB2PeriphClockCmd(((uint32_t)0x00000004) | ((uint32_t)0x00000001), ENABLE);

	RCC_APB2PeriphClockCmd(((uint32_t)0x00004000), ENABLE); 

#line 995 "..\\Source\\drivers\\./usart/usart.c"
	 
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x0200);
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800)), &GPIO_InitStructure);

	 
	
	
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	
	GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x0400);
	GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800)), &GPIO_InitStructure);

	USART_InitStructure.USART_BaudRate = bps;
	if (iParity == 0)
	{
		USART_InitStructure.USART_WordLength = ((uint16_t)0x0000);
		USART_InitStructure.USART_Parity = ((uint16_t)0x0000);
	}
	else
	{
		USART_InitStructure.USART_WordLength = ((uint16_t)0x1000);
		if (iParity == 1)
		{
			USART_InitStructure.USART_Parity = ((uint16_t)0x0600);
		}
		else
		{
			USART_InitStructure.USART_Parity = ((uint16_t)0x0400);
		}
	}
	USART_InitStructure.USART_StopBits = ((uint16_t)0x0000);
	USART_InitStructure.USART_HardwareFlowControl = ((uint16_t)0x0000);
	USART_InitStructure.USART_Mode = ((uint16_t)0x0004) | ((uint16_t)0x0008);

	USART_DeInit(((USART_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3800)));
	 
	USART_Init(((USART_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3800)), &USART_InitStructure);

	USART1_NVIC_Configuration();
	 
	USART_ITConfig(((USART_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3800)), ((uint16_t)0x0525), ENABLE);
	USART_ClearFlag(((USART_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3800)),((uint16_t)0x0040));		   

	 
	USART_Cmd(((USART_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3800)), ENABLE);
}


void USART2_Init(unsigned long bps,char iParity)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	USART_InitTypeDef USART_InitStructure;

	 



	RCC_APB2PeriphClockCmd(((uint32_t)0x00000004) | ((uint32_t)0x00000001), ENABLE);

	RCC_APB1PeriphClockCmd(((uint32_t)0x00020000), ENABLE); 

#line 1072 "..\\Source\\drivers\\./usart/usart.c"
	 
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x0004);
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800)), &GPIO_InitStructure);

	 
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x0008);
	GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800)), &GPIO_InitStructure);

	USART_InitStructure.USART_BaudRate = bps;
	if (iParity == 0)
	{
		USART_InitStructure.USART_WordLength = ((uint16_t)0x0000);
		USART_InitStructure.USART_Parity = ((uint16_t)0x0000);
	}
	else
	{
		USART_InitStructure.USART_WordLength = ((uint16_t)0x1000);
		if (iParity == 1)
		{
			USART_InitStructure.USART_Parity = ((uint16_t)0x0600);
		}
		else
		{
			USART_InitStructure.USART_Parity = ((uint16_t)0x0400);
		}
	}
	USART_InitStructure.USART_StopBits = ((uint16_t)0x0000);
	USART_InitStructure.USART_HardwareFlowControl = ((uint16_t)0x0000);
	USART_InitStructure.USART_Mode = ((uint16_t)0x0004) | ((uint16_t)0x0008);

	USART_DeInit(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4400)));
	 
	USART_Init(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4400)), &USART_InitStructure);

	USART2_NVIC_Configuration();

	 
	USART_ITConfig(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4400)), ((uint16_t)0x0525), ENABLE);
	USART_ClearFlag(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4400)),((uint16_t)0x0040));		   

	 
	USART_Cmd(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4400)), ENABLE);
}



void USART3_Init(unsigned long bps,char iParity)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	USART_InitTypeDef USART_InitStructure;

	 

	RCC_APB2PeriphClockCmd(((uint32_t)0x00000020) | ((uint32_t)0x00000001), ENABLE);



	RCC_APB1PeriphClockCmd(((uint32_t)0x00040000), ENABLE); 


	GPIO_PinRemapConfig(((uint32_t)0x00140030),ENABLE);

	 
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x0100);
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1400)), &GPIO_InitStructure);

	 
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x0200);
	GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1400)), &GPIO_InitStructure);

#line 1160 "..\\Source\\drivers\\./usart/usart.c"
	USART_InitStructure.USART_BaudRate = bps;
	if (iParity == 0)
	{
		USART_InitStructure.USART_WordLength = ((uint16_t)0x0000);
		USART_InitStructure.USART_Parity = ((uint16_t)0x0000);
	}
	else
	{
		USART_InitStructure.USART_WordLength = ((uint16_t)0x1000);
		if (iParity == 1)
		{
			USART_InitStructure.USART_Parity = ((uint16_t)0x0600);
		}
		else
		{
			USART_InitStructure.USART_Parity = ((uint16_t)0x0400);
		}
	}
	USART_InitStructure.USART_StopBits = ((uint16_t)0x0000);
	USART_InitStructure.USART_HardwareFlowControl = ((uint16_t)0x0000);
	USART_InitStructure.USART_Mode = ((uint16_t)0x0004) | ((uint16_t)0x0008);

	USART_DeInit(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4800)));
	 
	USART_Init(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4800)), &USART_InitStructure);

	USART3_NVIC_Configuration();

	 
	USART_ITConfig(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4800)), ((uint16_t)0x0525), ENABLE);
	USART_ClearFlag(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4800)),((uint16_t)0x0040));		   

	 
	USART_Cmd(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4800)), ENABLE);
}




void USART4_Init(unsigned long bps,char iParity)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	USART_InitTypeDef USART_InitStructure;
	unsigned int temp = 0;

	temp = temp;
	 



	RCC_APB2PeriphClockCmd(((uint32_t)0x00000010) | ((uint32_t)0x00000001), ENABLE);


	RCC_APB1PeriphClockCmd(((uint32_t)0x00080000), ENABLE); 
#line 1232 "..\\Source\\drivers\\./usart/usart.c"
	 
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x0400);
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1000)), &GPIO_InitStructure);

	 
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x0800);
	GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1000)), &GPIO_InitStructure);

	USART_InitStructure.USART_BaudRate = bps;
	if (iParity == 0)
	{
		USART_InitStructure.USART_WordLength = ((uint16_t)0x0000);
		USART_InitStructure.USART_Parity = ((uint16_t)0x0000);
	}
	else
	{
		USART_InitStructure.USART_WordLength = ((uint16_t)0x1000);
		if (iParity == 1)
		{
			USART_InitStructure.USART_Parity = ((uint16_t)0x0600);
		}
		else
		{
			USART_InitStructure.USART_Parity = ((uint16_t)0x0400);
		}
	}
	USART_InitStructure.USART_StopBits = ((uint16_t)0x0000);
	USART_InitStructure.USART_HardwareFlowControl = ((uint16_t)0x0000);
	USART_InitStructure.USART_Mode = ((uint16_t)0x0004) | ((uint16_t)0x0008);

	USART_DeInit(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4C00)));
	 
	USART_Init(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4C00)), &USART_InitStructure);

	USART4_NVIC_Configuration();

	 
	USART_ITConfig(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4C00)), ((uint16_t)0x0525), ENABLE);
	USART_ClearFlag(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4C00)),((uint16_t)0x0040));		   

	 
	USART_Cmd(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4C00)), ENABLE);

}


void USART5_Init(unsigned long bps,char iParity)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	USART_InitTypeDef USART_InitStructure;

	 
	RCC_APB2PeriphClockCmd(((uint32_t)0x00000010) | ((uint32_t)0x00000020) | ((uint32_t)0x00000001), ENABLE);
	RCC_APB1PeriphClockCmd(((uint32_t)0x00100000), ENABLE); 

	 
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x1000);
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1000)), &GPIO_InitStructure);

	 
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x0004);
	GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1400)), &GPIO_InitStructure);

	USART_InitStructure.USART_BaudRate = bps;
	if (iParity == 0)
	{
		USART_InitStructure.USART_WordLength = ((uint16_t)0x0000);
		USART_InitStructure.USART_Parity = ((uint16_t)0x0000);
	}
	else
	{
		USART_InitStructure.USART_WordLength = ((uint16_t)0x1000);
		if (iParity == 1)
		{
			USART_InitStructure.USART_Parity = ((uint16_t)0x0600);
		}
		else
		{
			USART_InitStructure.USART_Parity = ((uint16_t)0x0400);
		}
	}
	USART_InitStructure.USART_StopBits = ((uint16_t)0x0000);
	USART_InitStructure.USART_HardwareFlowControl = ((uint16_t)0x0000);
	USART_InitStructure.USART_Mode = ((uint16_t)0x0004) | ((uint16_t)0x0008);

	USART_DeInit(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x5000)));
	 
	USART_Init(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x5000)), &USART_InitStructure);

	USART5_NVIC_Configuration();

	 
	USART_ITConfig(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x5000)), ((uint16_t)0x0525), ENABLE);
	USART_ClearFlag(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x5000)),((uint16_t)0x0040));		   

	 
	USART_Cmd(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x5000)), ENABLE);
}



void USART6_Init(unsigned long bps,char iParity)
{
	unsigned int temp = 0;
	GPIO_InitTypeDef GPIO_InitStructure;
	USART_InitTypeDef USART_InitStructure;

	 
	RCC_APB2PeriphClockCmd(((uint32_t)0x00000010) | ((uint32_t)0x00000001), ENABLE);
	

	
	temp = *(unsigned int *)(0x40021000 + 0x64);
	temp |= (1 << 24);
	*(unsigned int *)(0x40021000 + 0x64) = temp;

	 
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x0040);
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1000)), &GPIO_InitStructure);

	 
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x0080);
	GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1000)), &GPIO_InitStructure);

	USART_InitStructure.USART_BaudRate = bps;
	if (iParity == 0)
	{
		USART_InitStructure.USART_WordLength = ((uint16_t)0x0000);
		USART_InitStructure.USART_Parity = ((uint16_t)0x0000);
	}
	else
	{
		USART_InitStructure.USART_WordLength = ((uint16_t)0x1000);
		if (iParity == 1)
		{
			USART_InitStructure.USART_Parity = ((uint16_t)0x0600);
		}
		else
		{
			USART_InitStructure.USART_Parity = ((uint16_t)0x0400);
		}
	}
	USART_InitStructure.USART_StopBits = ((uint16_t)0x0000);
	USART_InitStructure.USART_HardwareFlowControl = ((uint16_t)0x0000);
	USART_InitStructure.USART_Mode = ((uint16_t)0x0004) | ((uint16_t)0x0008);

	USART_DeInit(((USART_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x7000)));
	 
	USART_Init(((USART_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x7000)), &USART_InitStructure);

	USART6_NVIC_Configuration();

	 
	USART_ITConfig(((USART_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x7000)), ((uint16_t)0x0525), ENABLE);
	USART_ClearFlag(((USART_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x7000)),((uint16_t)0x0040));		   

	 
	USART_Cmd(((USART_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x7000)), ENABLE);
}





void USART7_Init(unsigned long bps,char iParity)
{
	unsigned int temp = 0;
	GPIO_InitTypeDef GPIO_InitStructure;
	USART_InitTypeDef USART_InitStructure;

	 
	RCC_APB2PeriphClockCmd(((uint32_t)0x00000010) | ((uint32_t)0x00000001), ENABLE);

	
	temp = *(unsigned int *)(0x40021000 + 0x68);
	temp |= 0x40000000;
	*(unsigned int *)(0x40021000 + 0x68) = temp;

	 
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x0040);
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1000)), &GPIO_InitStructure);

	 
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x0080);
	GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1000)), &GPIO_InitStructure);

	USART_InitStructure.USART_BaudRate = bps;
	if (iParity == 0)
	{
		USART_InitStructure.USART_WordLength = ((uint16_t)0x0000);
		USART_InitStructure.USART_Parity = ((uint16_t)0x0000);
	}
	else
	{
		USART_InitStructure.USART_WordLength = ((uint16_t)0x1000);
		if (iParity == 1)
		{
			USART_InitStructure.USART_Parity = ((uint16_t)0x0600);
		}
		else
		{
			USART_InitStructure.USART_Parity = ((uint16_t)0x0400);
		}
	}
	USART_InitStructure.USART_StopBits = ((uint16_t)0x0000);
	USART_InitStructure.USART_HardwareFlowControl = ((uint16_t)0x0000);
	USART_InitStructure.USART_Mode = ((uint16_t)0x0004) | ((uint16_t)0x0008);

	USART_DeInit(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x7800)));
	 
	USART_Init(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x7800)), &USART_InitStructure);

	USART7_NVIC_Configuration();

	 
	USART_ITConfig(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x7800)), ((uint16_t)0x0525), ENABLE);
	USART_ClearFlag(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x7800)),((uint16_t)0x0040));		   

	 
	USART_Cmd(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x7800)), ENABLE);
}



void USART8_Init(unsigned long bps,char iParity)
{
	unsigned int temp = 0;
	GPIO_InitTypeDef GPIO_InitStructure;
	USART_InitTypeDef USART_InitStructure;

	 
	RCC_APB2PeriphClockCmd(((uint32_t)0x00000040) | ((uint32_t)0x00000001), ENABLE);

	
	temp = *(unsigned int *)(0x40021000 + 0x68);
	temp |= 0x80000000;
	*(unsigned int *)(0x40021000 + 0x68) = temp;

	 
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x0002);
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1800)), &GPIO_InitStructure);

	 
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x0001);
	GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1800)), &GPIO_InitStructure);

	USART_InitStructure.USART_BaudRate = bps;
	if (iParity == 0)
	{
		USART_InitStructure.USART_WordLength = ((uint16_t)0x0000);
		USART_InitStructure.USART_Parity = ((uint16_t)0x0000);
	}
	else
	{
		USART_InitStructure.USART_WordLength = ((uint16_t)0x1000);
		if (iParity == 1)
		{
			USART_InitStructure.USART_Parity = ((uint16_t)0x0600);
		}
		else
		{
			USART_InitStructure.USART_Parity = ((uint16_t)0x0400);
		}
	}
	USART_InitStructure.USART_StopBits = ((uint16_t)0x0000);
	USART_InitStructure.USART_HardwareFlowControl = ((uint16_t)0x0000);
	USART_InitStructure.USART_Mode = ((uint16_t)0x0004) | ((uint16_t)0x0008);

	USART_DeInit(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x7C00)));
	 
	USART_Init(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x7C00)), &USART_InitStructure);

	USART8_NVIC_Configuration();

	 
	USART_ITConfig(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x7C00)), ((uint16_t)0x0525), ENABLE);
	USART_ClearFlag(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x7C00)),((uint16_t)0x0040));		   

	 
	USART_Cmd(((USART_TypeDef *) (((uint32_t)0x40000000) + 0x7C00)), ENABLE);
}



void usart_init(unsigned char channel,unsigned long bps,char iParity)
{
	switch (channel)
	{
	case 0:
		create_usart1_sem();
		USART1_Init(bps,iParity);
	break;
	case 1:
		create_usart2_sem();
		USART2_Init(bps,iParity);
	break;
	case 2:
		create_usart3_sem();
		USART3_Init(bps,iParity);
	break;

	case 3:
		create_usart4_sem();
		USART4_Init(bps,iParity);
	break;
	case 4:
		create_usart5_sem();
		USART5_Init(bps,iParity);
	break;
	case 5:
		create_usart6_sem();
		USART6_Init(bps,iParity);

	break;
	case 6:
		create_usart7_sem();
		USART7_Init(bps,iParity);
	break;
	case 7:
		create_usart8_sem();
		USART8_Init(bps,iParity);
	break;

	default:break;
	}
}

unsigned char _usart_send_char(unsigned char channel,unsigned char ch)
{
	USART_TypeDef *usartx = 0;

	if (channel >= 8)
	{
		return 0;
	}
	usartx = pUSARTx[channel];

	while (!(usartx->SR & ((uint16_t)0x0080)));
	usartx->DR = ch;

	return ch;
}

unsigned int _usart_send_data(unsigned char channel,void *buf,unsigned int len)
{
	unsigned int i = 0;
	USART_TypeDef *usartx = 0;

	if ((buf == 0) || (len == 0) || (channel >= 8))
	{
		return 0;
	}

	usartx = pUSARTx[channel];

	for (i = 0; i < len; i++)
	{
		while (!(usartx->SR & ((uint16_t)0x0080)));
		usartx->DR = *((unsigned char *)buf + i);
	}

	return len;
}


unsigned int usart_send_data(unsigned char channel,void *buf,unsigned int len)
{
	unsigned int i = 0;
	USART_TypeDef *usartx = 0;

	if ((buf == 0) || (len == 0) || (channel >= 8))
	{
		return 0;
	}

	usartx = pUSARTx[channel];

	if (channel == 0)
	{
		wait_usart1_tx_sem(0);
	}
	else if (channel == 1)
	{
		wait_usart2_tx_sem(0);
	}
	else if (channel == 2)
	{
		wait_usart3_tx_sem(0);
	}
	else if (channel == 3)
	{
		wait_usart4_tx_sem(0);
	}
	else if (channel == 4)
	{
		wait_usart5_tx_sem(0);
	}
	else if (channel == 5)
	{
		wait_usart6_tx_sem(0);
	}
	else if (channel == 6)
	{
		wait_usart7_tx_sem(0);
	}
	else if (channel == 7)
	{
		wait_usart8_tx_sem(0);
	}


	for (i = 0; i < len; i++)
	{
		while (!(usartx->SR & ((uint16_t)0x0080)));
		usartx->DR = *((unsigned char *)buf + i);
	}

	if (channel == 0)
	{
		post_usart1_tx_sem();
	}
	else if (channel == 1)
	{
		post_usart2_tx_sem();
	}
	else if (channel == 2)
	{
		post_usart3_tx_sem();
	}
	else if (channel == 3)
	{
		post_usart4_tx_sem();
	}
	else if (channel == 4)
	{
		post_usart5_tx_sem();
	}
	else if (channel == 5)
	{
		post_usart6_tx_sem();
	}
	else if (channel == 6)
	{
		post_usart7_tx_sem();
	}
	else if (channel == 7)
	{
		post_usart8_tx_sem();
	}

	return len;
}

usart_data_arrive_callback get_usart_data_arrive_callback(unsigned char channel)
{
	if (channel >= 8)
	{
		return 0;
	}

	return apfusartcb[channel];
}

void set_usart_data_arrive_callback(unsigned char channel,usart_data_arrive_callback pf)
{
	if (channel >= 8)
	{
		return ;
	}

	apfusartcb[channel] = pf;
}

int install_usart_recv_hook(unsigned char channel,void (*pf)(unsigned char ch))
{
	if (channel >= 8)
	{
		return 1;
	}

	ast_one_dat_arrive_func[channel] = pf;
	return 0;
}


















#line 45 "..\\Source\\drivers\\drivers.c"
#line 1 "..\\Source\\drivers\\./adc/adc.c"
#line 2 "..\\Source\\drivers\\./adc/adc.c"

typedef struct tagADCGPIOList
{
	uint32_t RCC_APB2Periph;
	GPIO_TypeDef* GPIOx;
	uint16_t GPIO_Pin;
}ADCGPIOList;

ADCGPIOList stADCGPIOList[] = 
{
{((uint32_t)0x00000004),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800)),((uint16_t)0x0001)},
{((uint32_t)0x00000004),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800)),((uint16_t)0x0002)},
{((uint32_t)0x00000004),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800)),((uint16_t)0x0004)},
{((uint32_t)0x00000004),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800)),((uint16_t)0x0008)},
{((uint32_t)0x00000004),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800)),((uint16_t)0x0010)},
{((uint32_t)0x00000004),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800)),((uint16_t)0x0020)},
{((uint32_t)0x00000004),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800)),((uint16_t)0x0040)},
{((uint32_t)0x00000004),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800)),((uint16_t)0x0080)},

{((uint32_t)0x00000008),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0C00)),((uint16_t)0x0001)},
{((uint32_t)0x00000008),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0C00)),((uint16_t)0x0002)},

{((uint32_t)0x00000010),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1000)),((uint16_t)0x0001)},
{((uint32_t)0x00000010),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1000)),((uint16_t)0x0002)},
{((uint32_t)0x00000010),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1000)),((uint16_t)0x0004)},
{((uint32_t)0x00000010),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1000)),((uint16_t)0x0008)},
{((uint32_t)0x00000010),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1000)),((uint16_t)0x0010)},
{((uint32_t)0x00000010),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1000)),((uint16_t)0x0020)},
};





void ADC_GPIO_Init(uint8_t channel)
{
	GPIO_InitTypeDef GPIO_InitStructure;

	
	RCC_APB2PeriphClockCmd(stADCGPIOList[channel].RCC_APB2Periph,ENABLE);

	GPIO_InitStructure.GPIO_Mode  = GPIO_Mode_AIN;
	GPIO_InitStructure.GPIO_Pin  = stADCGPIOList[channel].GPIO_Pin;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(stADCGPIOList[channel].GPIOx,&GPIO_InitStructure);
}


void _ADC_Init(ADC_TypeDef* ADCx)
{
	ADC_InitTypeDef ADC_InitStructure;

	if (ADCx == ((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2800)))
	{
		RCC_APB2PeriphClockCmd(((uint32_t)0x00000400),ENABLE);
	}
	else if (ADCx == ((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3C00)))
	{
		RCC_APB2PeriphClockCmd(((uint32_t)0x00008000),ENABLE);
	}
	else
	{
		RCC_APB2PeriphClockCmd(((uint32_t)0x00000200),ENABLE);
	}
	RCC_ADCCLKConfig(((uint32_t)0x0000C000));	 

	ADC_DeInit(ADCx);
	ADC_InitStructure.ADC_Mode = ((uint32_t)0x00000000);
	ADC_InitStructure.ADC_ScanConvMode = DISABLE;	
	ADC_InitStructure.ADC_ContinuousConvMode = DISABLE;
	ADC_InitStructure.ADC_DataAlign = ((uint32_t)0x00000000);
	ADC_InitStructure.ADC_ExternalTrigConv= ((uint32_t)0x000E0000);
	ADC_InitStructure.ADC_NbrOfChannel = 1;
	ADC_Init(ADCx,&ADC_InitStructure);

	
	ADC_Cmd(ADCx,ENABLE);

	
	ADC_ResetCalibration(ADCx);
	while(ADC_GetResetCalibrationStatus(ADCx));
	ADC_StartCalibration(ADCx);
	while(ADC_GetCalibrationStatus(ADCx));
}

void ADC1_Init(uint8_t channel)
{
	if (channel > 15) return ;
	ADC_GPIO_Init(channel);
	_ADC_Init(((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2400)));
}

void ADC2_Init(uint8_t channel)
{
	if (channel > 15) return ;
	ADC_GPIO_Init(channel);
	_ADC_Init(((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2800)));
}

void ADC3_Init(uint8_t channel)
{
	if (channel > 15) return ;
	ADC_GPIO_Init(channel);
	_ADC_Init(((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3C00)));
}


uint16_t GetADCValue(ADC_TypeDef* ADCx,uint8_t channel)
{
	uint16_t cnt = 0;
	uint16_t tempdata = 0; 

	if (channel > 15) return 0;

	ADC_RegularChannelConfig(ADCx,channel,1,((uint8_t)0x05));
	ADC_SoftwareStartConvCmd(ADCx,ENABLE);
	while(!ADC_GetFlagStatus(ADCx, ((uint8_t)0x02)))	
	{
		cnt++;
		if (cnt > 0x3FFF)
		{
			break;
		}
	}
	tempdata =  ADC_GetConversionValue(ADCx);

	return tempdata;
}





#line 46 "..\\Source\\drivers\\drivers.c"
#line 1 "..\\Source\\drivers\\./can/can.c"



 
#line 6 "..\\Source\\drivers\\./can/can.c"
#line 7 "..\\Source\\drivers\\./can/can.c"
#line 8 "..\\Source\\drivers\\./can/can.c"


CanRxMsg RxMessage1;
CanRxMsg RxMessage2;


CanMsgArriveCallBack pCan1MsgArrive = 0;
CanMsgArriveCallBack pCan2MsgArrive = 0;
CanMsgArriveCallBack pDrvCan1MsgArrive = 0;
CanMsgArriveCallBack pDrvCan2MsgArrive = 0;

unsigned long can1_total_msg_cnt = 0;
unsigned long can2_total_msg_cnt = 0;


unsigned long can1_recv_total_msg_cnt(void)
{
	return can1_total_msg_cnt;
}

unsigned long can2_recv_total_msg_cnt(void)
{
	return can2_total_msg_cnt;
}

unsigned long can3_recv_total_msg_cnt(void)
{
	return 0;
}



int install_can1_msg_arrive_hook(void (*pf)(CanRxMsg *))
{
	pCan1MsgArrive = pf;
	return 0;
}

int install_can2_msg_arrive_hook(void (*pf)(CanRxMsg *))
{
	pCan2MsgArrive = pf;
	return 0;
}

int install_can3_msg_arrive_hook(void (*pf)(CanRxMsg *))
{
	return 0;
}

int drv_install_can1_msg_arrive_hook(void (*pf)(CanRxMsg *))
{
	pDrvCan1MsgArrive = pf;
	return 0;
}

int drv_install_can2_msg_arrive_hook(void (*pf)(CanRxMsg *))
{
	pDrvCan2MsgArrive = pf;
	return 0;
}

int drv_install_can3_msg_arrive_hook(void (*pf)(CanRxMsg *))
{
	return 0;
}



char IsHaveCan1Data(void)
{
	return 0;
}

char IsHaveCan2Data(void)
{
	return 0;
}


int ReadCan1Msg(CanRxMsg *pMsg)
{
	return 0;
}


int ReadCan2Msg(CanRxMsg *pMsg)
{
	return 0;
}



void USB_LP_CAN1_RX0_IRQHandler(void)
{	
	if( CAN_GetITStatus(((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400)), ((uint32_t)0x00000002)) == SET )
	{
		can1_total_msg_cnt++;

		CAN_Receive(((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400)), ((uint8_t)0x00), &RxMessage1);

		
		if (pDrvCan1MsgArrive)
		{
			pDrvCan1MsgArrive(&RxMessage1);
		}

		
		if (pCan1MsgArrive)
		{
			pCan1MsgArrive(&RxMessage1);
		}

		CAN_ClearITPendingBit(((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400)),((uint32_t)0x00000002));
	}
}


void CAN2_RX1_IRQHandler(void)
{
	if( CAN_GetITStatus(((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6800)), ((uint32_t)0x00000010)) == SET )
	{
		can2_total_msg_cnt++;
		
		CAN_Receive(((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6800)), ((uint8_t)0x01), &RxMessage2);
		
		if (pDrvCan2MsgArrive)
		{
			pDrvCan2MsgArrive(&RxMessage2);
		}
		
		if (pCan2MsgArrive)
		{
			pCan2MsgArrive(&RxMessage2);
		}
		CAN_ClearITPendingBit(((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6800)),((uint32_t)0x00000010));
	}
}














void CAN1_Config(uint8_t sjw,uint8_t bs1,uint8_t bs2,uint16_t pres)
{
    GPIO_InitTypeDef GPIO_InitStructure;
    CAN_InitTypeDef        CAN_InitStructure;
    CAN_FilterInitTypeDef  CAN_FilterInitStructure;

	NVIC_InitTypeDef NVIC_InitStructure;


     





	RCC_APB2PeriphClockCmd(((uint32_t)0x00000004) | ((uint32_t)0x00000001), ENABLE);

	RCC_APB1PeriphClockCmd(((uint32_t)0x02000000), ENABLE);

#line 203 "..\\Source\\drivers\\./can/can.c"
	 
	GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x0800);
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800)), &GPIO_InitStructure);
	 
	GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x1000);
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800)), &GPIO_InitStructure);






     									  
    NVIC_InitStructure.NVIC_IRQChannel=USB_LP_CAN1_RX0_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 3;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 3;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);									


     
	CAN_DeInit(((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400)));
    CAN_StructInit(&CAN_InitStructure);   

	CAN_InitStructure.CAN_TTCM=DISABLE;				
	CAN_InitStructure.CAN_ABOM=ENABLE;				
	CAN_InitStructure.CAN_AWUM=DISABLE;				
	CAN_InitStructure.CAN_NART=DISABLE;				
	CAN_InitStructure.CAN_RFLM=DISABLE;				
	CAN_InitStructure.CAN_TXFP=DISABLE;				
    CAN_InitStructure.CAN_Mode=((uint8_t)0x00);   
	
    CAN_InitStructure.CAN_SJW=sjw;
    CAN_InitStructure.CAN_BS1=bs1;  
    CAN_InitStructure.CAN_BS2=bs2;	
    CAN_InitStructure.CAN_Prescaler=pres;

    CAN_Init(((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400)),&CAN_InitStructure);	

    CAN_FilterInitStructure.CAN_FilterNumber=0;	 
    CAN_FilterInitStructure.CAN_FilterMode=((uint8_t)0x00);	 
    CAN_FilterInitStructure.CAN_FilterScale=((uint8_t)0x01);   
    CAN_FilterInitStructure.CAN_FilterIdHigh=0x0000;			
    CAN_FilterInitStructure.CAN_FilterIdLow=0x0000;				
    CAN_FilterInitStructure.CAN_FilterMaskIdHigh=0x0000;		
    CAN_FilterInitStructure.CAN_FilterMaskIdLow=0x0000;
    CAN_FilterInitStructure.CAN_FilterFIFOAssignment=((uint8_t)0x00);	 
    CAN_FilterInitStructure.CAN_FilterActivation=ENABLE;
    CAN_FilterInit(&CAN_FilterInitStructure);

    CAN_ITConfig(((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400)),((uint32_t)0x00000002),ENABLE);  
}





 
void CAN2_Config(uint8_t sjw,uint8_t bs1,uint8_t bs2,uint16_t pres)
{
    GPIO_InitTypeDef GPIO_InitStructure;
    CAN_InitTypeDef        CAN_InitStructure;
    CAN_FilterInitTypeDef  CAN_FilterInitStructure;

	NVIC_InitTypeDef NVIC_InitStructure;


     
	RCC_APB2PeriphClockCmd(((uint32_t)0x00000008) | ((uint32_t)0x00000001), ENABLE);
	RCC_APB1PeriphClockCmd(((uint32_t)0x04000000), ENABLE);
#line 290 "..\\Source\\drivers\\./can/can.c"
	 
	GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x1000);
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0C00)), &GPIO_InitStructure);
	 
	GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x2000);
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0C00)), &GPIO_InitStructure);								






	 								 	  
    NVIC_InitStructure.NVIC_IRQChannel=CAN2_RX1_IRQn;	
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 3;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 3;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);								  	

     
	CAN_DeInit(((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6800)));
    CAN_StructInit(&CAN_InitStructure);   

	CAN_InitStructure.CAN_TTCM=DISABLE;				
	CAN_InitStructure.CAN_ABOM=ENABLE;				
	CAN_InitStructure.CAN_AWUM=DISABLE;				
	CAN_InitStructure.CAN_NART=DISABLE;				
	CAN_InitStructure.CAN_RFLM=DISABLE;				
	CAN_InitStructure.CAN_TXFP=DISABLE;				
    CAN_InitStructure.CAN_Mode=((uint8_t)0x00);   
	
    CAN_InitStructure.CAN_SJW=sjw;
    CAN_InitStructure.CAN_BS1=bs1;  
    CAN_InitStructure.CAN_BS2=bs2;	
    CAN_InitStructure.CAN_Prescaler=pres;

    CAN_Init(((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6800)),&CAN_InitStructure);   

    CAN_FilterInitStructure.CAN_FilterNumber=15;	
    CAN_FilterInitStructure.CAN_FilterMode=((uint8_t)0x00);	 
    CAN_FilterInitStructure.CAN_FilterScale=((uint8_t)0x01);   
    CAN_FilterInitStructure.CAN_FilterIdHigh=0x0000;			
    CAN_FilterInitStructure.CAN_FilterIdLow=0x0000;				
    CAN_FilterInitStructure.CAN_FilterMaskIdHigh=0x0000;		
    CAN_FilterInitStructure.CAN_FilterMaskIdLow=0x0000;
    CAN_FilterInitStructure.CAN_FilterFIFOAssignment=((uint8_t)0x01);	 
    CAN_FilterInitStructure.CAN_FilterActivation=ENABLE;
    CAN_FilterInit(&CAN_FilterInitStructure);

	CAN_ITConfig(((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6800)),((uint32_t)0x00000010),ENABLE);  
}



 
int CAN1_SendData(CanTxMsg* CanData)
{
    unsigned int retrys=0;
    unsigned char mailbox=0;

    do
	{
	    mailbox=CAN_Transmit(((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400)),CanData);
		retrys++;
	}
	while((mailbox==((uint8_t)0x04))&&(retrys<250));

	if (mailbox == ((uint8_t)0x04))
	{
		return 1;
	}

	retrys = 0;
	while (CAN_TransmitStatus(((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400)),mailbox) != ((uint8_t)0x01))
	{
		retrys++;
		if (retrys >= 8000)
		{
			return 1;
		}
	}

	return 0;
}



 
int CAN2_SendData(CanTxMsg* CanData)
{
    unsigned int retrys=0;
    unsigned char mailbox=0;

    do
	{
	    mailbox=CAN_Transmit(((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6800)),CanData);
		retrys++;
	}
	while((mailbox==((uint8_t)0x04))&&(retrys<250));

	if (mailbox == ((uint8_t)0x04))
	{
		return 1;
	}

	retrys = 0;
	while (CAN_TransmitStatus(((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6800)),mailbox) != ((uint8_t)0x01))
	{
		retrys++;
		if (retrys >= 8000)
		{
			return 1;
		}
	}

	return 0;
}




void CAN1_Init(unsigned int bps)
{
	switch(bps)
	{
		case 1000: 
			CAN1_Config(((uint8_t)0x00),((uint8_t)0x06),((uint8_t)0x01),5);
			break;
		case 500: 
			CAN1_Config(((uint8_t)0x00),((uint8_t)0x06),((uint8_t)0x01),10);
			break;
		case 250: 
			CAN1_Config(((uint8_t)0x00),((uint8_t)0x06),((uint8_t)0x01),20);
			break;
		case 125: 
			CAN1_Config(((uint8_t)0x00),((uint8_t)0x06),((uint8_t)0x01),40);
			break;
		case 100: 
			CAN1_Config(((uint8_t)0x00),((uint8_t)0x06),((uint8_t)0x01),50);
			break;
		case 50: 
			CAN1_Config(((uint8_t)0x00),((uint8_t)0x06),((uint8_t)0x01),100);
			break;
		default:break;
	}
}


void CAN2_Init(unsigned int bps)
{
	switch(bps)
	{
		case 1000: 
			CAN2_Config(((uint8_t)0x00),((uint8_t)0x06),((uint8_t)0x01),5);
			break;
		case 500: 
			CAN2_Config(((uint8_t)0x00),((uint8_t)0x06),((uint8_t)0x01),10);
			break;
		case 250: 
			CAN2_Config(((uint8_t)0x00),((uint8_t)0x06),((uint8_t)0x01),20);
			break;
		case 125: 
			CAN2_Config(((uint8_t)0x00),((uint8_t)0x06),((uint8_t)0x01),40);
			break;
		case 100: 
			CAN2_Config(((uint8_t)0x00),((uint8_t)0x06),((uint8_t)0x01),50);
			break;
		case 50: 
			CAN2_Config(((uint8_t)0x00),((uint8_t)0x06),((uint8_t)0x01),100);
			break;
		default:break;
	}
}

void can_init(unsigned char channel,unsigned int bps)
{
	if (channel == 0)
	{
		CAN1_Init(bps);
	}
	else if (channel == 1)
	{
		CAN2_Init(bps);
	}
}


int can_send_data(unsigned char channel,CanTxMsg* CanData)
{
	int ret = 0;

	if (channel == 0)
	{
		ret = CAN1_SendData(CanData);
		if (ret)
		{
			
			
		}

		return ret;
	}
	else if (channel == 1)
	{
		ret = CAN2_SendData(CanData);
		if (ret)
		{
			
			
		}
		return ret;
	}
	return 0;
}

int install_can_msg_arrive_hook(unsigned char channel,void (*pf)(CanRxMsg *))
{
	if (channel == 0)
	{
		return install_can1_msg_arrive_hook(pf);
	}
	else if (channel == 1)
	{
		return install_can2_msg_arrive_hook(pf);
	}
	return 1;
}

unsigned long can_recv_total_msg_cnt(unsigned char channel)
{
	if (channel == 0)
	{
		return can1_recv_total_msg_cnt();
	}
	else if (channel == 1)
	{
		return can2_recv_total_msg_cnt();
	}
	return 0;
}



#line 47 "..\\Source\\drivers\\drivers.c"
#line 1 "..\\Source\\drivers\\./exti/exti.c"
#line 2 "..\\Source\\drivers\\./exti/exti.c"

typedef struct tagGPIO_PIN_SOURCE_MAP
{
	uint16_t pin;
	unsigned char pin_source;
	unsigned int exit_line;
	void (*handler)(void);
}GPIO_PIN_SOURCE_MAP;

GPIO_PIN_SOURCE_MAP stGPIO_PIN_SOURCE_MAP[] = 
{
{((uint16_t)0x0001),((uint8_t)0x00),((uint32_t)0x00001),0},
{((uint16_t)0x0002),((uint8_t)0x01),((uint32_t)0x00002),0},
{((uint16_t)0x0004),((uint8_t)0x02),((uint32_t)0x00004),0},
{((uint16_t)0x0008),((uint8_t)0x03),((uint32_t)0x00008),0},
{((uint16_t)0x0010),((uint8_t)0x04),((uint32_t)0x00010),0},
{((uint16_t)0x0020),((uint8_t)0x05),((uint32_t)0x00020),0},
{((uint16_t)0x0040),((uint8_t)0x06),((uint32_t)0x00040),0},
{((uint16_t)0x0080),((uint8_t)0x07),((uint32_t)0x00080),0},
{((uint16_t)0x0100),((uint8_t)0x08),((uint32_t)0x00100),0},
{((uint16_t)0x0200),((uint8_t)0x09),((uint32_t)0x00200),0},
{((uint16_t)0x0400),((uint8_t)0x0A),((uint32_t)0x00400),0},
{((uint16_t)0x0800),((uint8_t)0x0B),((uint32_t)0x00800),0},
{((uint16_t)0x1000),((uint8_t)0x0C),((uint32_t)0x01000),0},
{((uint16_t)0x2000),((uint8_t)0x0D),((uint32_t)0x02000),0},
{((uint16_t)0x4000),((uint8_t)0x0E),((uint32_t)0x04000),0},
{((uint16_t)0x8000),((uint8_t)0x0F),((uint32_t)0x08000),0},
};

void EXTI0_IRQHandler(void)
{
	
	if (EXTI_GetITStatus(stGPIO_PIN_SOURCE_MAP[0].exit_line) != RESET)
	{
		if (stGPIO_PIN_SOURCE_MAP[0].handler)
		{
			stGPIO_PIN_SOURCE_MAP[0].handler();
		}
		
		EXTI_ClearITPendingBit(stGPIO_PIN_SOURCE_MAP[0].exit_line);
	}
}

void EXTI1_IRQHandler(void)
{
	
	if (EXTI_GetITStatus(stGPIO_PIN_SOURCE_MAP[1].exit_line) != RESET)
	{
		if (stGPIO_PIN_SOURCE_MAP[1].handler)
		{
			stGPIO_PIN_SOURCE_MAP[1].handler();
		}
		
		EXTI_ClearITPendingBit(stGPIO_PIN_SOURCE_MAP[1].exit_line);
	}

}

void EXTI2_IRQHandler(void)
{
	
	if (EXTI_GetITStatus(stGPIO_PIN_SOURCE_MAP[2].exit_line) != RESET)
	{
		if (stGPIO_PIN_SOURCE_MAP[2].handler)
		{
			stGPIO_PIN_SOURCE_MAP[2].handler();
		}
		
		EXTI_ClearITPendingBit(stGPIO_PIN_SOURCE_MAP[2].exit_line);
	}
}

void EXTI3_IRQHandler(void)
{
	
	if (EXTI_GetITStatus(stGPIO_PIN_SOURCE_MAP[3].exit_line) != RESET)
	{
		if (stGPIO_PIN_SOURCE_MAP[3].handler)
		{
			stGPIO_PIN_SOURCE_MAP[3].handler();
		}
		
		EXTI_ClearITPendingBit(stGPIO_PIN_SOURCE_MAP[3].exit_line);
	}
}

void EXTI4_IRQHandler(void)
{
	
	if (EXTI_GetITStatus(stGPIO_PIN_SOURCE_MAP[4].exit_line) != RESET)
	{
		if (stGPIO_PIN_SOURCE_MAP[4].handler)
		{
			stGPIO_PIN_SOURCE_MAP[4].handler();
		}
		
		EXTI_ClearITPendingBit(stGPIO_PIN_SOURCE_MAP[4].exit_line);
	}
}

void EXTI9_5_IRQHandler(void)
{
	unsigned char i = 0;

	for (i = 5; i <= 9; i++)
	{
		
		if (EXTI_GetITStatus(stGPIO_PIN_SOURCE_MAP[i].exit_line) != RESET)
		{
			if (stGPIO_PIN_SOURCE_MAP[i].handler)
			{
				stGPIO_PIN_SOURCE_MAP[i].handler();
			}
			
			EXTI_ClearITPendingBit(stGPIO_PIN_SOURCE_MAP[i].exit_line);
		}
	}
}

void EXTI15_10_IRQHandler(void)
{
	unsigned char i = 0;

	for (i = 10; i <= 15; i++)
	{
		
		if (EXTI_GetITStatus(stGPIO_PIN_SOURCE_MAP[i].exit_line) != RESET)
		{
			if (stGPIO_PIN_SOURCE_MAP[i].handler)
			{
				stGPIO_PIN_SOURCE_MAP[i].handler();
			}
			
			EXTI_ClearITPendingBit(stGPIO_PIN_SOURCE_MAP[i].exit_line);
		}
	}
}

typedef struct tagGPIO_PORT_SOURCE_MAP
{
	GPIO_TypeDef *port;
	unsigned char gpio_port_source;
}GPIO_PORT_SOURCE_MAP;

GPIO_PORT_SOURCE_MAP stGPIO_PORT_SOURCE_MAP[] = 
{
	{((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800)),((uint8_t)0x00)},
	{((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0C00)),((uint8_t)0x01)},
	{((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1000)),((uint8_t)0x02)},
	{((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1400)),((uint8_t)0x03)},
	{((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1800)),((uint8_t)0x04)},
	{((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1C00)),((uint8_t)0x05)},
	{((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2000)),((uint8_t)0x06)},
};


int get_gpio_port_source(GPIO_TypeDef *port)
{
	unsigned char i = 0;

	for (i = 0; i < (sizeof(stGPIO_PORT_SOURCE_MAP) / sizeof(stGPIO_PORT_SOURCE_MAP[0])); i++)
	{
		if (stGPIO_PORT_SOURCE_MAP[i].port == port)
		{
			return stGPIO_PORT_SOURCE_MAP[i].gpio_port_source;
		}
	}
	return -1;
}

int get_gpio_pin_source(uint16_t pin)
{
	unsigned char i = 0;

	for (i = 0; i < (sizeof(stGPIO_PIN_SOURCE_MAP) / sizeof(stGPIO_PIN_SOURCE_MAP[0])); i++)
	{
		if (stGPIO_PIN_SOURCE_MAP[i].pin == pin)
		{
			return stGPIO_PIN_SOURCE_MAP[i].pin_source;
		}
	}
	return -1;
}

int get_exit_line(uint16_t pin)
{
	unsigned char i = 0;

	for (i = 0; i < (sizeof(stGPIO_PIN_SOURCE_MAP) / sizeof(stGPIO_PIN_SOURCE_MAP[0])); i++)
	{
		if (stGPIO_PIN_SOURCE_MAP[i].pin == pin)
		{
			return stGPIO_PIN_SOURCE_MAP[i].exit_line;
		}
	}
	return -1;
}

void exit_nvic_config(unsigned char irq,unsigned char PreemptionPriority,unsigned char SubPriority)
{
	NVIC_InitTypeDef NVIC_InitStructure;

	NVIC_InitStructure.NVIC_IRQChannel = irq;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = PreemptionPriority;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = SubPriority;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);
}

void exit_init(uint32_t rcc,GPIO_TypeDef* port,
					uint16_t pin,GPIOMode_TypeDef mode,
					void (*handler)(void)
					)

{
	GPIO_InitTypeDef GPIO_InitStructure;
	EXTI_InitTypeDef EXTI_InitStructure;
	int port_source = 0;
	int pin_source = 0;
	int exit_line = 0;

	port_source = get_gpio_port_source(port);
	if (port_source < 0)
	{
		return ;
	}
	pin_source = get_gpio_pin_source(pin);
	if (pin_source < 0)
	{
		return ;
	}
	exit_line = get_exit_line(pin);
	if (exit_line < 0)
	{
		return ;
	}
	stGPIO_PIN_SOURCE_MAP[pin_source].handler = handler;

	 
	RCC_APB2PeriphClockCmd(rcc | ((uint32_t)0x00000001),ENABLE);
#line 285 "..\\Source\\drivers\\./exti/exti.c"
	switch (pin_source)
	{
		case 0:
		exit_nvic_config(EXTI0_IRQn,1,pin_source);
		break;
		case 1:
		exit_nvic_config(EXTI1_IRQn,1,pin_source);
		break;
		case 2:
		exit_nvic_config(EXTI2_IRQn,1,pin_source);
		break;
		case 3:
		exit_nvic_config(EXTI3_IRQn,1,pin_source);
		break;
		case 4:
		exit_nvic_config(EXTI4_IRQn,1,pin_source);
		break;
		case 5:
		case 6:
		case 7:
		case 8:
		case 9:
		exit_nvic_config(EXTI9_5_IRQn,1,pin_source);
		break;
		case 10:
		case 11:
		case 12:
		case 13:
		case 14:
		case 15:
		exit_nvic_config(EXTI15_10_IRQn,1,pin_source);
		break;
		default:break;
	}

	 
	GPIO_InitStructure.GPIO_Pin = pin;
	 
	
	GPIO_InitStructure.GPIO_Mode = mode;

	GPIO_Init(port, &GPIO_InitStructure);
	 
	GPIO_EXTILineConfig(port_source, pin_source);
	EXTI_InitStructure.EXTI_Line = exit_line;
	 
	EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
	 
	EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising_Falling;
	 
	EXTI_InitStructure.EXTI_LineCmd = ENABLE;
	EXTI_Init(&EXTI_InitStructure);
}


typedef void (*pvd_handler)(void);

pvd_handler p_pvd_handler = 0;


void BSP_IntHandlerPVD(void)
{
	EXTI_ClearITPendingBit(((uint32_t)0x10000));

	if (PWR_GetFlagStatus(((uint32_t)0x00000004)) != RESET) 
	{
		
		
		
		if (p_pvd_handler)
		{
			p_pvd_handler();
		}
	}

}

void PVD_Init(void)
{	
	EXTI_InitTypeDef EXTI_InitStructure; 	
	NVIC_InitTypeDef NVIC_InitStructure;		
	NVIC_PriorityGroupConfig(((uint32_t)0x600)); 	
	NVIC_InitStructure.NVIC_IRQChannel = PVD_IRQn;	
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;  	
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0; 	
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;	
	NVIC_Init(&NVIC_InitStructure);		
	RCC_APB1PeriphClockCmd(((uint32_t)0x10000000) | ((uint32_t)0x08000000), ENABLE);	  
	PWR_PVDLevelConfig(((uint32_t)0x000000E0));   
	PWR_PVDCmd(ENABLE); 	
	EXTI_DeInit();  
	EXTI_StructInit(&EXTI_InitStructure);    
	EXTI_InitStructure.EXTI_Line = ((uint32_t)0x10000);  
	EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;  
	EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising_Falling;  
	EXTI_InitStructure.EXTI_LineCmd = ENABLE; 
	EXTI_Init(&EXTI_InitStructure); 	
}



void enable_pvd_monitor(void (*pvd_handler)(void))
{
	PVD_Init();
	

	p_pvd_handler = pvd_handler;
}




#line 48 "..\\Source\\drivers\\drivers.c"

#line 1 "..\\Source\\drivers\\./SPI/SPI.c"
#line 2 "..\\Source\\drivers\\./SPI/SPI.c"







void SPI1_Init(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	SPI_InitTypeDef  SPI_InitStructure;

	RCC_APB2PeriphClockCmd(((uint32_t)0x00001000) | ((uint32_t)0x00000004), ENABLE );

	GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x0020) | ((uint16_t)0x0040) | ((uint16_t)0x0080);
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP ;  
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800)), &GPIO_InitStructure);
	GPIO_SetBits(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800)),((uint16_t)0x0020) | ((uint16_t)0x0040) | ((uint16_t)0x0080)); 

	SPI_InitStructure.SPI_Direction = ((uint16_t)0x0000);  
	SPI_InitStructure.SPI_Mode = ((uint16_t)0x0104);		
	SPI_InitStructure.SPI_DataSize = ((uint16_t)0x0000);		
	
	
	SPI_InitStructure.SPI_CPOL = ((uint16_t)0x0000);
	SPI_InitStructure.SPI_CPHA = ((uint16_t)0x0000);

	SPI_InitStructure.SPI_NSS = ((uint16_t)0x0200);		
	SPI_InitStructure.SPI_BaudRatePrescaler = ((uint16_t)0x0010);		
	SPI_InitStructure.SPI_FirstBit = ((uint16_t)0x0000);	
	

	SPI_InitStructure.SPI_CRCPolynomial = 7;	
	SPI_Init(((SPI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3000)), &SPI_InitStructure);  

	SPI_Cmd(((SPI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3000)), ENABLE); 
	SPI1_ReadWriteByte(0x00);
}   





void SPI2_Init(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	SPI_InitTypeDef  SPI_InitStructure;

	RCC_APB2PeriphClockCmd(((uint32_t)0x00000008), ENABLE );
	RCC_APB1PeriphClockCmd(((uint32_t)0x00004000), ENABLE );

	GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x2000) | ((uint16_t)0x4000) | ((uint16_t)0x8000);
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;  
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0C00)), &GPIO_InitStructure);
	GPIO_SetBits(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0C00)),((uint16_t)0x2000) | ((uint16_t)0x4000) | ((uint16_t)0x8000)); 

	SPI_InitStructure.SPI_Direction = ((uint16_t)0x0000);  
	SPI_InitStructure.SPI_Mode = ((uint16_t)0x0104);		
	SPI_InitStructure.SPI_DataSize = ((uint16_t)0x0000);		
	
	

	SPI_InitStructure.SPI_CPOL = ((uint16_t)0x0000);
	SPI_InitStructure.SPI_CPHA = ((uint16_t)0x0000);

	SPI_InitStructure.SPI_NSS = ((uint16_t)0x0200);		
	SPI_InitStructure.SPI_BaudRatePrescaler = ((uint16_t)0x0000);		
	SPI_InitStructure.SPI_FirstBit = ((uint16_t)0x0000);	
	SPI_InitStructure.SPI_CRCPolynomial = 7;	
	SPI_Init(((SPI_TypeDef *) (((uint32_t)0x40000000) + 0x3800)), &SPI_InitStructure);  

	SPI_Cmd(((SPI_TypeDef *) (((uint32_t)0x40000000) + 0x3800)), ENABLE); 
	SPI2_ReadWriteByte(0x00);
}   

void SPI3_Init(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	SPI_InitTypeDef  SPI_InitStructure;

	RCC_APB2PeriphClockCmd(((uint32_t)0x00000008), ENABLE );
	RCC_APB1PeriphClockCmd(((uint32_t)0x00008000), ENABLE );

	GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x0008) | ((uint16_t)0x0010) | ((uint16_t)0x0020);
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;  
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0C00)), &GPIO_InitStructure);
	GPIO_SetBits(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0C00)),((uint16_t)0x0008) | ((uint16_t)0x0010) | ((uint16_t)0x0020)); 

	SPI_InitStructure.SPI_Direction = ((uint16_t)0x0000);  
	SPI_InitStructure.SPI_Mode = ((uint16_t)0x0000);
	SPI_InitStructure.SPI_DataSize = ((uint16_t)0x0000);		
	
	

	SPI_InitStructure.SPI_CPOL = ((uint16_t)0x0000);
	SPI_InitStructure.SPI_CPHA = ((uint16_t)0x0000);

	SPI_InitStructure.SPI_NSS = ((uint16_t)0x0200);		
	SPI_InitStructure.SPI_BaudRatePrescaler = ((uint16_t)0x0000);		
	SPI_InitStructure.SPI_FirstBit = ((uint16_t)0x0000);	
	SPI_InitStructure.SPI_CRCPolynomial = 7;	
	SPI_Init(((SPI_TypeDef *) (((uint32_t)0x40000000) + 0x3C00)), &SPI_InitStructure);  

	SPI_Cmd(((SPI_TypeDef *) (((uint32_t)0x40000000) + 0x3C00)), ENABLE); 
	SPI3_ReadWriteByte(0x00);
}   








void SPI1_SetSpeed(u8 SPI_BaudRatePrescaler)
{
	((void)0);
	((SPI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3000))->CR1&=0XFFC7;
	((SPI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3000))->CR1|=SPI_BaudRatePrescaler;	
	SPI_Cmd(((SPI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3000)),ENABLE); 
}







void SPI2_SetSpeed(u8 SPI_BaudRatePrescaler)
{
	((void)0);
	((SPI_TypeDef *) (((uint32_t)0x40000000) + 0x3800))->CR1&=0XFFC7;
	((SPI_TypeDef *) (((uint32_t)0x40000000) + 0x3800))->CR1|=SPI_BaudRatePrescaler;	
	SPI_Cmd(((SPI_TypeDef *) (((uint32_t)0x40000000) + 0x3800)),ENABLE); 
} 




int SPI1_ReadWriteByte(u8 TxData)
{
	unsigned int cnt = 0;

	   
	while (SPI_I2S_GetFlagStatus(((SPI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3000)), ((uint16_t)0x0002)) == RESET)
	{
		cnt++;
		if (cnt >= 5000)
		{
			break;
		}

	}

	   
	SPI_I2S_SendData(((SPI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3000)), TxData);
	cnt = 0;
	   
	while (SPI_I2S_GetFlagStatus(((SPI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3000)), ((uint16_t)0x0001)) == RESET)
	{
		cnt++;
		if (cnt >= 5000)
		{
			break;
		}

	}
	   
	return SPI_I2S_ReceiveData(((SPI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3000)));
}

unsigned int spi_readbyte(char channel)
{
	unsigned int cnt = 0;

	while (SPI_I2S_GetFlagStatus(((SPI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3000)), ((uint16_t)0x0002)) == RESET) 
	{
		cnt++;
		if (cnt >= 5000)
		{
			break;
		}

	}			  
	SPI_I2S_SendData(((SPI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3000)), 0x00); 

	cnt = 0;
	while (SPI_I2S_GetFlagStatus(((SPI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3000)), ((uint16_t)0x0001)) == RESET) 
	{
		cnt++;
		if (cnt >= 5000)
		{
			break;
		}

	}	  						    
	return SPI_I2S_ReceiveData(((SPI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3000))); 
}

void spi_writebyte(char channel,unsigned char dat)
{
	unsigned int cnt = 0;

	while (SPI_I2S_GetFlagStatus(((SPI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3000)), ((uint16_t)0x0002)) == RESET) 
	{
		cnt++;
		if (cnt >= 5000)
		{
			break;
		}

	}			  
	SPI_I2S_SendData(((SPI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3000)), dat); 

}





int SPI2_ReadWriteByte(u8 TxData)
{
	unsigned int cnt = 0;

	while (SPI_I2S_GetFlagStatus(((SPI_TypeDef *) (((uint32_t)0x40000000) + 0x3800)), ((uint16_t)0x0002)) == RESET) 
	{
		cnt++;
		if (cnt >= 5000)
		{
			break;
		}
	}
	
	SPI_I2S_SendData(((SPI_TypeDef *) (((uint32_t)0x40000000) + 0x3800)), TxData); 
	cnt = 0;
	while (SPI_I2S_GetFlagStatus(((SPI_TypeDef *) (((uint32_t)0x40000000) + 0x3800)), ((uint16_t)0x0001)) == RESET) 
	{
		cnt++;
		if (cnt >= 5000)
		{
			break;
		}
	}	  						    
	return SPI_I2S_ReceiveData(((SPI_TypeDef *) (((uint32_t)0x40000000) + 0x3800))); 
}


int SPI3_ReadWriteByte(u8 TxData)
{
	unsigned int cnt = 0;

	while (SPI_I2S_GetFlagStatus(((SPI_TypeDef *) (((uint32_t)0x40000000) + 0x3C00)), ((uint16_t)0x0002)) == RESET) 
	{
		cnt++;
		if (cnt >= 5000)
		{
			break;
		}
	}
	
	SPI_I2S_SendData(((SPI_TypeDef *) (((uint32_t)0x40000000) + 0x3C00)), TxData); 
	cnt = 0;
	while (SPI_I2S_GetFlagStatus(((SPI_TypeDef *) (((uint32_t)0x40000000) + 0x3C00)), ((uint16_t)0x0001)) == RESET) 
	{
		cnt++;
		if (cnt >= 5000)
		{
			break;
		}
	}	  						    
	return SPI_I2S_ReceiveData(((SPI_TypeDef *) (((uint32_t)0x40000000) + 0x3C00))); 
}



#line 50 "..\\Source\\drivers\\drivers.c"

#line 1 "..\\Source\\drivers\\./IIC/IIC.c"
#line 2 "..\\Source\\drivers\\./IIC/IIC.c"






typedef struct tagIICInterface
{
	DelayFunc pDelayFunc;
	SetSDAFunc pSetSDAFunc;
	SetSCLFunc pSetSCLFunc;
	ReadSDAFunc pReadSDAFunc;
	SetSDAOutputFunc pSetSDAOutputFunc;
	SetSDAInputFunc pSetSDAInputFunc;
	SetSCLOutputFunc pSetSCLOutputFunc;
}IICInterface;



IICInterface s_astIIC[4] = {0};


void IIC_Init(int num,
					DelayFunc pDelayFunc,
					SetSDAFunc pSetSDAFunc,
					SetSCLFunc pSetSCLFunc,
					ReadSDAFunc pReadSDAFunc,
					SetSDAOutputFunc pSetSDAOutputFunc,
					SetSDAInputFunc pSetSDAInputFunc,
					SetSCLOutputFunc pSetSCLOutputFunc
				)
{
	s_astIIC[num].pDelayFunc = pDelayFunc;
	s_astIIC[num].pSetSDAFunc = pSetSDAFunc;
	s_astIIC[num].pSetSCLFunc = pSetSCLFunc;
	s_astIIC[num].pReadSDAFunc = pReadSDAFunc;
	s_astIIC[num].pSetSDAOutputFunc = pSetSDAOutputFunc;
	s_astIIC[num].pSetSDAInputFunc = pSetSDAInputFunc;
	s_astIIC[num].pSetSCLOutputFunc = pSetSCLOutputFunc;
	
	if (s_astIIC[num].pSetSCLOutputFunc) s_astIIC[num].pSetSCLOutputFunc();
	if (s_astIIC[num].pSetSDAOutputFunc) s_astIIC[num].pSetSDAOutputFunc();
	if (s_astIIC[num].pSetSDAFunc) s_astIIC[num].pSetSDAFunc(1);
	if (s_astIIC[num].pSetSCLFunc) s_astIIC[num].pSetSCLFunc(1);
}

static void SDA_OUT(int num)
{
	if (s_astIIC[num].pSetSDAOutputFunc) s_astIIC[num].pSetSDAOutputFunc();
}

static void SDA_IN(int num)
{
	if (s_astIIC[num].pSetSDAInputFunc) s_astIIC[num].pSetSDAInputFunc();
}

static void SetIIC_SDA(int num,unsigned int val)
{
	if (s_astIIC[num].pSetSDAFunc) s_astIIC[num].pSetSDAFunc(val);
}

static void SetIIC_SCL(int num,unsigned int val)
{
	if (s_astIIC[num].pSetSCLFunc) s_astIIC[num].pSetSCLFunc(val);
}

static void delay_us(int num,unsigned int t)
{
	if (s_astIIC[num].pDelayFunc) s_astIIC[num].pDelayFunc(t);
}

static unsigned char ReadIIC_SDA(int num)
{
	if (s_astIIC[num].pReadSDAFunc) return s_astIIC[num].pReadSDAFunc();

	return 1;
}




void IIC_Start(int num)
{
	SDA_OUT(num);     
	SetIIC_SDA(num,1);
	SetIIC_SCL(num,1);
	delay_us(num,4);
	SetIIC_SDA(num,0);
	delay_us(num,4);
	SetIIC_SCL(num,0);
}

void IIC_Stop(int num)
{
	SDA_OUT(num);
	SetIIC_SCL(num,0);
	SetIIC_SDA(num,0);
	delay_us(num,4);
	SetIIC_SCL(num,1); 
	SetIIC_SDA(num,1);
	delay_us(num,4);
}



unsigned char IIC_Wait_Ack(int num)
{
	unsigned char ucErrTime=0;

	SDA_IN(num);      
	SetIIC_SDA(num,1);
	delay_us(num,1);   
	SetIIC_SCL(num,1);
	delay_us(num,1);
	while(ReadIIC_SDA(num))
	{
		ucErrTime++;
		if(ucErrTime > 250)
		{
			IIC_Stop(num);
			
			return 1;
		}
	}
	SetIIC_SCL(num,0);
	return 0;
} 

void IIC_Ack(int num)
{
	SetIIC_SCL(num,0);
	SDA_OUT(num);
	SetIIC_SDA(num,0);
	delay_us(num,2);
	SetIIC_SCL(num,1);
	delay_us(num,2);
	SetIIC_SCL(num,0);
}

void IIC_NAck(int num)
{
	SetIIC_SCL(num,0);
	SDA_OUT(num);
	SetIIC_SDA(num,1);
	delay_us(num,2);
	SetIIC_SCL(num,1);
	delay_us(num,2);
	SetIIC_SCL(num,0);
}





void IIC_Send_Byte(int num,unsigned char txd)
{                        
	unsigned char t;

	SDA_OUT(num); 	    
	SetIIC_SCL(num,0);
	delay_us(num,2);
	for(t = 0; t < 8; t++)
	{              
		
		if((txd & 0x80) >> 7)
			SetIIC_SDA(num,1);
		else
			SetIIC_SDA(num,0);
		txd <<= 1; 	  
		delay_us(num,2);   
		SetIIC_SCL(num,1);
		delay_us(num,2); 
		SetIIC_SCL(num,0);	
		delay_us(num,2);
	}
} 	    

unsigned char IIC_Read_Byte(int num,unsigned char ack)
{
	unsigned char i;
	unsigned char receive = 0;

	SDA_IN(num);
	for(i = 0; i < 8; i++)
	{
		SetIIC_SCL(num,0); 
		delay_us(num,2);
		SetIIC_SCL(num,1);
		receive <<= 1;
		if(ReadIIC_SDA(num))
		{
			receive++;
		}
		delay_us(num,1); 
	}					 
	if (!ack)
		IIC_NAck(num);
	else
		IIC_Ack(num); 
	return receive;
}



unsigned int IIC_Read(int num,INT8U dev_write_addr,unsigned int intel_addr,unsigned int readlen,void *buf,unsigned int buflen) 
{
	unsigned int i = 0;
	unsigned char rcnt = 0;
	unsigned int templen = 0;

	if ((buf == 0) || (readlen == 0))
	{
		return 0;
	}
rsend:
	IIC_Start(num);
	IIC_Send_Byte(num,dev_write_addr);
	IIC_Wait_Ack(num);
	IIC_Send_Byte(num,intel_addr);
	IIC_Wait_Ack(num);

	IIC_Start(num);
	IIC_Send_Byte(num,dev_write_addr | 1);
	if (IIC_Wait_Ack(num))
	{
		rcnt++;
		if (rcnt > 200)
		{
			return 0;
		}
		DBG_Print(1,"resend iic(%u)\r\n",rcnt);
		goto rsend;
	}
	templen = readlen;
	if (templen > buflen)
	{
		templen = buflen;
	}
	for (i = 0; i < templen; i++)
	{
		if (i == (templen - 1))
		{
			*((unsigned char *)buf + i) = IIC_Read_Byte(num,0);
		}
		else
		{
			*((unsigned char *)buf + i) = IIC_Read_Byte(num,1);
		}
	}
	IIC_Stop(num);
	return templen;
}

unsigned char IIC_Write(int num,INT8U dev_write_addr,unsigned int addr,void *pdat,unsigned int len) 
{
	unsigned int i = 0;
	unsigned int cnt = 0;


	for (i = 0; i < len; i++)
	{
	iic_w_rsend:
		IIC_Start(num);

		IIC_Send_Byte(num,dev_write_addr);
		IIC_Wait_Ack(num);
		IIC_Send_Byte(num,addr + i);
		if (IIC_Wait_Ack(num))	
		{
			cnt++;
			if (cnt > 300)
			{
				return 1;
			}
			goto iic_w_rsend;
		}
		IIC_Send_Byte(num,*((unsigned char *)pdat + i));
		IIC_Wait_Ack(num);
		IIC_Stop(num);
	}

	return 0;
}


#line 52 "..\\Source\\drivers\\drivers.c"
#line 1 "..\\Source\\drivers\\./moni_spi/moni_spi.c"
#line 2 "..\\Source\\drivers\\./moni_spi/moni_spi.c"






 
typedef struct tagMONISPI
{
	SETFUNC pSetCLKOutputMode;
	SETFUNC pSetMOSIOutputMode;
	SETFUNC pSetMISOIutputMode;

	SETVALUEFUNC pSetCLK;
	SETVALUEFUNC pSetMOSI;

	READFUNC pReadMISO;

	char CPOL;	
	char CPHA;	
	char IsMSBFirst;		
}MONISPI;




MONISPI s_astMONISPI[4] = {0};



int moni_spi_init(int num,
	SETFUNC pSetCLKOutputMode,
	SETFUNC pSetMOSIOutputMode,
	SETFUNC pSetMISOIutputMode,

	SETVALUEFUNC pSetCLK,
	SETVALUEFUNC pSetMOSI,

	READFUNC pReadMISO,
	char CPOL,
	char CPHA,
	char IsMSBFirst
	)
{
	if (num >= 4)
	{
		return -1;
	}

	s_astMONISPI[num].pSetCLKOutputMode = pSetCLKOutputMode;
	s_astMONISPI[num].pSetMOSIOutputMode = pSetMOSIOutputMode;
	s_astMONISPI[num].pSetMISOIutputMode = pSetMISOIutputMode;

	s_astMONISPI[num].pSetCLK = pSetCLK;
	s_astMONISPI[num].pSetMOSI = pSetMOSI;

	s_astMONISPI[num].pReadMISO = pReadMISO;

	s_astMONISPI[num].CPOL = CPOL;
	s_astMONISPI[num].CPHA = CPHA;
	s_astMONISPI[num].IsMSBFirst = IsMSBFirst;

	
	if (s_astMONISPI[num].pSetCLKOutputMode) s_astMONISPI[num].pSetCLKOutputMode();
	if (s_astMONISPI[num].pSetMOSIOutputMode) s_astMONISPI[num].pSetMOSIOutputMode();
	if (s_astMONISPI[num].pSetMISOIutputMode) s_astMONISPI[num].pSetMISOIutputMode();

	
	if (s_astMONISPI[num].CPOL)		
	{
		if (s_astMONISPI[num].pSetCLK) s_astMONISPI[num].pSetCLK(1);
	}
	else							
	{
		if (s_astMONISPI[num].pSetCLK) s_astMONISPI[num].pSetCLK(0);
	}

	if (s_astMONISPI[num].pSetMOSI) s_astMONISPI[num].pSetMOSI(1);
	return 0;
}


void moni_spi_write_byte(int num,unsigned char dat)
{
	unsigned char i = 0;
	unsigned char temp = 0;
	unsigned char cpol = s_astMONISPI[num].CPOL;
	unsigned char cpha = s_astMONISPI[num].CPHA;
	unsigned char is_msb_first = s_astMONISPI[num].IsMSBFirst;

	for (i = 0; i < 8; i++)
	{
		if (is_msb_first)
		{
			temp = dat & (1 << (7 - i));
		}
		else
		{
			temp = dat & (1 << i);
		}

		if (cpol == 0)		
		{
			if (cpha == 0) 	
			{
				if (temp)
				{
					
					s_astMONISPI[num].pSetMOSI(1);
				}
				else
				{
					
					s_astMONISPI[num].pSetMOSI(0);
				}

				
				s_astMONISPI[num].pSetCLK(1);
				
				s_astMONISPI[num].pSetCLK(0);

			}

			else			
			{
				
				s_astMONISPI[num].pSetCLK(1);
				if (temp)
				{
					
					s_astMONISPI[num].pSetMOSI(1);
				}
				else
				{
					
					s_astMONISPI[num].pSetMOSI(0);
				}

				
				s_astMONISPI[num].pSetCLK(0);

			}

		}

		else				
		{
			if (cpha == 0)		
			{
				if (temp)
				{
					
					s_astMONISPI[num].pSetMOSI(1);
				}
				else
				{
					
					s_astMONISPI[num].pSetMOSI(0);
				}
				
				
				s_astMONISPI[num].pSetCLK(0);
				
				s_astMONISPI[num].pSetCLK(1);

			}
			else				
			{
				
				s_astMONISPI[num].pSetCLK(0);
				if (temp)
				{
					
					s_astMONISPI[num].pSetMOSI(1);
				}
				else
				{
					
					s_astMONISPI[num].pSetMOSI(0);
				}
				
				s_astMONISPI[num].pSetCLK(1);
			}
		}

	}

}


unsigned char moni_spi_read_byte(int num)
{
	unsigned char i = 0;
	unsigned char dat = 0;
	unsigned char temp = 0;
	unsigned char cpol = s_astMONISPI[num].CPOL;
	unsigned char cpha = s_astMONISPI[num].CPHA;
	unsigned char is_msb_first = s_astMONISPI[num].IsMSBFirst;


	for (i = 0; i < 8; i++)
	{
		if (cpol == 0)			
		{
			if (cpha == 0)		
			{
				
				{
					s_astMONISPI[num].pSetCLK(1);
				}
				
				{
					temp = s_astMONISPI[num].pReadMISO();
				}
				
				{
					s_astMONISPI[num].pSetCLK(0);
				}
			}
			else				
			{
				
				s_astMONISPI[num].pSetCLK(1);
				
				s_astMONISPI[num].pSetCLK(0);
				
				temp = s_astMONISPI[num].pReadMISO();
			}
		}
		else					
		{
			if (cpha == 0)		
			{
				
				s_astMONISPI[num].pSetCLK(0);
				
				temp = s_astMONISPI[num].pReadMISO();
				
				s_astMONISPI[num].pSetCLK(1);
			}
			else				
			{
				
				s_astMONISPI[num].pSetCLK(0);
				
				s_astMONISPI[num].pSetCLK(1);
				
				temp = s_astMONISPI[num].pReadMISO();
			}

		}

		if (is_msb_first)
		{
			if (temp)
			{
				dat |= (1 << (7 - i));
			}
		}
		else
		{
			if (temp)
			{
				dat |= (1 << i);
			}
		}	
	}

	return dat;
}




#line 53 "..\\Source\\drivers\\drivers.c"


#line 1 "..\\Source\\drivers\\./lsm6d/lsm6d.c"
#line 2 "..\\Source\\drivers\\./lsm6d/lsm6d.c"

unsigned char lsm6d_write_reg(unsigned char reg,unsigned char val)
{
	unsigned char dat = val;

	return IIC_Write(0,0xD4,reg,&dat,1);
}

unsigned int lsm6d_read_reg(unsigned char reg,void *pbuf,unsigned int rlen)
{
	return IIC_Read(0,0xD4,reg,rlen,pbuf,rlen);
}

int lsm6d_init(void)
{
	
	if (lsm6d_write_reg(0x10,0x14))
	{
		return 1;
	}

	
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



#line 1 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\math.h"




 





 












 






   









 






#line 61 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\math.h"

#line 75 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\math.h"







   




 















 
#line 112 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\math.h"











 





extern __attribute__((__pcs__("aapcs"))) unsigned __ARM_dcmp4(double  , double  );
extern __attribute__((__pcs__("aapcs"))) unsigned __ARM_fcmp4(float  , float  );
    




 

extern __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_fpclassifyf(float  );
extern __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_fpclassify(double  );
     
     

__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isfinitef(float __x)
{
    return (((*(unsigned *)&(__x)) >> 23) & 0xff) != 0xff;
}
__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isfinite(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff) != 0x7ff;
}
     
     

__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isinff(float __x)
{
    return ((*(unsigned *)&(__x)) << 1) == 0xff000000;
}
__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isinf(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) << 1) == 0xffe00000) && ((*(unsigned *)&(__x)) == 0);
}
     
     

__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_islessgreaterf(float __x, float __y)
{
    unsigned __f = __ARM_fcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);  
}
__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_islessgreater(double __x, double __y)
{
    unsigned __f = __ARM_dcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);  
}
    


 

__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnanf(float __x)
{
    return (0x7f800000 - ((*(unsigned *)&(__x)) & 0x7fffffff)) >> 31;
}
__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnan(double __x)
{
    unsigned __xf = (*(1 + (unsigned *)&(__x))) | (((*(unsigned *)&(__x)) == 0) ? 0 : 1);
    return (0x7ff00000 - (__xf & 0x7fffffff)) >> 31;
}
     
     

__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnormalf(float __x)
{
    unsigned __xe = ((*(unsigned *)&(__x)) >> 23) & 0xff;
    return (__xe != 0xff) && (__xe != 0);
}
__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnormal(double __x)
{
    unsigned __xe = ((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff;
    return (__xe != 0x7ff) && (__xe != 0);
}
     
     

__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_signbitf(float __x)
{
    return (*(unsigned *)&(__x)) >> 31;
}
__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_signbit(double __x)
{
    return (*(1 + (unsigned *)&(__x))) >> 31;
}
     
     








#line 230 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\math.h"







   
  typedef float float_t;
  typedef double double_t;
#line 251 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\math.h"



extern const int math_errhandling;
#line 261 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\math.h"

extern __declspec(__nothrow) double acos(double  );
    
    
    
extern __declspec(__nothrow) double asin(double  );
    
    
    
    

extern __declspec(__nothrow) __attribute__((const)) double atan(double  );
    
    

extern __declspec(__nothrow) double atan2(double  , double  );
    
    
    
    

extern __declspec(__nothrow) double cos(double  );
    
    
    
    
extern __declspec(__nothrow) double sin(double  );
    
    
    
    

extern void __use_accurate_range_reduction(void);
    
    

extern __declspec(__nothrow) double tan(double  );
    
    
    
    

extern __declspec(__nothrow) double cosh(double  );
    
    
    
    
extern __declspec(__nothrow) double sinh(double  );
    
    
    
    
    

extern __declspec(__nothrow) __attribute__((const)) double tanh(double  );
    
    

extern __declspec(__nothrow) double exp(double  );
    
    
    
    
    

extern __declspec(__nothrow) double frexp(double  , int *  ) __attribute__((__nonnull__(2)));
    
    
    
    
    
    

extern __declspec(__nothrow) double ldexp(double  , int  );
    
    
    
    
extern __declspec(__nothrow) double log(double  );
    
    
    
    
    
extern __declspec(__nothrow) double log10(double  );
    
    
    
extern __declspec(__nothrow) double modf(double  , double *  ) __attribute__((__nonnull__(2)));
    
    
    
    

extern __declspec(__nothrow) double pow(double  , double  );
    
    
    
    
    
    
extern __declspec(__nothrow) double sqrt(double  );
    
    
    




    __inline double _sqrt(double __x) { return sqrt(__x); }




    __inline float _sqrtf(float __x) { return (float)sqrt(__x); }

    



 

extern __declspec(__nothrow) __attribute__((const)) double ceil(double  );
    
    
extern __declspec(__nothrow) __attribute__((const)) double fabs(double  );
    
    

extern __declspec(__nothrow) __attribute__((const)) double floor(double  );
    
    

extern __declspec(__nothrow) double fmod(double  , double  );
    
    
    
    
    

    









 



extern __declspec(__nothrow) double acosh(double  );
    

 
extern __declspec(__nothrow) double asinh(double  );
    

 
extern __declspec(__nothrow) double atanh(double  );
    

 
extern __declspec(__nothrow) double cbrt(double  );
    

 
__inline __declspec(__nothrow) __attribute__((const)) double copysign(double __x, double __y)
    

 
{
    (*(1 + (unsigned *)&(__x))) = ((*(1 + (unsigned *)&(__x))) & 0x7fffffff) | ((*(1 + (unsigned *)&(__y))) & 0x80000000);
    return __x;
}
__inline __declspec(__nothrow) __attribute__((const)) float copysignf(float __x, float __y)
    

 
{
    (*(unsigned *)&(__x)) = ((*(unsigned *)&(__x)) & 0x7fffffff) | ((*(unsigned *)&(__y)) & 0x80000000);
    return __x;
}
extern __declspec(__nothrow) double erf(double  );
    

 
extern __declspec(__nothrow) double erfc(double  );
    

 
extern __declspec(__nothrow) double expm1(double  );
    

 



    

 






#line 479 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\math.h"


extern __declspec(__nothrow) double hypot(double  , double  );
    




 
extern __declspec(__nothrow) int ilogb(double  );
    

 
extern __declspec(__nothrow) int ilogbf(float  );
    

 
extern __declspec(__nothrow) int ilogbl(long double  );
    

 







    

 





    



 





    



 





    

 





    



 





    



 





    



 





    

 





    

 





    


 

extern __declspec(__nothrow) double lgamma (double  );
    


 
extern __declspec(__nothrow) double log1p(double  );
    

 
extern __declspec(__nothrow) double logb(double  );
    

 
extern __declspec(__nothrow) float logbf(float  );
    

 
extern __declspec(__nothrow) long double logbl(long double  );
    

 
extern __declspec(__nothrow) double nextafter(double  , double  );
    


 
extern __declspec(__nothrow) float nextafterf(float  , float  );
    


 
extern __declspec(__nothrow) long double nextafterl(long double  , long double  );
    


 
extern __declspec(__nothrow) double nexttoward(double  , long double  );
    


 
extern __declspec(__nothrow) float nexttowardf(float  , long double  );
    


 
extern __declspec(__nothrow) long double nexttowardl(long double  , long double  );
    


 
extern __declspec(__nothrow) double remainder(double  , double  );
    

 
extern __declspec(__nothrow) __attribute__((const)) double rint(double  );
    

 
extern __declspec(__nothrow) double scalbln(double  , long int  );
    

 
extern __declspec(__nothrow) float scalblnf(float  , long int  );
    

 
extern __declspec(__nothrow) long double scalblnl(long double  , long int  );
    

 
extern __declspec(__nothrow) double scalbn(double  , int  );
    

 
extern __declspec(__nothrow) float scalbnf(float  , int  );
    

 
extern __declspec(__nothrow) long double scalbnl(long double  , int  );
    

 




    

 



 
extern __declspec(__nothrow) __attribute__((const)) float _fabsf(float);  
__inline __declspec(__nothrow) __attribute__((const)) float fabsf(float __f) { return _fabsf(__f); }
extern __declspec(__nothrow) float sinf(float  );
extern __declspec(__nothrow) float cosf(float  );
extern __declspec(__nothrow) float tanf(float  );
extern __declspec(__nothrow) float acosf(float  );
extern __declspec(__nothrow) float asinf(float  );
extern __declspec(__nothrow) float atanf(float  );
extern __declspec(__nothrow) float atan2f(float  , float  );
extern __declspec(__nothrow) float sinhf(float  );
extern __declspec(__nothrow) float coshf(float  );
extern __declspec(__nothrow) float tanhf(float  );
extern __declspec(__nothrow) float expf(float  );
extern __declspec(__nothrow) float logf(float  );
extern __declspec(__nothrow) float log10f(float  );
extern __declspec(__nothrow) float powf(float  , float  );
extern __declspec(__nothrow) float sqrtf(float  );
extern __declspec(__nothrow) float ldexpf(float  , int  );
extern __declspec(__nothrow) float frexpf(float  , int *  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) __attribute__((const)) float ceilf(float  );
extern __declspec(__nothrow) __attribute__((const)) float floorf(float  );
extern __declspec(__nothrow) float fmodf(float  , float  );
extern __declspec(__nothrow) float modff(float  , float *  ) __attribute__((__nonnull__(2)));

 
 













 
__declspec(__nothrow) long double acosl(long double );
__declspec(__nothrow) long double asinl(long double );
__declspec(__nothrow) long double atanl(long double );
__declspec(__nothrow) long double atan2l(long double , long double );
__declspec(__nothrow) long double ceill(long double );
__declspec(__nothrow) long double cosl(long double );
__declspec(__nothrow) long double coshl(long double );
__declspec(__nothrow) long double expl(long double );
__declspec(__nothrow) long double fabsl(long double );
__declspec(__nothrow) long double floorl(long double );
__declspec(__nothrow) long double fmodl(long double , long double );
__declspec(__nothrow) long double frexpl(long double , int* ) __attribute__((__nonnull__(2)));
__declspec(__nothrow) long double ldexpl(long double , int );
__declspec(__nothrow) long double logl(long double );
__declspec(__nothrow) long double log10l(long double );
__declspec(__nothrow) long double modfl(long double  , long double *  ) __attribute__((__nonnull__(2)));
__declspec(__nothrow) long double powl(long double , long double );
__declspec(__nothrow) long double sinl(long double );
__declspec(__nothrow) long double sinhl(long double );
__declspec(__nothrow) long double sqrtl(long double );
__declspec(__nothrow) long double tanl(long double );
__declspec(__nothrow) long double tanhl(long double );





 
extern __declspec(__nothrow) float acoshf(float  );
__declspec(__nothrow) long double acoshl(long double );
extern __declspec(__nothrow) float asinhf(float  );
__declspec(__nothrow) long double asinhl(long double );
extern __declspec(__nothrow) float atanhf(float  );
__declspec(__nothrow) long double atanhl(long double );
__declspec(__nothrow) long double copysignl(long double , long double );
extern __declspec(__nothrow) float cbrtf(float  );
__declspec(__nothrow) long double cbrtl(long double );
extern __declspec(__nothrow) float erff(float  );
__declspec(__nothrow) long double erfl(long double );
extern __declspec(__nothrow) float erfcf(float  );
__declspec(__nothrow) long double erfcl(long double );
extern __declspec(__nothrow) float expm1f(float  );
__declspec(__nothrow) long double expm1l(long double );
extern __declspec(__nothrow) float log1pf(float  );
__declspec(__nothrow) long double log1pl(long double );
extern __declspec(__nothrow) float hypotf(float  , float  );
__declspec(__nothrow) long double hypotl(long double , long double );
extern __declspec(__nothrow) float lgammaf(float  );
__declspec(__nothrow) long double lgammal(long double );
extern __declspec(__nothrow) float remainderf(float  , float  );
__declspec(__nothrow) long double remainderl(long double , long double );
extern __declspec(__nothrow) float rintf(float  );
__declspec(__nothrow) long double rintl(long double );



#line 875 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\math.h"





#line 896 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\math.h"

#line 1087 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\math.h"











#line 1317 "E:\\ruanjian\\keil\\ARM\\ARMCC\\Bin\\..\\include\\math.h"





 
#line 44 "..\\Source\\drivers\\./lsm6d/lsm6d.c"




float q0 = 1, q1 = 0, q2 = 0, q3 = 0;          
float exInt = 0, eyInt = 0, ezInt = 0;        
float Yaw = 0,Pitch = 0,Roll = 0;  


void calc_euler_angles(float gx, float gy, float gz, float ax, float ay, float az)
{
	float norm;
	float vx, vy, vz;
	float ex, ey, ez;

	
	norm = sqrt(ax*ax + ay*ay + az*az);      
	ax = ax / norm;                   
	ay = ay / norm;
	az = az / norm;      


	
	vx = 2*(q1*q3 - q0*q2);
	vy = 2*(q0*q1 + q2*q3);
	vz = q0*q0 - q1*q1 - q2*q2 + q3*q3;

	
	ex = (ay*vz - az*vy);
	ey = (az*vx - ax*vz);
	ez = (ax*vy - ay*vx);

	
	exInt = exInt + ex*0.002f;
	eyInt = eyInt + ey*0.002f;
	ezInt = ezInt + ez*0.002f;

	
	gx = gx + 100.0f*ex + exInt;
	gy = gy + 100.0f*ey + eyInt;
	gz = gz + 100.0f*ez + ezInt;

	
	q0 = q0 + (-q1*gx - q2*gy - q3*gz)*0.5f;
	q1 = q1 + (q0*gx + q2*gz - q3*gy)*0.5f;
	q2 = q2 + (q0*gy - q1*gz + q3*gx)*0.5f;
	q3 = q3 + (q0*gz + q1*gy - q2*gx)*0.5f;


	
	norm = sqrt(q0*q0 + q1*q1 + q2*q2 + q3*q3);
	q0 = q0 / norm;
	q1 = q1 / norm;
	q2 = q2 / norm;
	q3 = q3 / norm;


	Pitch  = asin(-2 * q1 * q3 + 2 * q0* q2)* 57.3; 
	Roll = atan2(2 * q2 * q3 + 2 * q0 * q1, -2 * q1 * q1 - 2 * q2* q2 + 1)* 57.3; 

	

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
	
	lsm6d_read_reg(0x22,buf,12);

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

	DBG_Print(4,"acce:%d %d %u gyr:%d %d %d\r\n",
					acce_x,acce_y,acce_z,gyr_x,gyr_y,gyr_z);

	

	DBG_Print(4,"(%u)xyz:%f %f %f %f %f %f %f %f %f\r\n",
				b - a,
				acce_x_mg,acce_y_mg,acce_z_mg,
				gyr_x_dps,gyr_y_dps,gyr_z_dps,
				Yaw,Pitch,Roll);
}















#line 56 "..\\Source\\drivers\\drivers.c"

#line 1 "..\\Source\\drivers\\./stm32_rtc/stm32_rtc.c"
#line 2 "..\\Source\\drivers\\./stm32_rtc/stm32_rtc.c"


 
void NVIC_Configuration(void)
{
    NVIC_InitTypeDef NVIC_InitStructure;
    NVIC_PriorityGroupConfig(((uint32_t)0x500)); 
    NVIC_InitStructure.NVIC_IRQChannel = RTC_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 4;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);
}

void RTC_IRQHandler(void)
{
	if (RTC_GetITStatus(((uint16_t)0x0002))!= RESET)
	{
		RTC_ClearITPendingBit(((uint16_t)0x0002));
	}
	RTC_ClearITPendingBit(((uint16_t)0x0004));
	
}

void stm32_rtc_set_alarm_wakeup(unsigned int wakeup_time)
{
	unsigned long cnt = 0;
	EXTI_InitTypeDef EXTI_InitStructure;

	if (wakeup_time == 0) return ;

	 
	RCC_APB1PeriphClockCmd(((uint32_t)0x10000000) | ((uint32_t)0x08000000),ENABLE);
	  
	PWR_BackupAccessCmd(ENABLE);
	  
	BKP_DeInit();

	RCC_LSICmd(ENABLE);
	 
	while (RCC_GetFlagStatus(((uint8_t)0x61)) == RESET)
	{
		cnt++;
		if (cnt >= 0xFFFFFFF0)
		{
			return ;
		}
	}

	RCC_RTCCLKConfig(((uint32_t)0x00000200));

	RTC_SetAlarm(wakeup_time);

	  
	RCC_RTCCLKCmd(ENABLE);
	  
	RTC_WaitForSynchro();
	 			 
	RTC_WaitForLastTask();
	 
	RTC_SetPrescaler(40000 - 1);  
	 
	RTC_WaitForLastTask();

	 		  
	RTC_WaitForLastTask();

	EXTI_InitStructure.EXTI_Line = ((uint32_t)0x20000);
	EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
	EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising_Falling;
	EXTI_InitStructure.EXTI_LineCmd = ENABLE;
	EXTI_Init(&EXTI_InitStructure);

    NVIC_Configuration();

	 
	RCC_ClearFlag();

	RTC_ITConfig(((uint16_t)0x0002), ENABLE);
}



#line 58 "..\\Source\\drivers\\drivers.c"



#line 1 "..\\Source\\drivers\\./hardwarecfg/hardwarecfg.c"
#line 2 "..\\Source\\drivers\\./hardwarecfg/hardwarecfg.c"


unsigned int HSE_VALUE = 25000000;


void reset_rcc_clock(void)
{
	 
	 
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR |= (uint32_t)0x00000001;
	
	 
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR &= (uint32_t)0xF8FF0000;
	
	 
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR &= (uint32_t)0xFEF6FFFF;
	
	 
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR &= (uint32_t)0xFFFBFFFF;
	
	 
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR &= (uint32_t)0xFF80FFFF;
	
	 
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CIR = 0x009F0000;
}








 
static void set_sys_clock_to_hse(void)
{
  volatile uint32_t StartUpCounter = 0, HSEStatus = 0;
  
       
       
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR |= ((uint32_t)((uint32_t)0x00010000));
 
   
  do
  {
    HSEStatus = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR & ((uint32_t)0x00020000);
    StartUpCounter++;  
  } while((HSEStatus == 0) && (StartUpCounter != ((uint16_t)0xFFFF)));

  if ((((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR & ((uint32_t)0x00020000)) != RESET)
  {
    HSEStatus = (uint32_t)0x01;
  }
  else
  {
    HSEStatus = (uint32_t)0x00;
  }  

  if (HSEStatus == (uint32_t)0x01)
  {

     
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->ACR |= ((uint8_t)0x10);

     
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->ACR &= (uint32_t)((uint32_t)~((uint8_t)0x03));


    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->ACR |= (uint32_t)((uint8_t)0x00);

 
     
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR |= (uint32_t)((uint32_t)0x00000000);
      
     
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR |= (uint32_t)((uint32_t)0x00000000);
    
     
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR |= (uint32_t)((uint32_t)0x00000000);
    
     
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR &= (uint32_t)((uint32_t)~(((uint32_t)0x00000003)));
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR |= (uint32_t)((uint32_t)0x00000001);    

     
    while ((((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR & (uint32_t)((uint32_t)0x0000000C)) != (uint32_t)0x04)
    {
    }
  }
  else
  { 
 
  }  
}


static void _set_pll_mull(unsigned int _RCC_CFGR_PLLMULL)
{
  volatile uint32_t StartUpCounter = 0, HSEStatus = 0;
  
       
       
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR |= ((uint32_t)((uint32_t)0x00010000));
 
   
  do
  {
    HSEStatus = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR & ((uint32_t)0x00020000);
    StartUpCounter++;  
  } while((HSEStatus == 0) && (StartUpCounter != ((uint16_t)0xFFFF)));

  if ((((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR & ((uint32_t)0x00020000)) != RESET)
  {
    HSEStatus = (uint32_t)0x01;
  }
  else
  {
    HSEStatus = (uint32_t)0x00;
  }  

  if (HSEStatus == (uint32_t)0x01)
  {
     
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->ACR |= ((uint8_t)0x10);

     
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->ACR &= (uint32_t)((uint32_t)~((uint8_t)0x03));
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->ACR |= (uint32_t)((uint8_t)0x02);    

 
     
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR |= (uint32_t)((uint32_t)0x00000000);
      
     
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR |= (uint32_t)((uint32_t)0x00000000);
    
     
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR |= (uint32_t)((uint32_t)0x00000400);


   
     
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR &= (uint32_t)((uint32_t)~(((uint32_t)0x00010000) | ((uint32_t)0x00020000) |
                                        ((uint32_t)0x003C0000)));
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR |= (uint32_t)(((uint32_t)0x00010000) | _RCC_CFGR_PLLMULL);


     
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR |= ((uint32_t)0x01000000);

     
    while((((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR & ((uint32_t)0x02000000)) == 0)
    {
    }
    
     
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR &= (uint32_t)((uint32_t)~(((uint32_t)0x00000003)));
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR |= (uint32_t)((uint32_t)0x00000002);    

     
    while ((((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR & (uint32_t)((uint32_t)0x0000000C)) != (uint32_t)0x08)
    {
    }
  }
  else
  { 
 
  }
}


void set_pll_mull(unsigned int _RCC_CFGR_PLLMULL)
{
	reset_rcc_clock();

	_set_pll_mull(_RCC_CFGR_PLLMULL);

	
}


void update_clock_to_hse(void)
{
	reset_rcc_clock();
	set_sys_clock_to_hse();

	
}

void update_clock_to_hsi(void)
{
	reset_rcc_clock();
	
}


void update_clock_to_72mhz(void)
{
	update_clock_to_hse();
	

	HSE_VALUE = 25000000;
	if (HSE_VALUE == 8000000)
	{
		set_pll_mull(((uint32_t)0x001C0000));
	}

	if (HSE_VALUE == 12000000)
	{
		set_pll_mull(((uint32_t)0x00100000));
	}

	if (HSE_VALUE == 25000000)
	{
		set_pll_mull(((uint32_t)0x00080000));
	}
}



void set_gps_led(char is_on)
{
	if (is_on)
	{	
		pin_high(((uint32_t)0x00000020),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1400)),((uint16_t)0x0008));
	}
	else
	{
		pin_low(((uint32_t)0x00000020),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1400)),((uint16_t)0x0008));
	}
}

void set_sys_led(char is_on)
{
	if (is_on)
	{	
		pin_high(((uint32_t)0x00000020),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1400)),((uint16_t)0x0020));
	}
	else
	{
		pin_low(((uint32_t)0x00000020),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1400)),((uint16_t)0x0020));
	}
}

void set_can_led(char is_on)
{
	if (is_on)
	{	
		pin_high(((uint32_t)0x00000020),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1400)),((uint16_t)0x0010));
	}
	else
	{
		pin_low(((uint32_t)0x00000020),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1400)),((uint16_t)0x0010));
	}
}

void set_net_led(char is_on)
{
	if (is_on)
	{	
		pin_high(((uint32_t)0x00000020),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1400)),((uint16_t)0x0040));
	}
	else
	{
		pin_low(((uint32_t)0x00000020),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1400)),((uint16_t)0x0040));
	}
}

void set_out1_led(char is_on)
{
	if (is_on)
	{	
		pin_high(((uint32_t)0x00000040),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1800)),((uint16_t)0x0100));
	}
	else
	{
		pin_low(((uint32_t)0x00000040),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1800)),((uint16_t)0x0100));
	}
}

void set_out2_led(char is_on)
{
	if (is_on)
	{	
		pin_high(((uint32_t)0x00000040),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1800)),((uint16_t)0x0200));
	}
	else
	{
		pin_low(((uint32_t)0x00000040),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1800)),((uint16_t)0x0200));
	}
}

unsigned int read_main_power_vol(void)
{
	unsigned int main_power_adc = 0;
	unsigned int val = 0;

	main_power_adc = GetADCValue(((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2400)),11);
	add_main_power_ad_val_to_list(main_power_adc);
	
	
	val = (main_power_adc * 3300 * 11) >> 12;
	val += 550;

	
	return val;
}

unsigned int read_bat_temperature_vol(void)
{
	unsigned int adc_val = 0;
	unsigned int val = 0;

	adc_val = GetADCValue(((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2400)),12);
	val = (adc_val * 3300) >> 12;
	return val;
}

unsigned int read_bat_vol(void)
{
	unsigned int bat_adc = 0;
	unsigned int val = 0;
	
	bat_adc = GetADCValue(((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2400)),10);

	if (bat_adc < 50)
	{
		val = 0;
	}
	else
	{
		
		val = (bat_adc * 33 * 162) >> 12;
	}
	return val;
}


unsigned int read_gps_ant_vol(void)
{
	unsigned int ant_adc = 0;
	unsigned int val = 0;

	ant_adc = GetADCValue(((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2400)),9);
	add_gps_ant_ad_val_to_list(ant_adc);

	val = (ant_adc * 3300) >> 12;

	return val;
}

char read_acc_status(void)
{
	char sta1 = 0;

	sta1 = pin_read_in(((uint32_t)0x00000004),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800)),((uint16_t)0x0001));
	return sta1;
}


void hw_work_mode_ctrl(unsigned char mode)
{
	switch (mode)
	{
	case 0:
		pin_low(((uint32_t)0x00000040),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1800)),((uint16_t)0x0100));
		pin_low(((uint32_t)0x00000040),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1800)),((uint16_t)0x0200));

		pin_high(((uint32_t)0x00000040),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1800)),((uint16_t)0x0008));
		pin_low(((uint32_t)0x00000004),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800)),((uint16_t)0x0002));

		pin_high(((uint32_t)0x00000040),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1800)),((uint16_t)0x4000));
		pin_high(((uint32_t)0x00000040),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1800)),((uint16_t)0x0010));
		pin_high(0,0,0);

		pin_high(((uint32_t)0x00000040),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1800)),((uint16_t)0x8000));
		pin_high(((uint32_t)0x00000008),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0C00)),((uint16_t)0x8000));
		
		pin_low(((uint32_t)0x00000020),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1400)),((uint16_t)0x2000));
		pin_low(((uint32_t)0x00000020),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1400)),((uint16_t)0x0800));
		pin_low(((uint32_t)0x00000020),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1400)),((uint16_t)0x1000));

		pin_high(((uint32_t)0x00000004),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800)),((uint16_t)0x0100));
		pin_high(((uint32_t)0x00000010),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1000)),((uint16_t)0x0200));
		pin_high(((uint32_t)0x00000010),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1000)),((uint16_t)0x0040));

		pin_low(((uint32_t)0x00000008),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0C00)),((uint16_t)0x4000));
		pin_high(((uint32_t)0x00000008),0,0);
		pin_high(((uint32_t)0x00000010),0,0);

	break;
	case 1:


	break;
	default:break;
	}
}

void gpio_init(void)
{
	_gpio_init(((uint32_t)0x00000040),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1800)),((uint16_t)0x4000),GPIO_Mode_Out_PP);

	_gpio_init(((uint32_t)0x00000020),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1400)),((uint16_t)0x0010),GPIO_Mode_Out_PP);
	_gpio_init(((uint32_t)0x00000020),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1400)),((uint16_t)0x0040),GPIO_Mode_Out_PP);
	_gpio_init(((uint32_t)0x00000020),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1400)),((uint16_t)0x0008),GPIO_Mode_Out_PP);
	_gpio_init(((uint32_t)0x00000020),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1400)),((uint16_t)0x0020),GPIO_Mode_Out_PP);

	_gpio_init(((uint32_t)0x00000040),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1800)),((uint16_t)0x0100),GPIO_Mode_Out_PP);
	_gpio_init(((uint32_t)0x00000040),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1800)),((uint16_t)0x0200),GPIO_Mode_Out_PP);


	_gpio_init(0,0,0,GPIO_Mode_Out_PP);

	_gpio_init(((uint32_t)0x00000040),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1800)),((uint16_t)0x0008),GPIO_Mode_Out_PP);
	_gpio_init(((uint32_t)0x00000040),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1800)),((uint16_t)0x0020),GPIO_Mode_IN_FLOATING);
	_gpio_init(((uint32_t)0x00000004),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800)),((uint16_t)0x0002),GPIO_Mode_Out_PP);

	_gpio_init(((uint32_t)0x00000004),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800)),((uint16_t)0x0001),GPIO_Mode_IN_FLOATING);
	_gpio_init(((uint32_t)0x00000040),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1800)),((uint16_t)0x0010),GPIO_Mode_Out_PP);

	
	_gpio_init(((uint32_t)0x00000040),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1800)),((uint16_t)0x8000),GPIO_Mode_Out_PP);
	_gpio_init(((uint32_t)0x00000020),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1400)),((uint16_t)0x1000),GPIO_Mode_Out_PP);
	_gpio_init(((uint32_t)0x00000020),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1400)),((uint16_t)0x0800),GPIO_Mode_Out_PP);
	_gpio_init(((uint32_t)0x00000008),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0C00)),((uint16_t)0x8000),GPIO_Mode_Out_PP);
	_gpio_init(((uint32_t)0x00000020),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1400)),((uint16_t)0x4000),GPIO_Mode_IN_FLOATING);
	_gpio_init(((uint32_t)0x00000020),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1400)),((uint16_t)0x2000),GPIO_Mode_Out_PP);
	_gpio_init(((uint32_t)0x00000020),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1400)),((uint16_t)0x8000),GPIO_Mode_IN_FLOATING);


	_gpio_init(((uint32_t)0x00000040),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1800)),((uint16_t)0x0400),GPIO_Mode_IN_FLOATING);
	_gpio_init(((uint32_t)0x00000040),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1800)),((uint16_t)0x0800),GPIO_Mode_IN_FLOATING);
	_gpio_init(((uint32_t)0x00000040),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1800)),((uint16_t)0x1000),GPIO_Mode_IN_FLOATING);
	_gpio_init(((uint32_t)0x00000040),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1800)),((uint16_t)0x2000),GPIO_Mode_IN_FLOATING);	



	
	_gpio_init(((uint32_t)0x00000004),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800)),((uint16_t)0x0100),GPIO_Mode_Out_PP);
	_gpio_init(((uint32_t)0x00000008),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0C00)),((uint16_t)0x4000),GPIO_Mode_Out_PP);
	_gpio_init(((uint32_t)0x00000010),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1000)),((uint16_t)0x0200),GPIO_Mode_Out_PP);
	_gpio_init(((uint32_t)0x00000008),0,0,GPIO_Mode_Out_PP);
	_gpio_init(((uint32_t)0x00000010),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1000)),((uint16_t)0x0040),GPIO_Mode_Out_PP);
	_gpio_init(((uint32_t)0x00000010),0,0,GPIO_Mode_Out_PP);


	_gpio_init(((uint32_t)0x00000010),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1000)),((uint16_t)0x0020),GPIO_Mode_IN_FLOATING);
	_gpio_init(((uint32_t)0x00000008),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0C00)),((uint16_t)0x0001),GPIO_Mode_IN_FLOATING);

	_gpio_init(((uint32_t)0x00000004),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800)),((uint16_t)0x8000),GPIO_Mode_IN_FLOATING);
	_gpio_init(((uint32_t)0x00000008),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0C00)),((uint16_t)0x0008),GPIO_Mode_IN_FLOATING);
	_gpio_init(((uint32_t)0x00000008),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0C00)),((uint16_t)0x0010),GPIO_Mode_IN_FLOATING);
	_gpio_init(((uint32_t)0x00000008),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0C00)),((uint16_t)0x0020),GPIO_Mode_IN_FLOATING);


	
	_gpio_init(((uint32_t)0x00000008),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0C00)),((uint16_t)0x0040),GPIO_Mode_Out_PP);
	_gpio_init(((uint32_t)0x00000008),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0C00)),((uint16_t)0x0080),GPIO_Mode_Out_PP);



	set_sys_led(0);

	GPIO_PinRemapConfig(((uint32_t)0x00300100),ENABLE);
	
	hw_work_mode_ctrl(0);
}





void set_sda(unsigned int val)
{
	if (val)
	{
		pin_high(((uint32_t)0x00000008),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0C00)),((uint16_t)0x0080));
	}
	else
	{
		pin_low(((uint32_t)0x00000008),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0C00)),((uint16_t)0x0080));
	}
}

void set_scl(unsigned int val)
{
	if (val)
	{
		pin_high(((uint32_t)0x00000008),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0C00)),((uint16_t)0x0040));
	}
	else
	{
		pin_low(((uint32_t)0x00000008),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0C00)),((uint16_t)0x0040));
	}
}


unsigned char read_sda(void)
{
	return pin_read_in(((uint32_t)0x00000008),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0C00)),((uint16_t)0x0080));
}


void set_sda_output(void)
{
	_gpio_init(((uint32_t)0x00000008),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0C00)),((uint16_t)0x0080),GPIO_Mode_Out_PP);
}


void set_sda_input(void)
{
	_gpio_init(((uint32_t)0x00000008),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0C00)),((uint16_t)0x0080),GPIO_Mode_IN_FLOATING);
}

void set_scl_output(void)
{
	_gpio_init(((uint32_t)0x00000008),((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0C00)),((uint16_t)0x0040),GPIO_Mode_Out_PP);
}

void delayus(unsigned int t)
{
	volatile unsigned int i = 0;
	volatile unsigned int j = 0;

	for (j = 0; j < 5; j++)
	{
		for (i = 0; i < t; i++);
	}
}

uint16_t GetCpuID(void *pOutBuf,uint16_t buflen)
{
	INT8U len = 0;
	u32 temp0,temp1,temp2;
	uint16_t ret = 0;
	uint8_t *cpuid = (uint8_t *)pOutBuf;

	temp0 = *(volatile u32*)(0x1FFFF7E8);
	temp1 = *(volatile u32*)(0x1FFFF7EC);
	temp2 = *(volatile u32*)(0x1FFFF7F0);

	if (cpuid && (buflen >= 12))
	{
		memset(pOutBuf,0,buflen);
		cpuid[len++] = temp0 >> 24;
		cpuid[len++] = temp0 >> 16;
		cpuid[len++] = temp0 >> 8;
		cpuid[len++] = temp0;
		
		cpuid[len++] = temp1 >> 24;
		cpuid[len++] = temp1 >> 16;
		cpuid[len++] = temp1 >> 8;
		cpuid[len++] = temp1;
		
		cpuid[len++] = temp2 >> 24;
		cpuid[len++] = temp2 >> 16;
		cpuid[len++] = temp2 >> 8;
		cpuid[len++] = temp2;
		ret = len;
	}
	else
	{
		ret = 0;
	}
	return ret;
}

unsigned int GetCpuFlashSize(void)
{
    unsigned int Stm32_Flash_Size = 0;

    Stm32_Flash_Size = *(u16*)(0x1FFFF7E0);
    return Stm32_Flash_Size;
}

#line 62 "..\\Source\\drivers\\drivers.c"









