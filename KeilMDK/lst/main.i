#line 1 "..\\Source\\main\\main.c"
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








#line 1 "..\\Source\\main\\includes.h"
#line 10 "..\\Source\\main\\../drivers/drivers.h"

#line 1 "..\\Source\\main\\../drivers/./RTT/SEGGER_RTT_Conf.h"
































































 













 
























 





























 
#line 203 "..\\Source\\main\\../drivers/./RTT/SEGGER_RTT_Conf.h"




 
#line 230 "..\\Source\\main\\../drivers/./RTT/SEGGER_RTT_Conf.h"




 
#line 244 "..\\Source\\main\\../drivers/./RTT/SEGGER_RTT_Conf.h"




 
#line 258 "..\\Source\\main\\../drivers/./RTT/SEGGER_RTT_Conf.h"




 
#line 285 "..\\Source\\main\\../drivers/./RTT/SEGGER_RTT_Conf.h"










 
#line 318 "..\\Source\\main\\../drivers/./RTT/SEGGER_RTT_Conf.h"




 









 
#line 12 "..\\Source\\main\\../drivers/drivers.h"
#line 1 "..\\Source\\main\\../drivers/./RTT/SEGGER_RTT.h"
































































 




#line 71 "..\\Source\\main\\../drivers/./RTT/SEGGER_RTT.h"






 






 





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









 
















#line 220 "..\\Source\\main\\../drivers/./RTT/SEGGER_RTT.h"

#line 229 "..\\Source\\main\\../drivers/./RTT/SEGGER_RTT.h"

#line 238 "..\\Source\\main\\../drivers/./RTT/SEGGER_RTT.h"

#line 247 "..\\Source\\main\\../drivers/./RTT/SEGGER_RTT.h"




 
#line 13 "..\\Source\\main\\../drivers/drivers.h"


#line 1 "..\\Source\\main\\../drivers/./DBG/DBG.h"








#line 19 "..\\Source\\main\\../drivers/./DBG/DBG.h"









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










#line 16 "..\\Source\\main\\../drivers/drivers.h"


#line 1 "..\\Source\\main\\../drivers/./func/func.h"






#line 8 "..\\Source\\main\\../drivers/./func/func.h"
#line 9 "..\\Source\\main\\../drivers/./func/func.h"
#line 10 "..\\Source\\main\\../drivers/./func/func.h"




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












#line 19 "..\\Source\\main\\../drivers/drivers.h"


#line 1 "..\\Source\\main\\../drivers/./stm32lib/misc.h"




















 

 







 
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



 

 

  


  




 

















 









 

  

 

 
#line 33 "..\\Source\\main\\../drivers/./stm32lib/misc.h"



 



 



 



 

typedef struct
{
  uint8_t NVIC_IRQChannel;                    


 

  uint8_t NVIC_IRQChannelPreemptionPriority;  

 

  uint8_t NVIC_IRQChannelSubPriority;         

 

  FunctionalState NVIC_IRQChannelCmd;         

    
} NVIC_InitTypeDef;
 


 



 
























 



 



 



 







 



 

#line 133 "..\\Source\\main\\../drivers/./stm32lib/misc.h"


 



 

#line 151 "..\\Source\\main\\../drivers/./stm32lib/misc.h"















 



 







 



 



 



 



 

void NVIC_PriorityGroupConfig(uint32_t NVIC_PriorityGroup);
void NVIC_Init(NVIC_InitTypeDef* NVIC_InitStruct);
void NVIC_SetVectorTable(uint32_t NVIC_VectTab, uint32_t Offset);
void NVIC_SystemLPConfig(uint8_t LowPowerMode, FunctionalState NewState);
void SysTick_CLKSourceConfig(uint32_t SysTick_CLKSource);









 



 



 

 
#line 22 "..\\Source\\main\\../drivers/drivers.h"

#line 1 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_rcc.h"




















 

 







 
#line 33 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_rcc.h"



 



 



 

typedef struct
{
  uint32_t SYSCLK_Frequency;   
  uint32_t HCLK_Frequency;     
  uint32_t PCLK1_Frequency;    
  uint32_t PCLK2_Frequency;    
  uint32_t ADCCLK_Frequency;   
}RCC_ClocksTypeDef;



 



 



 









  



 



#line 94 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_rcc.h"



  



 
#line 126 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_rcc.h"

#line 141 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_rcc.h"


 



 
#line 175 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_rcc.h"


 




 
#line 196 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_rcc.h"


 

#line 283 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_rcc.h"




 

#line 295 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_rcc.h"


 



 

#line 317 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_rcc.h"


  



 

#line 333 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_rcc.h"


 



 

#line 347 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_rcc.h"

#line 364 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_rcc.h"




 




 








 
#line 396 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_rcc.h"


#line 423 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_rcc.h"
  



 

#line 435 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_rcc.h"


 



 








 



 

#line 462 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_rcc.h"


 



 







#line 489 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_rcc.h"


 



 

#line 518 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_rcc.h"




  



 

#line 553 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_rcc.h"
 




 



 







#line 586 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_rcc.h"



 



 

#line 606 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_rcc.h"

#line 625 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_rcc.h"




 



 



 



 



 

void RCC_DeInit(void);
void RCC_HSEConfig(uint32_t RCC_HSE);
ErrorStatus RCC_WaitForHSEStartUp(void);
void RCC_AdjustHSICalibrationValue(uint8_t HSICalibrationValue);
void RCC_HSICmd(FunctionalState NewState);
void RCC_PLLConfig(uint32_t RCC_PLLSource, uint32_t RCC_PLLMul);
void RCC_PLLCmd(FunctionalState NewState);





#line 666 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_rcc.h"

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








 



 



  

 
#line 24 "..\\Source\\main\\../drivers/drivers.h"

#line 1 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_pwr.h"




















 

 







 
#line 33 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_pwr.h"



 



  



  



  



  



  

#line 70 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_pwr.h"


 



 







 



 




 


 



 










 



 



 



 



 

void PWR_DeInit(void);
void PWR_BackupAccessCmd(FunctionalState NewState);
void PWR_PVDCmd(FunctionalState NewState);
void PWR_PVDLevelConfig(uint32_t PWR_PVDLevel);
void PWR_WakeUpPinCmd(FunctionalState NewState);
void PWR_EnterSTOPMode(uint32_t PWR_Regulator, uint8_t PWR_STOPEntry);
void PWR_EnterSTANDBYMode(void);
FlagStatus PWR_GetFlagStatus(uint32_t PWR_FLAG);
void PWR_ClearFlag(uint32_t PWR_FLAG);








 



 



 

 
#line 26 "..\\Source\\main\\../drivers/drivers.h"

#line 1 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_gpio.h"




















 

 







 
#line 33 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_gpio.h"



 



 



 

#line 53 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_gpio.h"
                                     


 

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





 



 



 

#line 144 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_gpio.h"



#line 163 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_gpio.h"



 



 

#line 204 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_gpio.h"







#line 217 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_gpio.h"






#line 245 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_gpio.h"
                              


  



 

#line 266 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_gpio.h"

#line 274 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_gpio.h"



 



 

#line 299 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_gpio.h"

#line 316 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_gpio.h"



 



  








                                                 


 



 



 



 

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








 



 



 

 
#line 28 "..\\Source\\main\\../drivers/drivers.h"

#line 1 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_adc.h"




















 

 







 
#line 33 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_adc.h"



 



 



 



 

typedef struct
{
  uint32_t ADC_Mode;                      

 

  FunctionalState ADC_ScanConvMode;       

 

  FunctionalState ADC_ContinuousConvMode; 

 

  uint32_t ADC_ExternalTrigConv;          

 

  uint32_t ADC_DataAlign;                 
 

  uint8_t ADC_NbrOfChannel;               

 
}ADC_InitTypeDef;


 



 










 

#line 104 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_adc.h"

#line 115 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_adc.h"


 



 

#line 129 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_adc.h"




#line 139 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_adc.h"

#line 154 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_adc.h"


 



 







 



 

#line 192 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_adc.h"




#line 205 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_adc.h"


 



 

#line 229 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_adc.h"


 



 

















#line 266 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_adc.h"


 



 

#line 282 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_adc.h"


 



 

#line 297 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_adc.h"

#line 305 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_adc.h"


 



 











 



 

#line 338 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_adc.h"


 



 





 



 





 



 





 



 





  




 




 



 





 



 





 



 



 



 



 

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









 



 



 

 
#line 30 "..\\Source\\main\\../drivers/drivers.h"

#line 1 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_usart.h"




















 

 







 
#line 33 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_usart.h"



 



  



  



  
  
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



  



  
  
#line 115 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_usart.h"











  
  


                                    




  



  
  
#line 149 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_usart.h"


  



  
  
#line 163 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_usart.h"


  



  
  





  



  
#line 190 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_usart.h"


  



  






  



 
  






  



 







 



 







  



 
  
#line 267 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_usart.h"


 



 







  



 







 



 
  







 



 







  



 

#line 339 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_usart.h"
                              
#line 347 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_usart.h"



  



  



  



  



 

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








  



  



  

 
#line 32 "..\\Source\\main\\../drivers/drivers.h"

#line 1 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_spi.h"




















 

 







 
#line 33 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_spi.h"



 



  



 



 

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



 



 










 
  
#line 136 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_spi.h"


 



 







 



 







  



 







 



 







 



 







  



 

#line 220 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_spi.h"


  



 







 



 

#line 248 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_spi.h"


 



 

#line 266 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_spi.h"


 



 

#line 282 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_spi.h"


  



 







 



 

#line 312 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_spi.h"






  



 







 



 






 



 







 



 






 



 







 



 

#line 396 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_spi.h"


 



 

#line 417 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_spi.h"


 



 




 



 



 



 



 

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








 



 



 

 
#line 34 "..\\Source\\main\\../drivers/drivers.h"

#line 1 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_flash.h"




















 

 







 
#line 33 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_flash.h"



 



 



 



 

typedef enum
{ 
  FLASH_BUSY = 1,
  FLASH_ERROR_PG,
  FLASH_ERROR_WRP,
  FLASH_COMPLETE,
  FLASH_TIMEOUT
}FLASH_Status;



 



 



 

#line 77 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_flash.h"


 



 







 



 







 



 

 
#line 118 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_flash.h"

 
#line 144 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_flash.h"

 
#line 211 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_flash.h"











 



 







 



 







 



 





#line 270 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_flash.h"


 


 
#line 291 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_flash.h"






 



 
#line 333 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_flash.h"





 
#line 346 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_flash.h"



 



 



 



 



 

 
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

#line 408 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_flash.h"








 



 



 

 
#line 36 "..\\Source\\main\\../drivers/drivers.h"

#line 1 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_exti.h"




















 

 







 
#line 33 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_exti.h"



 



 



 



 

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



 



 



 

#line 124 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_exti.h"
                                          
#line 136 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_exti.h"

                    


 



 



 



 



 

void EXTI_DeInit(void);
void EXTI_Init(EXTI_InitTypeDef* EXTI_InitStruct);
void EXTI_StructInit(EXTI_InitTypeDef* EXTI_InitStruct);
void EXTI_GenerateSWInterrupt(uint32_t EXTI_Line);
FlagStatus EXTI_GetFlagStatus(uint32_t EXTI_Line);
void EXTI_ClearFlag(uint32_t EXTI_Line);
ITStatus EXTI_GetITStatus(uint32_t EXTI_Line);
void EXTI_ClearITPendingBit(uint32_t EXTI_Line);








 



 



 

 
#line 38 "..\\Source\\main\\../drivers/drivers.h"

#line 1 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_can.h"




















 

 







 
#line 33 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_can.h"



 



 



 






 

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



 



 



 






 



 












 





   










 
  



   







 



 










 



 

#line 301 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_can.h"




 



 

#line 319 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_can.h"





 



 





 



 







 



 








 



 









 



 







 



 



 



 








 



 







 



 







 



 








 



 








 



 






 



 






 




   
                                                                
#line 493 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_can.h"




 



 

 
 

 




 
#line 518 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_can.h"

 



 

 





#line 539 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_can.h"








 

  


 


  


 
#line 565 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_can.h"

 



 






 





#line 590 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_can.h"

#line 597 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_can.h"



 



 
#line 621 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_can.h"



 



 



 



 



 
  
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








 



 



 

 
#line 40 "..\\Source\\main\\../drivers/drivers.h"

#line 1 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_rtc.h"




















 

 







 
#line 33 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_rtc.h"



 



  



  



  



 



 

#line 64 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_rtc.h"


  



 

#line 82 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_rtc.h"



 



 



 



 



 

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








 



 



 

 
#line 42 "..\\Source\\main\\../drivers/drivers.h"

#line 1 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_bkp.h"




















 

 







 
#line 33 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_bkp.h"



 



 



 



 



 



 







 



 

#line 78 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_bkp.h"


 



 

#line 128 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_bkp.h"

#line 143 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_bkp.h"




 



 



 



 



 

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








 



 



 

 
#line 44 "..\\Source\\main\\../drivers/drivers.h"

#line 1 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_dma.h"




















 

 







 
#line 33 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_dma.h"



 



 



 



 

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



 



 

#line 107 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_dma.h"



 







 



 







 



 







 



 

#line 154 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_dma.h"


 



 

#line 168 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_dma.h"


 



 






 



 

#line 195 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_dma.h"


 



 







 



 






#line 248 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_dma.h"

#line 269 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_dma.h"



#line 296 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_dma.h"



 



 
#line 332 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_dma.h"

#line 353 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_dma.h"



#line 380 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_dma.h"


 



 





 



 



 



 



 

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








 



 



 

 
#line 46 "..\\Source\\main\\../drivers/drivers.h"

#line 1 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_sdio.h"




















 

 







 
#line 33 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_sdio.h"



 



 



 

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



  



 



 







 



 







  



 







 



 









 



 







 



 






  




 

#line 222 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_sdio.h"


  



 




 



 

#line 245 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_sdio.h"


 



 








 



 






  



 

#line 283 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_sdio.h"


 



 




 



 

#line 330 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_sdio.h"


 



 







 



 







 



 






 



 

#line 421 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_sdio.h"



#line 448 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_sdio.h"





 



 







 



 



 



 



 

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








 



 



 

 
#line 48 "..\\Source\\main\\../drivers/drivers.h"

#line 1 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_tim.h"




















 

 







 
#line 33 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_tim.h"



 



  



  




 

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



 

#line 186 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_tim.h"

 



 






 
#line 205 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_tim.h"
									                                 
 
#line 216 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_tim.h"

                                             
#line 225 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_tim.h"

 
#line 236 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_tim.h"

 
#line 249 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_tim.h"

                                         
#line 266 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_tim.h"

 
#line 279 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_tim.h"
                                                                                                                                                                                                                          


  



 

#line 308 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_tim.h"


 



 







  



 

#line 341 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_tim.h"


  



 

#line 355 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_tim.h"


 



 

#line 373 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_tim.h"


  



 







 



 
  






 



 







  



 







  



 







  



 







  



 







  



 







  



 







  



 

#line 497 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_tim.h"


  



 







 



 







  



 







  



 







  



 

#line 561 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_tim.h"


  



 

#line 577 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_tim.h"


  



 

#line 593 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_tim.h"


  



 

#line 610 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_tim.h"

#line 619 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_tim.h"


  



 

#line 665 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_tim.h"


  



 

#line 709 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_tim.h"


  



 

#line 725 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_tim.h"



  



 

#line 742 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_tim.h"


  



 

#line 770 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_tim.h"


  



 

#line 784 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_tim.h"


  



  






 



 







  



 







  



 

#line 833 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_tim.h"


  




 

#line 851 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_tim.h"



  



 

#line 866 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_tim.h"


  



 







  



 





                                     


  



 







  



 

#line 927 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_tim.h"


  



 

#line 943 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_tim.h"


  



 







  



 

#line 987 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_tim.h"
                               
                               



  



 




  



 




  



 

#line 1034 "..\\Source\\main\\../drivers/./stm32lib/stm32f10x_tim.h"


 



 



 



  



 

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








  



  



 

 
#line 50 "..\\Source\\main\\../drivers/drivers.h"

#line 1 "..\\Source\\main\\../drivers/cortex_m3.h"







extern void _delay(unsigned int t);

extern void cpu_ts_init(void);
extern unsigned int cpu_clock(void);


extern unsigned int get_sp(void);
extern void set_sp(unsigned int val);


#line 42 "..\\Source\\main\\../drivers/cortex_m3.h"



#line 52 "..\\Source\\main\\../drivers/drivers.h"


#line 1 "..\\Source\\main\\../drivers/./Stm32Flash/Stm32Flash.h"
















extern void Stm32FlashWriteTest(void);

extern void Stm32FlashReadTest(void);

extern void stm32_flash_disp(unsigned long ulStartAddr,unsigned long ulEndAddr);


extern int IAP_ProgramInit(unsigned int StartAddress,unsigned int EndAddress);

extern int IAP_ProgramWrite(void *pdat,unsigned int ulDatLen);


extern int Stm32FlashWritePage(uint32_t StartAddress,void *pdat);


extern void stm32_flash_write(unsigned long addr,void *buf,unsigned int len);
extern void stm32_flash_read(unsigned long addr,unsigned int wantToReadBytes,void *buf,unsigned int bufsize);
extern void stm32_flash_erase_sector(unsigned long sector_id);










#line 55 "..\\Source\\main\\../drivers/drivers.h"


#line 1 "..\\Source\\main\\../drivers/./gpio/gpio.h"







extern void _gpio_init(uint32_t rcc,GPIO_TypeDef* port,uint16_t pin,GPIOMode_TypeDef mode);

extern void pin_low(uint32_t rcc,GPIO_TypeDef* port,uint16_t pin);

extern void pin_high(uint32_t rcc,GPIO_TypeDef* port,uint16_t pin);

extern void pin_toggle(uint32_t rcc,GPIO_TypeDef* port,uint16_t pin);


extern unsigned char pin_read_in(uint32_t rcc,GPIO_TypeDef* port,uint16_t pin);









#line 58 "..\\Source\\main\\../drivers/drivers.h"
#line 1 "..\\Source\\main\\../drivers/./usart/usart.h"


















































#line 59 "..\\Source\\main\\../drivers/./usart/usart.h"



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












#line 59 "..\\Source\\main\\../drivers/drivers.h"
#line 1 "..\\Source\\main\\../drivers/./adc/adc.h"








extern void ADC1_Init(uint8_t channel);
extern void ADC2_Init(uint8_t channel);
extern void ADC3_Init(uint8_t channel);


extern uint16_t GetADCValue(ADC_TypeDef* ADCx,uint8_t channel);







#line 60 "..\\Source\\main\\../drivers/drivers.h"
#line 1 "..\\Source\\main\\../drivers/./can/can.h"























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







#line 61 "..\\Source\\main\\../drivers/drivers.h"
#line 1 "..\\Source\\main\\../drivers/./exti/exti.h"












extern void exit_init(uint32_t rcc,GPIO_TypeDef* port,
					uint16_t pin,GPIOMode_TypeDef mode,
					void (*handler)(void)
					);

extern void enable_pvd_monitor(void (*pvd_handler)(void));









#line 62 "..\\Source\\main\\../drivers/drivers.h"

#line 1 "..\\Source\\main\\../drivers/./SPI/SPI.h"






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









#line 64 "..\\Source\\main\\../drivers/drivers.h"

#line 1 "..\\Source\\main\\../drivers/./IIC/IIC.h"







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








#line 66 "..\\Source\\main\\../drivers/drivers.h"
#line 1 "..\\Source\\main\\../drivers/./moni_spi/moni_spi.h"







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








#line 67 "..\\Source\\main\\../drivers/drivers.h"

#line 1 "..\\Source\\main\\../drivers/./lsm6d/lsm6d.h"









#line 16 "..\\Source\\main\\../drivers/./lsm6d/lsm6d.h"

#line 23 "..\\Source\\main\\../drivers/./lsm6d/lsm6d.h"



extern int lsm6d_init(void);

extern int lsm6d_set_low_power_mode(void);

extern void lsm6d_read_xyz(unsigned int *p_acce_x,unsigned int *p_acce_y,unsigned int *p_acce_z,
				unsigned int *p_gyr_x,unsigned int *p_gyr_y,unsigned int *p_gyr_z);












#line 69 "..\\Source\\main\\../drivers/drivers.h"

#line 1 "..\\Source\\main\\../drivers/./stm32_rtc/stm32_rtc.h"









extern void stm32_rtc_set_alarm_wakeup(unsigned int wakeup_time);











#line 71 "..\\Source\\main\\../drivers/drivers.h"

#line 1 "..\\Source\\main\\../drivers/./hardwarecfg/hardwarecfg.h"




















































































































































































































































































































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









#line 73 "..\\Source\\main\\../drivers/drivers.h"







#line 23 "..\\Source\\main\\includes.h"
	
#line 1 "..\\Source\\main\\../apps/apps.h"








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

	
	
	
	
	
	


#line 2 "..\\Source\\main\\main.c"


const  char ver_info[]  __attribute__ ((at(((0x08000000 + (16 * 1024)) + 0x1000)))) = 
"<" "BYSD" ">" "<" "BYSD_DRIVER_GD32_V2.0.92" ">" "<" "Oct 25 2026" ">" "<" "21:39:34" ">"; 


int main(void)
{
	start_os();
	return 0;
}


