include 'emu8086.inc'
.model small
.stack 100h
.data 

five dw 5
scores dw 67,45,98,33 
       dw 70,56,87,44
       dw 82,72,89,40 
       dw 80,67,95,50
       dw 78,76,92,60

avg dw 5 dup (0)

.code
main proc 
    mov ax,@data
    mov ds,ax
    
    mov si,6
    
    repeat:
           mov cx,5
           xor bx,bx
           xor ax,ax
           
    for:
        add ax,scores[bx+si]
        add bx,8
        loop for
        
        xor dx,dx
        div five
        mov avg[si],ax
        sub si,2
        jnl repeat 
        
    lea si,avg
    mov cx,5
    
    mov ah,2
    show:    
         
         mov dx,avg[si]
         int 21h
         add si,2
         loop show
                                                                    
    mov ah,4ch
    int 21h
    main endp 
end main