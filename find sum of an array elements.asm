include 'emu8086.inc'
.model small
.stack 100h
.data

w dw 1,2,3,4,5,6,7,8,9,10

.code
main proc
    mov ax,@data
    mov ds,ax
    
    xor ax,ax
    lea si,w
    mov cx,10
    
    adds:
         add ax,[si]
         add si,2
         loop adds
         
    mov ah,2 
    add ax,48
    mov dx,ax
    int 21h
    
    main endp
end main