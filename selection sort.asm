include 'emu8086.inc'
.model small
.stack 100h
.data
 
 ar db 5,2,1,3,4
 
.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea si,ar
    mov bx,5
    
    call select
    
    mov ah,4ch
    int 21h
    
    main endp  


select proc
    push bx
    push cx
    push dx
    push si
    dec bx
    je end_sort
    mov dx,si
    
    sort_loop:
              mov si,dx
              mov cx,bx
              mov di,si
              mov al,[di]
              
    find_big: 
             inc si
             cmp [si],al
             jng next
             mov di,si
             mov al,[di]
             
    next:
          loop find_big
          call swap
          dec bx
          jne sort_loop
          
    end_sort:
             pop si
             pop dx
             pop cx
             pop bx
             ret
select endp


swap proc
    push ax
    mov al,[si]
    xchg al,[di]
    mov [si],al
    pop ax
    ret
swap endp


mov cx,5
lea si,ar
xor dx,dx 

printn
print 'sorted array : '

show:     
     mov ah,2
     mov dx,[si]
     int 21h
     add si,2
     loop show



end main