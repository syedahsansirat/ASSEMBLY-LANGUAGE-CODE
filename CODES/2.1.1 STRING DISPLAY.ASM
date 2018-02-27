.MODEL SMALL
.STACK 100H 
.DATA            ;ADDING DATA

MSG1 DB 'HELLO $'
MSG2 DB 'WORLD$'


.CODE

MAIN PROC
    
     MOV AX,@DATA  ;INITIALIZATION DATA SEGMENT
     MOV DS,AX
    
    
    
     LEA DX,MSG1 ;LOAD EFFECTIVE ADDRESS
     MOV AH,9
     INT 21H  
     
     MOV AH,2
     MOV DL,010
     INT 21H
     MOV DL,013
     INT 21H
     
     
     LEA DX,MSG2
     MOV AH,9
     INT 21H
     
     
    
    
    
    
    
    
    
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN