.MODEL SMALL
.STACK 100H
.DATA
V1 DB ?
.CODE  


;IF A, THEN 10, 11 FOR B, 12 FOR C

MAIN PROC
    
    
    MOV AX,@DATA
    MOV DS,AX
    
    
    MOV AH,1
    INT 21H
    MOV V1,AL
    
    MOV AH,2  
    MOV DL,'='
    INT 21H 
    MOV DL,' '
    INT 21H
    
    
    MOV DL,'1'
    INT 21H
    
    SUB V1,17
    
    MOV DL,V1
    INT 21H
    
    
    
    
    
    
    
    
    
    
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN