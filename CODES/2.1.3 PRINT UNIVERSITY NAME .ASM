.MODEL SMALL
.STACK 100H
.DATA
    NAME1 DB 'neub$'
    
.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    
    MOV AH,9
    LEA DX, NAME1
    INT 21H
    
    
    
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN