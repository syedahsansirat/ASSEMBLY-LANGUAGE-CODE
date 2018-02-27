.model small
.stack 100h
.code

MAIN PROC
    
    MOV AH,1
    INT 21H ;INPUT
    MOV BL,AL  
    
    
    mov ah,2
    mov dl,bl   ;OUTPUT
    int 21h      
    
    
    exit:   
    
    mov ah,4ch
    int 21h
    main endp
end main
    