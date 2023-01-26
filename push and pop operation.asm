.model small
.stack 100h
.data
.code
main proc
    mov ax,32h
    push ax
    
    pop ax
    
    mov dx,ax
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main