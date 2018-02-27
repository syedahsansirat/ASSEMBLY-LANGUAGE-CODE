.MODEL SMALL
.STACK 100H
.CODE


MAIN PROC
    
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    INT 21H
    MOV CL,AL
    
    ADD CL,BL
    MOV AH,2
    SUB CL,48
    MOV DL,' '
    INT 21H
    MOV DL,CL
    INT 21H
    
    
    
    
    
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN