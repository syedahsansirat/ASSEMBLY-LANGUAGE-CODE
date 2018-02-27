.MODEL SMALL
.STACK 100H
.DATA 
    MSG1 DB 'SYED$'
    MSG2 DB 'AHSAN$'
    MSG3 DB 'SIRAT$' 
.CODE

MAIN PROC
    
   
   
   MOV AX,@DATA
   MOV DS,AX
   
   
   
   MOV AH,9
   LEA DX,MSG1
   INT 21H 
   
   
   MOV AH,2
   MOV DL,010
   INT 21H     ;NEW LINE
   MOV DL,013
   INT 21H
   
   MOV AH,9
   LEA DX,MSG2
   INT 21H
   
   MOV AH,2
   MOV DL,010
   INT 21H     ;NEW LINE
   MOV DL,013
   INT 21H
   
   
   MOV AH,9
   LEA DX,MSG3
   INT 21H   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN