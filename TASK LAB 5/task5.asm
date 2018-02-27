.MODEL SMALL
.STACK 100H
.DATA
    MSG1 DB 'ENTER A NUMBER :$'
    VAR1 DB ? 
    MSG2 DB 'ILLEGAL CHARACTER$'

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
    
    
     CMP VAR1,'1'
     JE L1
     CMP VAR1,'0'
     JE L0 
     
     CMP VAR1,'2'
     JE L2
     
     CMP VAR1,'3'
     JE L3
     
     CMP VAR1,'4'
     JE L4
     
     CMP VAR1,'5'
     JE L5
     
     CMP VAR1,'6'
     JE L6
     
     CMP VAR1,'7'
     JE L7
     
     CMP VAR1,'8'
     JE L8
     CMP VAR1,'9'
     JE L9
     CMP VAR1,'A'
     JE L10
     CMP VAR1,'B'
     JE L11
     CMP VAR1,'C'
     JE L12
     CMP VAR1,'D'
     JE L13 
     
     CMP VAR1,'E'
     JE L14
     
     CMP VAR1,'F'
     JE L15
     
     JMP L16
     
     
     
     
     L0:
     MOV AH,2
     MOV DL,'0'
     INT 21H    
     
     JMP EXIT
     
     CMP VAR1,'1'
     JE L1
        
        
     L1:
     
     MOV AH,2
     MOV DL,'1'
     INT 21H    
     
     JMP EXIT
     
     
     L2:
     
     MOV AH,2
     MOV DL,'2'
     INT 21H    
     
     JMP EXIT 
     
     
     L3:
     
     MOV AH,2
     MOV DL,'3'
     INT 21H    
     
     JMP EXIT 
     
     
      L4:
     
     MOV AH,2
     MOV DL,'4'
     INT 21H    
     
     JMP EXIT 
     
     
     
      L5:
     
     MOV AH,2
     MOV DL,'5'
     INT 21H    
     
     JMP EXIT 
     
     
     
      L6:
     
     MOV AH,2
     MOV DL,'6'
     INT 21H    
     
     JMP EXIT 
     
     
     
     
      L7:
     
     MOV AH,2
     MOV DL,'7'
     INT 21H    
     
     JMP EXIT 
     
     
     
      L8:
     
     MOV AH,2
     MOV DL,'8'
     INT 21H    
     
     JMP EXIT  
     
     
      L9:
     
     MOV AH,2
     MOV DL,'9'
     INT 21H    
     
     JMP EXIT
     
     
     
      L10:
     
     MOV AH,2
     MOV DL,'1'
     INT 21H
     MOV DL,'0'
     INT 21H    
     
     JMP EXIT
     
     
     
     L11:
     
     MOV AH,2
     MOV DL,'1'
     INT 21H
     MOV DL,'1'
     INT 21H    
     
     JMP EXIT    
     
     
     L12:
     
     MOV AH,2
     MOV DL,'1'
     INT 21H
     MOV DL,'2'
     INT 21H    
     
     JMP EXIT 
     
     L13:
     
     MOV AH,2
     MOV DL,'1'
     INT 21H
     MOV DL,'3'
     INT 21H    
     
     JMP EXIT 
     
     
     L14:
     
     MOV AH,2
     MOV DL,'1'
     INT 21H
     MOV DL,'4'
     INT 21H    
     
     JMP EXIT 
     
     
     L15:
     
     MOV AH,2
     MOV DL,'1'
     INT 21H
     MOV DL,'5'
     INT 21H    
     JMP EXIT
     
     L16:   
     
     MOV AH,9
     LEA DX,MSG2
     INT 21H
 
 
        
        
        
        
        
        
        
EXIT:        
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN