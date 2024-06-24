DATA SEGMENT
ARR DB 2,5,1,4,9,3,8,6,7,0    
DATA ENDS 
 
CODE SEGMENT

ASSUME CS:CODE,DS:DATA

START:
  MOV AX,DATA
  MOV DS,AX
  
  XOR AX,AX
  LEA SI,ARR
  MOV BX,9
SORT:  
  MOV SI,DX
  MOV CX,BX  
  MOV DI,SI
  MOV AL,[DI]
  
MAX:
  INC SI
  CMP [SI],AL
  JNG NEXT
  MOV DI,SI
  MOV AL,[DI]
NEXT:
  LOOP MAX
  
  MOV  AL,[SI]
  XCHG AL,[DI]
  MOV  [SI],AL
  
  DEC  BX
  JNZ  SORT
  
PROGEND:
  MOV AH,4CH
  INT 21H
  
CODE ENDS
END START      






  
  
  