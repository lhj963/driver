#include "usart.h"

#define MAX_USART_PACKET_CNT 4

typedef struct tagUsartRecv
{
	unsigned int read_idx;
	unsigned int write_idx;
	unsigned char timeout;

	unsigned char recving_flag;		//?車那??D㊣那??
	unsigned char recv_data_packet_cnt;
	unsigned char data_packet_ridx;
	unsigned char data_packet_widx;
	unsigned int data_packet_read_idx[MAX_USART_PACKET_CNT];
	unsigned int data_packet_write_idx[MAX_USART_PACKET_CNT];

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


unsigned char s_usart1_buf[USART1_BUF_LEN] = {0};
unsigned char s_usart2_buf[USART2_BUF_LEN] = {0};
unsigned char s_usart3_buf[USART3_BUF_LEN] = {0};
unsigned char s_usart4_buf[USART4_BUF_LEN] = {0};
unsigned char s_usart5_buf[USART5_BUF_LEN] = {0};
unsigned char s_usart6_buf[USART6_BUF_LEN] = {0};
unsigned char s_usart7_buf[USART7_BUF_LEN] = {0};
unsigned char s_usart8_buf[USART8_BUF_LEN] = {0};


USART_TypeDef *pUSARTx[] = {USART1,USART2,USART3,UART4,UART5,UART6,UART7,UART8};


usart_data_arrive_callback apfusartcb[MAX_USART_CNT] = {0};

_one_dat_arrive_func ast_one_dat_arrive_func[MAX_USART_CNT] = {0};



#if __USE_LFOS__
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



#else

void create_usart1_sem(void)
{

}

void create_usart2_sem(void)
{

}

void create_usart3_sem(void)
{

}


void create_usart4_sem(void)
{

}

void create_usart5_sem(void)
{

}


void create_usart6_sem(void)
{

}



void create_usart7_sem(void)
{

}

void create_usart8_sem(void)
{

}

void wait_usart1_rx_sem(unsigned int timeout)
{

}

void post_usart1_rx_sem(void)
{

}

void wait_usart1_tx_sem(unsigned int timeout)
{

}

void post_usart1_tx_sem(void)
{

}

void wait_usart2_rx_sem(unsigned int timeout)
{

}

void post_usart2_rx_sem(void)
{

}

void wait_usart2_tx_sem(unsigned int timeout)
{

}

void post_usart2_tx_sem(void)
{

}

void wait_usart3_rx_sem(unsigned int timeout)
{

}

void post_usart3_rx_sem(void)
{

}

void wait_usart3_tx_sem(unsigned int timeout)
{

}

void post_usart3_tx_sem(void)
{

}


void wait_usart4_rx_sem(unsigned int timeout)
{

}

void post_usart4_rx_sem(void)
{

}

void wait_usart4_tx_sem(unsigned int timeout)
{

}

void post_usart4_tx_sem(void)
{

}

void wait_usart5_rx_sem(unsigned int timeout)
{

}

void post_usart5_rx_sem(void)
{

}

void wait_usart5_tx_sem(unsigned int timeout)
{

}

void post_usart5_tx_sem(void)
{

}

void wait_usart6_rx_sem(unsigned int timeout)
{

}

void post_usart6_rx_sem(void)
{

}

void wait_usart6_tx_sem(unsigned int timeout)
{

}

void post_usart6_tx_sem(void)
{

}

#endif


/**
* @brief  This function handles USRAT interrupt request.
* @param  None
* @retval None
*/
void _usart_irq_handler(UsartRecv *pUsartRecv,
								void *usart_buf,unsigned int usart_buf_len,
								unsigned char ch)
{
	unsigned char *ptr = (unsigned char *)usart_buf;
	unsigned int write_idx = pUsartRecv->write_idx;
	unsigned int old_write_idx = pUsartRecv->write_idx;

	//D∩????o車辰?辰???
	write_idx++;
	if (write_idx >= usart_buf_len)
	{
		write_idx = 0;
	}

	//D∩????o車辰?辰???車??芍?????角米豕 ㊣赤那??o3???D∩?迆芍? 2??邦?迄D∩芍?
	if (write_idx != pUsartRecv->read_idx)
	{
		ptr[old_write_idx] = ch;
		pUsartRecv->write_idx = write_idx;

		pUsartRecv->timeout = 0;
		pUsartRecv->recving_flag = 1;
	}
}

//??1ms?∩DD辰?∩?
void _usart_rx_timing(UsartRecv *pUsartRecv,void (*pPostSemFunc)(void))
{
	if (pUsartRecv->recving_flag)
	{
		pUsartRecv->timeout++;
		if (pUsartRecv->timeout >= USART_TWO_BYTE_INTERVAL)
		{
			unsigned int widx = 0;
			unsigned int idx = 0;

			pUsartRecv->recving_flag = 0;	//???車那??D㊣那??
			//pUsartRecv->timeout = 0;

			//o車辰?辰???
			widx = pUsartRecv->data_packet_widx;
			widx++;
			if (widx >= MAX_USART_PACKET_CNT)
			{
				widx = 0;
			}

			/* 2??邦3?1y?o3?～邦米???那y */
			if (pUsartRecv->recv_data_packet_cnt < MAX_USART_PACKET_CNT)
			//if (pUsartRecv->data_packet_ridx != widx)
			{
				idx = pUsartRecv->data_packet_widx;

				/* ?芍?????赤那?谷?辰?∩?米?D∩???? */
				pUsartRecv->data_packet_read_idx[idx] = pUsartRecv->last_write_idx;
				/* D∩?????赤那?㊣?∩?米?D∩???? */
				pUsartRecv->data_packet_write_idx[idx] = pUsartRecv->write_idx;
				
				pUsartRecv->recv_data_packet_cnt++; //?車那?那y?Y～邦那y芍? ?車1
				pUsartRecv->data_packet_widx = widx;
				/* ?邦D?℅??邦辰?∩?米?D∩???? */
				pUsartRecv->last_write_idx = pUsartRecv->write_idx;
				
				//?℅D?o?芍?
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

	//if (pUsartRecv->data_packet_ridx != pUsartRecv->data_packet_widx)	//2谷?‘那?﹞?車D那y?Y～邦
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

		//????那y?Y～邦米?3∟?豕
		if (write_idx >= read_idx)
		{
			templen = write_idx - read_idx;
		}
		else
		{
			templen = write_idx + usart_buf_len - read_idx ;
		}

		if ((pOut == 0) || (outbuflen == 0))	//∩?豕?2?那y?a0 豕??a那?2谷?‘?車那?米?那y?Y??那y
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
			else		//﹞?芍????芍豕?
			{
				seg1_len = usart_buf_len - read_idx;
				seg2_len = rlen - seg1_len;
				if (seg1_len) memcpy(pOut,(unsigned char *)usart_buf + read_idx,seg1_len);
				if (seg2_len) memcpy((unsigned char *)pOut + seg1_len,usart_buf,seg2_len);
			}

			pUsartRecv->recv_data_packet_cnt--;
			pUsartRecv->data_packet_ridx = idx + 1;
			if (pUsartRecv->data_packet_ridx >= MAX_USART_PACKET_CNT)
			{
				pUsartRecv->data_packet_ridx = 0;
			}			
			pUsartRecv->read_idx = write_idx;		//?邦D??芍????
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
	rlen = _usart_read(&s_stUsart1Recv,s_usart1_buf,USART1_BUF_LEN,pOut,outbuflen);
	break;
	case 1:
	wait_usart2_rx_sem(timeout);
	rlen = _usart_read(&s_stUsart2Recv,s_usart2_buf,USART2_BUF_LEN,pOut,outbuflen);
	break;
	case 2:
	wait_usart3_rx_sem(timeout);
	rlen = _usart_read(&s_stUsart3Recv,s_usart3_buf,USART3_BUF_LEN,pOut,outbuflen);
	break;
	case 3:
	wait_usart4_rx_sem(timeout);
	rlen = _usart_read(&s_stUsart4Recv,s_usart4_buf,USART4_BUF_LEN,pOut,outbuflen);
	break;
	case 4:
	wait_usart5_rx_sem(timeout);
	rlen = _usart_read(&s_stUsart5Recv,s_usart5_buf,USART5_BUF_LEN,pOut,outbuflen);
	break;
	case 5:
		wait_usart6_rx_sem(timeout);
		rlen = _usart_read(&s_stUsart6Recv,s_usart6_buf,USART6_BUF_LEN,pOut,outbuflen);
	break;
	case 6:
		wait_usart7_rx_sem(timeout);
		rlen = _usart_read(&s_stUsart7Recv,s_usart7_buf,USART7_BUF_LEN,pOut,outbuflen);
	break;
	case 7:
		wait_usart8_rx_sem(timeout);
		rlen = _usart_read(&s_stUsart8Recv,s_usart8_buf,USART8_BUF_LEN,pOut,outbuflen);
	break;
	default:break;
	}

	return rlen;
}

void USART1_IRQHandler(void)
{
	if (USART_GetITStatus(USART1, USART_IT_RXNE) == SET)
	{
		unsigned char ch = 0;
		ch = USART_ReceiveData(USART1);

		_usart_irq_handler(&s_stUsart1Recv,s_usart1_buf,USART1_BUF_LEN,ch);
		//USART1->DR = ch;
        USART_ClearITPendingBit(USART1, USART_IT_RXNE);         /* Clear the USART1 receive interrupt.                */
	}
}

void USART2_IRQHandler(void)
{
	if (USART_GetITStatus(USART2, USART_IT_RXNE) == SET)
	{
		unsigned char ch = 0;
		ch = USART_ReceiveData(USART2);

		_usart_irq_handler(&s_stUsart2Recv,s_usart2_buf,USART2_BUF_LEN,ch);
		if (ast_one_dat_arrive_func[1])
		{
			ast_one_dat_arrive_func[1](ch);
		}

		//USART1->DR = ch;
        USART_ClearITPendingBit(USART2, USART_IT_RXNE);         /* Clear the USART2 receive interrupt.                */
	}

}

void USART3_IRQHandler(void)
{
	if (USART_GetITStatus(USART3, USART_IT_RXNE) == SET)
	{
	#if 1
		unsigned char ch = 0;
		ch = USART_ReceiveData(USART3);

		_usart_irq_handler(&s_stUsart3Recv,s_usart3_buf,USART3_BUF_LEN,ch);
		//USART1->DR = ch;
		USART_ClearITPendingBit(USART3, USART_IT_RXNE); 		/* Clear the USART3 receive interrupt.				  */
	#endif
	}
}




void UART4_IRQHandler(void)
{
	if (USART_GetITStatus(UART4, USART_IT_RXNE) == SET)
	{
		unsigned char ch = 0;
		ch = USART_ReceiveData(UART4);

		_usart_irq_handler(&s_stUsart4Recv,s_usart4_buf,USART4_BUF_LEN,ch);
		if (ast_one_dat_arrive_func[3])
		{
			ast_one_dat_arrive_func[3](ch);
		}
		//USART1->DR = ch;
        USART_ClearITPendingBit(UART4, USART_IT_RXNE);         /* Clear the USART4 receive interrupt.                */
	}
}

void UART5_IRQHandler(void)
{
	if (USART_GetITStatus(UART5, USART_IT_RXNE) == SET)
	{
		unsigned char ch = 0;
		ch = USART_ReceiveData(UART5);

		_usart_irq_handler(&s_stUsart5Recv,s_usart5_buf,USART5_BUF_LEN,ch);
		if (ast_one_dat_arrive_func[4])
		{
			ast_one_dat_arrive_func[4](ch);
		}
		//USART1->DR = ch;
		USART_ClearITPendingBit(UART5, USART_IT_RXNE);		   /* Clear the USART5 receive interrupt.				 */
	}
}

void UART6_IRQHandler(void)
{
	if (USART_GetITStatus(UART6, USART_IT_RXNE) == SET)
	{
		unsigned char ch = 0;
		ch = USART_ReceiveData(UART6);

		_usart_irq_handler(&s_stUsart6Recv,s_usart6_buf,USART6_BUF_LEN,ch);
		//USART1->DR = ch;
		USART_ClearITPendingBit(UART6, USART_IT_RXNE); 		/* Clear the USART receive interrupt.				  */
	}
}

void UART7_IRQHandler(void)
{
	if (USART_GetITStatus(UART7, USART_IT_RXNE) == SET)
	{
		unsigned char ch = 0;
		ch = USART_ReceiveData(UART7);

		_usart_irq_handler(&s_stUsart7Recv,s_usart7_buf,USART7_BUF_LEN,ch);
		if (ast_one_dat_arrive_func[6])
		{
			ast_one_dat_arrive_func[6](ch);
		}
		USART_ClearITPendingBit(UART7, USART_IT_RXNE);
	}
}

void UART8_IRQHandler(void)
{
	if (USART_GetITStatus(UART8, USART_IT_RXNE) == SET)
	{
		unsigned char ch = 0;
		ch = USART_ReceiveData(UART8);

		_usart_irq_handler(&s_stUsart8Recv,s_usart8_buf,USART8_BUF_LEN,ch);
		if (ast_one_dat_arrive_func[7])
		{
			ast_one_dat_arrive_func[7](ch);
		}
		//USART1->DR = ch;
		USART_ClearITPendingBit(UART8, USART_IT_RXNE); 		/* Clear the USART receive interrupt.				  */
	}
}


void USART1_NVIC_Configuration(void)
{
   NVIC_InitTypeDef NVIC_InitStructure;

  /* Enable the USART1 Interrupt */
  NVIC_InitStructure.NVIC_IRQChannel = USART1_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = USART1_NVIC_PREE_PRIO;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = USART1_NVIC_SUB_PRIO;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
}

void USART2_NVIC_Configuration(void)
{
   NVIC_InitTypeDef NVIC_InitStructure;

  /* Enable the USART1 Interrupt */
  NVIC_InitStructure.NVIC_IRQChannel = USART2_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = USART2_NVIC_PREE_PRIO;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = USART2_NVIC_SUB_PRIO;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
}

void USART3_NVIC_Configuration(void)
{
   NVIC_InitTypeDef NVIC_InitStructure;

  /* Enable the USART1 Interrupt */
  NVIC_InitStructure.NVIC_IRQChannel = USART3_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = USART3_NVIC_PREE_PRIO;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = USART3_NVIC_SUB_PRIO;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
}

void USART4_NVIC_Configuration(void)
{
   NVIC_InitTypeDef NVIC_InitStructure;

  /* Enable the USART1 Interrupt */
  NVIC_InitStructure.NVIC_IRQChannel = UART4_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = USART4_NVIC_PREE_PRIO;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = USART4_NVIC_SUB_PRIO;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
}

void USART5_NVIC_Configuration(void)
{
   NVIC_InitTypeDef NVIC_InitStructure;

  /* Enable the USART1 Interrupt */
  NVIC_InitStructure.NVIC_IRQChannel = UART5_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = USART5_NVIC_PREE_PRIO;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = USART5_NVIC_SUB_PRIO;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
}

void USART6_NVIC_Configuration(void)
{
   NVIC_InitTypeDef NVIC_InitStructure;

  /* Enable the UART6 Interrupt */
  NVIC_InitStructure.NVIC_IRQChannel = UART6_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = USART6_NVIC_PREE_PRIO;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = USART6_NVIC_SUB_PRIO;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
}

void USART7_NVIC_Configuration(void)
{
   NVIC_InitTypeDef NVIC_InitStructure;

  /* Enable the UART7 Interrupt */
  NVIC_InitStructure.NVIC_IRQChannel = UART7_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = USART7_NVIC_PREE_PRIO;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = USART7_NVIC_SUB_PRIO;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
}

void USART8_NVIC_Configuration(void)
{
   NVIC_InitTypeDef NVIC_InitStructure;

  /* Enable the UART8 Interrupt */
  NVIC_InitStructure.NVIC_IRQChannel = UART8_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = USART8_NVIC_PREE_PRIO;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = USART8_NVIC_SUB_PRIO;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
}



void USART1_Init(unsigned long bps,char iParity)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	USART_InitTypeDef USART_InitStructure;

	/* Enable GPIO clock */
#if REMAP_USART1
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB | RCC_APB2Periph_AFIO, ENABLE);
#else
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_AFIO, ENABLE);
#endif
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_USART1, ENABLE); 

#if REMAP_USART1
	GPIO_PinRemapConfig(GPIO_Remap_USART1,ENABLE);

	/* Configure USART Tx as alternate function push-pull */
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_6;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOB, &GPIO_InitStructure);

	/* Configure USART Rx as input floating */
	//GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
	//GPIO_Mode_IPU
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;

	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_7;
	GPIO_Init(GPIOB, &GPIO_InitStructure);
#else
	/* Configure USART Tx as alternate function push-pull */
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_9;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOA, &GPIO_InitStructure);

	/* Configure USART Rx as input floating */
	//GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
	//GPIO_Mode_IPU
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10;
	GPIO_Init(GPIOA, &GPIO_InitStructure);
#endif
	USART_InitStructure.USART_BaudRate = bps;
	if (iParity == 0)
	{
		USART_InitStructure.USART_WordLength = USART_WordLength_8b;
		USART_InitStructure.USART_Parity = USART_Parity_No;
	}
	else
	{
		USART_InitStructure.USART_WordLength = USART_WordLength_9b;
		if (iParity == 1)
		{
			USART_InitStructure.USART_Parity = USART_Parity_Odd;
		}
		else
		{
			USART_InitStructure.USART_Parity = USART_Parity_Even;
		}
	}
	USART_InitStructure.USART_StopBits = USART_StopBits_1;
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;

	USART_DeInit(USART1);
	/* USART configuration */
	USART_Init(USART1, &USART_InitStructure);

	USART1_NVIC_Configuration();
	/* Enable the USARTz Receive Interrupt */
	USART_ITConfig(USART1, USART_IT_RXNE, ENABLE);
	USART_ClearFlag(USART1,USART_FLAG_TC);		   //??3y﹞⊿?赤赤那3谷㊣那????

	/* Enable USART */
	USART_Cmd(USART1, ENABLE);
}


void USART2_Init(unsigned long bps,char iParity)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	USART_InitTypeDef USART_InitStructure;

	/* Enable GPIO clock */
#if REMAP_USART2
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOD | RCC_APB2Periph_AFIO, ENABLE);
#else
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_AFIO, ENABLE);
#endif
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART2, ENABLE); 

#if REMAP_USART2
	GPIO_PinRemapConfig(GPIO_Remap_USART2,ENABLE);

	/* Configure USART Tx as alternate function push-pull */
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_5;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOD, &GPIO_InitStructure);

	/* Configure USART Rx as input GPIO_Mode_IPU */
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_6;
	GPIO_Init(GPIOD, &GPIO_InitStructure);
#else
	/* Configure USART Tx as alternate function push-pull */
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_2;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOA, &GPIO_InitStructure);

	/* Configure USART Rx as input floating */
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_3;
	GPIO_Init(GPIOA, &GPIO_InitStructure);
#endif
	USART_InitStructure.USART_BaudRate = bps;
	if (iParity == 0)
	{
		USART_InitStructure.USART_WordLength = USART_WordLength_8b;
		USART_InitStructure.USART_Parity = USART_Parity_No;
	}
	else
	{
		USART_InitStructure.USART_WordLength = USART_WordLength_9b;
		if (iParity == 1)
		{
			USART_InitStructure.USART_Parity = USART_Parity_Odd;
		}
		else
		{
			USART_InitStructure.USART_Parity = USART_Parity_Even;
		}
	}
	USART_InitStructure.USART_StopBits = USART_StopBits_1;
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;

	USART_DeInit(USART2);
	/* USART configuration */
	USART_Init(USART2, &USART_InitStructure);

	USART2_NVIC_Configuration();

	/* Enable the USARTz Receive Interrupt */
	USART_ITConfig(USART2, USART_IT_RXNE, ENABLE);
	USART_ClearFlag(USART2,USART_FLAG_TC);		   //??3y﹞⊿?赤赤那3谷㊣那????

	/* Enable USART */
	USART_Cmd(USART2, ENABLE);
}



void USART3_Init(unsigned long bps,char iParity)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	USART_InitTypeDef USART_InitStructure;

	/* Enable GPIO clock */
#if REMAP_FULL_USART3
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOD | RCC_APB2Periph_AFIO, ENABLE);
#else
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB | RCC_APB2Periph_AFIO, ENABLE);
#endif
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART3, ENABLE); 

#if REMAP_FULL_USART3
	GPIO_PinRemapConfig(GPIO_FullRemap_USART3,ENABLE);

	/* Configure USART Tx as alternate function push-pull */
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_8;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOD, &GPIO_InitStructure);

	/* Configure USART Rx as input GPIO_Mode_IPU */
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_9;
	GPIO_Init(GPIOD, &GPIO_InitStructure);

#else
	/* Configure USART Tx as alternate function push-pull */
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOB, &GPIO_InitStructure);

	/* Configure USART Rx as input floating */
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_11;
	GPIO_Init(GPIOB, &GPIO_InitStructure);
#endif
	USART_InitStructure.USART_BaudRate = bps;
	if (iParity == 0)
	{
		USART_InitStructure.USART_WordLength = USART_WordLength_8b;
		USART_InitStructure.USART_Parity = USART_Parity_No;
	}
	else
	{
		USART_InitStructure.USART_WordLength = USART_WordLength_9b;
		if (iParity == 1)
		{
			USART_InitStructure.USART_Parity = USART_Parity_Odd;
		}
		else
		{
			USART_InitStructure.USART_Parity = USART_Parity_Even;
		}
	}
	USART_InitStructure.USART_StopBits = USART_StopBits_1;
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;

	USART_DeInit(USART3);
	/* USART configuration */
	USART_Init(USART3, &USART_InitStructure);

	USART3_NVIC_Configuration();

	/* Enable the USARTz Receive Interrupt */
	USART_ITConfig(USART3, USART_IT_RXNE, ENABLE);
	USART_ClearFlag(USART3,USART_FLAG_TC);		   //??3y﹞⊿?赤赤那3谷㊣那????

	/* Enable USART */
	USART_Cmd(USART3, ENABLE);
}


#define AFIO_PCFR6	(AFIO_BASE + 0x48)

void USART4_Init(unsigned long bps,char iParity)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	USART_InitTypeDef USART_InitStructure;
	unsigned int temp = 0;

	temp = temp;
	/* Enable GPIO clock */
#if REMAP_USART4
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_AFIO, ENABLE);
#else
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOC | RCC_APB2Periph_AFIO, ENABLE);
#endif

	RCC_APB1PeriphClockCmd(RCC_APB1Periph_UART4, ENABLE); 
#if REMAP_USART4
	temp = *((unsigned int *)(AFIO_PCFR6));
	temp |= 1 << 13;
	*((unsigned int *)(AFIO_PCFR6)) = temp;

	/* Configure USART Tx as alternate function push-pull */
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOA, &GPIO_InitStructure);

	/* Configure USART Rx as input floating */
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_1;
	GPIO_Init(GPIOA, &GPIO_InitStructure);
	//GPIO_PinRemapConfig(GPIO_Remap_UART4,ENABLE);

#else
	/* Configure USART Tx as alternate function push-pull */
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOC, &GPIO_InitStructure);

	/* Configure USART Rx as input floating */
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_11;
	GPIO_Init(GPIOC, &GPIO_InitStructure);
#endif
	USART_InitStructure.USART_BaudRate = bps;
	if (iParity == 0)
	{
		USART_InitStructure.USART_WordLength = USART_WordLength_8b;
		USART_InitStructure.USART_Parity = USART_Parity_No;
	}
	else
	{
		USART_InitStructure.USART_WordLength = USART_WordLength_9b;
		if (iParity == 1)
		{
			USART_InitStructure.USART_Parity = USART_Parity_Odd;
		}
		else
		{
			USART_InitStructure.USART_Parity = USART_Parity_Even;
		}
	}
	USART_InitStructure.USART_StopBits = USART_StopBits_1;
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;

	USART_DeInit(UART4);
	/* USART configuration */
	USART_Init(UART4, &USART_InitStructure);

	USART4_NVIC_Configuration();

	/* Enable the USARTz Receive Interrupt */
	USART_ITConfig(UART4, USART_IT_RXNE, ENABLE);
	USART_ClearFlag(UART4,USART_FLAG_TC);		   //??3y﹞⊿?赤赤那3谷㊣那????

	/* Enable USART */
	USART_Cmd(UART4, ENABLE);

}


void USART5_Init(unsigned long bps,char iParity)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	USART_InitTypeDef USART_InitStructure;

	/* Enable GPIO clock */
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOC | RCC_APB2Periph_GPIOD | RCC_APB2Periph_AFIO, ENABLE);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_UART5, ENABLE); 

	/* Configure USART Tx as alternate function push-pull */
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_12;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOC, &GPIO_InitStructure);

	/* Configure USART Rx as input floating */
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_2;
	GPIO_Init(GPIOD, &GPIO_InitStructure);

	USART_InitStructure.USART_BaudRate = bps;
	if (iParity == 0)
	{
		USART_InitStructure.USART_WordLength = USART_WordLength_8b;
		USART_InitStructure.USART_Parity = USART_Parity_No;
	}
	else
	{
		USART_InitStructure.USART_WordLength = USART_WordLength_9b;
		if (iParity == 1)
		{
			USART_InitStructure.USART_Parity = USART_Parity_Odd;
		}
		else
		{
			USART_InitStructure.USART_Parity = USART_Parity_Even;
		}
	}
	USART_InitStructure.USART_StopBits = USART_StopBits_1;
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;

	USART_DeInit(UART5);
	/* USART configuration */
	USART_Init(UART5, &USART_InitStructure);

	USART5_NVIC_Configuration();

	/* Enable the USARTz Receive Interrupt */
	USART_ITConfig(UART5, USART_IT_RXNE, ENABLE);
	USART_ClearFlag(UART5,USART_FLAG_TC);		   //??3y﹞⊿?赤赤那3谷㊣那????

	/* Enable USART */
	USART_Cmd(UART5, ENABLE);
}



void USART6_Init(unsigned long bps,char iParity)
{
	unsigned int temp = 0;
	GPIO_InitTypeDef GPIO_InitStructure;
	USART_InitTypeDef USART_InitStructure;

	/* Enable GPIO clock */
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOC | RCC_APB2Periph_AFIO, ENABLE);
	//RCC_APB2PeriphClockCmd(RCC_APB2Periph_UART6, ENABLE); 

	//那1?邦UART6赤a谷豕那㊣?車
	temp = *(unsigned int *)(0x40021000 + 0x64);
	temp |= (1 << 24);
	*(unsigned int *)(0x40021000 + 0x64) = temp;

	/* Configure USART Tx as alternate function push-pull */
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_6;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOC, &GPIO_InitStructure);

	/* Configure USART Rx as input floating */
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_7;
	GPIO_Init(GPIOC, &GPIO_InitStructure);

	USART_InitStructure.USART_BaudRate = bps;
	if (iParity == 0)
	{
		USART_InitStructure.USART_WordLength = USART_WordLength_8b;
		USART_InitStructure.USART_Parity = USART_Parity_No;
	}
	else
	{
		USART_InitStructure.USART_WordLength = USART_WordLength_9b;
		if (iParity == 1)
		{
			USART_InitStructure.USART_Parity = USART_Parity_Odd;
		}
		else
		{
			USART_InitStructure.USART_Parity = USART_Parity_Even;
		}
	}
	USART_InitStructure.USART_StopBits = USART_StopBits_1;
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;

	USART_DeInit(UART6);
	/* USART configuration */
	USART_Init(UART6, &USART_InitStructure);

	USART6_NVIC_Configuration();

	/* Enable the USARTz Receive Interrupt */
	USART_ITConfig(UART6, USART_IT_RXNE, ENABLE);
	USART_ClearFlag(UART6,USART_FLAG_TC);		   //??3y﹞⊿?赤赤那3谷㊣那????

	/* Enable USART */
	USART_Cmd(UART6, ENABLE);
}





void USART7_Init(unsigned long bps,char iParity)
{
	unsigned int temp = 0;
	GPIO_InitTypeDef GPIO_InitStructure;
	USART_InitTypeDef USART_InitStructure;

	/* Enable GPIO clock */
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOC | RCC_APB2Periph_AFIO, ENABLE);

	//那1?邦UART7赤a谷豕那㊣?車
	temp = *(unsigned int *)(0x40021000 + 0x68);
	temp |= 0x40000000;
	*(unsigned int *)(0x40021000 + 0x68) = temp;

	/* Configure USART Tx as alternate function push-pull */
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_6;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOC, &GPIO_InitStructure);

	/* Configure USART Rx as input floating */
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_7;
	GPIO_Init(GPIOC, &GPIO_InitStructure);

	USART_InitStructure.USART_BaudRate = bps;
	if (iParity == 0)
	{
		USART_InitStructure.USART_WordLength = USART_WordLength_8b;
		USART_InitStructure.USART_Parity = USART_Parity_No;
	}
	else
	{
		USART_InitStructure.USART_WordLength = USART_WordLength_9b;
		if (iParity == 1)
		{
			USART_InitStructure.USART_Parity = USART_Parity_Odd;
		}
		else
		{
			USART_InitStructure.USART_Parity = USART_Parity_Even;
		}
	}
	USART_InitStructure.USART_StopBits = USART_StopBits_1;
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;

	USART_DeInit(UART7);
	/* USART configuration */
	USART_Init(UART7, &USART_InitStructure);

	USART7_NVIC_Configuration();

	/* Enable the USARTz Receive Interrupt */
	USART_ITConfig(UART7, USART_IT_RXNE, ENABLE);
	USART_ClearFlag(UART7,USART_FLAG_TC);		   //??3y﹞⊿?赤赤那3谷㊣那????

	/* Enable USART */
	USART_Cmd(UART7, ENABLE);
}



void USART8_Init(unsigned long bps,char iParity)
{
	unsigned int temp = 0;
	GPIO_InitTypeDef GPIO_InitStructure;
	USART_InitTypeDef USART_InitStructure;

	/* Enable GPIO clock */
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOE | RCC_APB2Periph_AFIO, ENABLE);

	//那1?邦UART8赤a谷豕那㊣?車
	temp = *(unsigned int *)(0x40021000 + 0x68);
	temp |= 0x80000000;
	*(unsigned int *)(0x40021000 + 0x68) = temp;

	/* Configure USART Tx as alternate function push-pull */
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_1;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOE, &GPIO_InitStructure);

	/* Configure USART Rx as input floating */
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0;
	GPIO_Init(GPIOE, &GPIO_InitStructure);

	USART_InitStructure.USART_BaudRate = bps;
	if (iParity == 0)
	{
		USART_InitStructure.USART_WordLength = USART_WordLength_8b;
		USART_InitStructure.USART_Parity = USART_Parity_No;
	}
	else
	{
		USART_InitStructure.USART_WordLength = USART_WordLength_9b;
		if (iParity == 1)
		{
			USART_InitStructure.USART_Parity = USART_Parity_Odd;
		}
		else
		{
			USART_InitStructure.USART_Parity = USART_Parity_Even;
		}
	}
	USART_InitStructure.USART_StopBits = USART_StopBits_1;
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;

	USART_DeInit(UART8);
	/* USART configuration */
	USART_Init(UART8, &USART_InitStructure);

	USART8_NVIC_Configuration();

	/* Enable the USARTz Receive Interrupt */
	USART_ITConfig(UART8, USART_IT_RXNE, ENABLE);
	USART_ClearFlag(UART8,USART_FLAG_TC);		   //??3y﹞⊿?赤赤那3谷㊣那????

	/* Enable USART */
	USART_Cmd(UART8, ENABLE);
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

	if (channel >= MAX_USART_CNT)
	{
		return 0;
	}
	usartx = pUSARTx[channel];

	while (!(usartx->SR & USART_SR_TXE));
	usartx->DR = ch;

	return ch;
}

unsigned int _usart_send_data(unsigned char channel,void *buf,unsigned int len)
{
	unsigned int i = 0;
	USART_TypeDef *usartx = 0;

	if ((buf == 0) || (len == 0) || (channel >= MAX_USART_CNT))
	{
		return 0;
	}

	usartx = pUSARTx[channel];

	for (i = 0; i < len; i++)
	{
		while (!(usartx->SR & USART_SR_TXE));
		usartx->DR = *((unsigned char *)buf + i);
	}

	return len;
}


unsigned int usart_send_data(unsigned char channel,void *buf,unsigned int len)
{
	unsigned int i = 0;
	USART_TypeDef *usartx = 0;

	if ((buf == 0) || (len == 0) || (channel >= MAX_USART_CNT))
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
		while (!(usartx->SR & USART_SR_TXE));
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
	if (channel >= MAX_USART_CNT)
	{
		return 0;
	}

	return apfusartcb[channel];
}

void set_usart_data_arrive_callback(unsigned char channel,usart_data_arrive_callback pf)
{
	if (channel >= MAX_USART_CNT)
	{
		return ;
	}

	apfusartcb[channel] = pf;
}

int install_usart_recv_hook(unsigned char channel,void (*pf)(unsigned char ch))
{
	if (channel >= MAX_USART_CNT)
	{
		return 1;
	}

	ast_one_dat_arrive_func[channel] = pf;
	return 0;
}


















