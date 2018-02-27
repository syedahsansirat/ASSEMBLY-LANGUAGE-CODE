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
    
    
    
    MOV AH,1  
    INT 21H
    MOV VSMALL,AL
    MOV VBIG,AL   
    
    L1:
    MOV AH,1  
    INT 21H
    CMP AL,13
    JE EXIT
     
    CMP VSMALL,AL
    JGE L2 
    JMP L3
    
    L2:
    MOV VSMALL,AL 
    
    L3:
    CMP VBIG,AL
    JLE L4 
    JMP L1
    
    L4:
    MOV VBIG,AL
    JMP L1
    
    
    
    
    
    MOV VSMALL,AL
    MOV VBIG,AL
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
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