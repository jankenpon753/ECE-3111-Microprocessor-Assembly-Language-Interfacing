DATA SEGMENT
ARR DW 0,1,2,3,4,5,6,7,8,9    
DATA ENDS 
 
CODE SEGMENT

ASSUME CS:CODE,DS:DATA

START:
  MOV AX,DATA
  MOV DS,AX
  
  XOR AX,AX
  LEA SI,ARR
  MOV BX,10
  
  MOV DI,SI
  MOV CX,BX  
  DEC BX
  SHL BX,1     
  ADD DI,BX  
  SHR CX,1
  
REVERSE:
  MOV   AX,[SI]
  XCHG  AX,[DI]
  XCHG  [SI],AX
  ADD   SI,2
  SUB   DI,2
  LOOP  REVERSE
  
  
PROGEND:
  MOV AH,4CH
  INT 21H
  
CODE ENDS
END START      






  
  
  