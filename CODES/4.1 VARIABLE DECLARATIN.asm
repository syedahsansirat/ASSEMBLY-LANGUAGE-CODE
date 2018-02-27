.MODEL SMALL
.STACK 100H 
.DATA
    VAR1 DB 5
    VAR2 DB 3
    MSG1 DB 'Adding 2 + 3 = $'

.CODE


MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG1
    MOV AH,9       ;PRINTING MSG
    INT  21H 
    
    
    MOV BL,VAR1
    MOV CL,VAR2  ;LOADING VAR IN REG 
    
    ADD BL,CL ;ADDING 2 NUM  
    ADD BL,48 ;ADDING FOR GET CHAR
    MOV AH,2
    MOV DL,BL  ;PRINT
    INT 21H
    
    
    
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN