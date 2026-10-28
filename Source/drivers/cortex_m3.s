	AREA    |.text|, CODE, READONLY


_delay PROC
	EXPORT _delay
	;R0 t
	PUSH {R0,LR}
_delay_loop
	CMP R0,#0
	BEQ _delay_exit
	SUB R0,R0,#1
	B _delay_loop
_delay_exit
	POP {R0,PC}

	ENDP

cpu_ts_init PROC
	EXPORT cpu_ts_init

	PUSH {R0-R2}
	;*(unsigned int *0xE000EDFC) |= (1 << 24);
	LDR R0, =0xE000EDFC
	LDR R1,[R0]
	LDR R2,=(1 << 24)
	ORR R1,R2
	STR R1,[R0]

	;*(unsigned int *0xE0001004) = 0;
	LDR R0,=0xE0001004
	MOV R1,#0
	STR R1,[R0]

	;0xE0001000
	LDR R0, =0xE0001000
	LDR R1,[R0]
	ORR R1,R1,#1
	STR R1,[R0]

	POP {R0-R2}

	BX LR
	ENDP

cpu_clock PROC
	EXPORT cpu_clock

	LDR R0,=0xE0001004
	LDR R0,[R0]
	BX LR
	NOP
	ENDP

get_sp PROC
	EXPORT get_sp

	MOV R0,SP
	BX LR
	
	ENDP
set_sp PROC
	EXPORT set_sp

	MOV SP,R0
	BX LR

	ENDP
	

	END
