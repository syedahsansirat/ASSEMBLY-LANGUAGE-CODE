.MODEL SMALL
.STACK 100H
.DATA
 MSG1 DB 'ENTER A STRING $' 
 VSMALL DB ?
 VBIG DB ?
.CODE   
  


MAIN PROC 
    
    
    MOV AX,@DATA
    MOV DS,AX
    
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    
       
    
    L1:
    MOV AH,1  
    INT 21H
    CMP AL,13
    JE EXIT
     
    CMP AL,'A'
    JGE L2 
    JMP L1
    
    L2:
    CMP AL,'Z'
    JLE L3
    JMP L1 
    
    L3:
    MOV VSMALL,AL
    JMP L4
    
    
    L4:
    MOV AH,1  
    INT 21H
    CMP AL,13
    JE EXIT
     
    CMP AL,'A'
    JGE L5 
    JMP L4
    
    L5:
    CMP AL,'Z'
    JLE L6
    JMP L4 
    
    L6:
    MOV VBIG,AL
    JMP L4
    

    
    
    
EXIT:
     MOV AH,2 
     MOV DL,10
     INT 21H
     MOV DL,13
     INT 21H
     
     MOV DL,VSMALL
     INT 21H
     MOV DL,' '
     INT 21H
     MOV DL,VBIG
     INT 21H

    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN