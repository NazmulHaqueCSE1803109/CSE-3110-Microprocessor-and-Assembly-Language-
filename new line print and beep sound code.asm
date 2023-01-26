.model small
.stack 100h

.data
 msg1 db 'Enter first number : $'
 msg2 db 'Enter second number : $'
 msg db 'Output : $'

.code

main proc    
    
    mov ax,@data
    mov ds,ax  
    
    mov ah,9 
    lea dx,msg1
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,10  ; decimal of new line
    int 21h    ;interupt
    mov dl,13  ; decimal of carige return 
    int 21h  
    
    mov ah,9 
    lea dx,msg2
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al 
    
    mov ah,2
    mov dl,10 ; decimal 10 means new line
    int 21h
    mov dl,13 ; decimal 13 means carrige return 
    int 21h
              
    mov ah,9 
    lea dx,msg
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9    ; this function is for printing a string 
    lea dx,msg  ; here msg store in dx register because string size is large.
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    mov ah,2
    mov dl,07  ; 07 decimal use for beep
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    
    