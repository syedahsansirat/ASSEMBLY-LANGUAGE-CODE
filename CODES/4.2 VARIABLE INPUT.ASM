.MODEL SMALL
.STACK 100H
.DATA
    VAR1 DB ?
    VAR2 DB ?
.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    
    
    MOV AH,1
    INT 21H
    MOV VAR1,AL
    INT 21H
    MOV VAR2,AL
    
    MOV AH,2
    MOV DL,010
    INT 21H
    MOV DL,013
    INT 21H
    
    MOV DL,VAR1
    INT 21H
    MOV DL,VAR2
    INT 21H
    
    
    
    
    
    
    
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN