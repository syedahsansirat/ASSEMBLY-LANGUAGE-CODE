.MODEL SMALL
.STACK 100H
.DATA
HERNAME DB 'SAMIYA$'
.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    
    
    MOV AH,9
    LEA DX,HERNAME
    INT 21H
    
    
    
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN