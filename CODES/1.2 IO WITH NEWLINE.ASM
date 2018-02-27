.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    
    
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    MOV AH,2
    MOV DL,10  ;NEWLINE
    INT 21H
    MOV DL,0DH ;IN 0DH H FOR HEXA CARREGE RETURN
    INT 21H
    
    
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    
    
    
    
    
    
    
    
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN