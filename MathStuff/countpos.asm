ORG 030H
	dat: db 01H,-03H,04H,02H

ORG 0H
MOV R2,#00     ; POSITIVE COUNT
MOV R3,#00      ; NEGATIVE COUNT
MOV R0,#30H    ; MEMORY POINTER
MOV R1,#05H    ; COUNTER
BACK:   MOV A,@R0
RLC A
JNC POS 
INC R3
SJMP NEXT 
POS:     INC R2
NEXT:   INC R0
	       DJNZ R1,BACK
              END
