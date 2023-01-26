.model small
.stack 100h

.data
a db 'Loop concept $'

.code
main proc
    mov ax,@data
    mov ds,ax     
    
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    mov cx,26  ; for loop cx register is use.
    mov ah,2
    mov dl,'A' 
    
    level1:    ;level is for loop
    int 21h    ;execute cx register and print dl value
    inc dl     ;increament the value of dl register.
    loop level1
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h  
    
    mov ah,2
    mov dl,07
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    