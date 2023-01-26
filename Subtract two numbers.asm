.model small
.stack 100h

.data
a db 'input first digit : $'
b db 'input second digit :  $'
c db 'Result :  $'

.code
main proc
    mov ax,@data
    mov ds,ax   
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,c
    int 21h
    
    sub bl,bh  ; bl=bl-bh
    add bl,48  ; here ascii of 0 is 48.so we need to add 48 to get real value.
    
    
    mov ah,2
    mov dl,bl
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main