.MODEL SMALL
.STACK 100H
.CODE    
MAIN PROC
    
        
    MOV AH,1   ;INPUT READY 
    
    INT 21H
    MOV BL,AL       ;INPUT 1
    
    INT 21H
    MOV CL,AL          ;INPUT 2
    
    INT 21H            ;INPUT 3
    MOV BH,AL
    
    INT 21H             ;INPUT 3
    MOV CH,AL
          
          
    MOV AH,2          ;OUTPUT READY 
    
    MOV DL,010        ;NEW LINE
    INT 21H
    MOV DL,013
    INT 21H           ;CARREGE RETURN
    
    MOV DL,BL
    INT 21H          ;OUTPUT 1
    MOV DL,CL
    INT 21H          ;OUTPUT 2
    MOV DL,BH
    INT 21H          ;OUTPUT 3
    MOV DL,CH
    INT 21H          ;OUTPUT 4
    
    
    
    
    
    
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN