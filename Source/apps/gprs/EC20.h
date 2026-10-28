#ifndef __EC20_H__
#define __EC20_H__

#ifdef __cplusplus
extern "C" {
#endif

extern void EC20_QueryVer(void);

extern void EC20_QuerySim(void);

extern void EC20_QueryReg(void);

extern void EC20_QueryInfo(void);

extern void EC20_GetIP(INT8U ucLinkIdx,void *szApn,void *szApnUsername,void *szApnPassword);

extern void EC20_QueryIP(INT8U ucLinkIdx);

extern void EC20_Connect(INT8U ucLinkIdx,void *szIP,unsigned short usPort,INT8U ucIsTcp);

extern void EC20_CloseSocket(INT8U idx);

extern void EC20_QueryStatus(void);

extern void EC20_SendData(INT8U idx,void *pdat,INT16U len);

extern void EC20_QueryFtpFileSize(void);
	
extern void EC20_AnalyzeModemResponse(void *buf,unsigned int len);


#ifdef __cplusplus
}
#endif
#endif
