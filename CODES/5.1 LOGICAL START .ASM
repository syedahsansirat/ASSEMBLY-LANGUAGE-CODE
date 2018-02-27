.MODEL SMALL
.STACK 100H
.DATA
    MSG1 DB 'ENTER A NUMBER TO COMPARE WITH 5$'
    VAR1 DB ?

.CODE

MAIN PROC
        
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,MSG1
    INT 21H  
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV VAR1,AL
    
      
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H   
    
    
     CMP VAR1,'5'
     JGE L2
     
     L1:
     
     
     MOV AH,2
     MOV DL,'L'
     INT 21H    
     
     JMP EXIT
     
     
     L2:
    
       MOV AH,2
    MOV DL,'G'
    INT 21H
     
 
        
        
        
        
        
        
        
EXIT:        
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN