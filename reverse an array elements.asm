include 'emu8086.inc'
.model small
.stack 100h
.data

w dw 1,2,3,4,5,6,7,8,9,10

.code
main proc
    mov ax,@data
    mov ds,ax
                
    call reverse            
   
    
         
    mov ah,4ch
    int 21h
    
    main endp  


    reverse proc
        lea si,w
    mov bx,10  
    mov cx,bx
    mov di,si
    dec bx
    shl bx,1
    add di,bx
    shr cx,1
    
    adds:
         mov ax,[si]
         xchg ax,[di]
         mov [si],ax
         add si,2
         sub di,2
         loop adds
         
    mov cx,10
    lea si,w
    
    rev:
        mov ah,2  
        add [si],48
        mov dx,[si]
        int 21h
        add si,2
        loop rev
        
    ret
    
    reverse endp

end main