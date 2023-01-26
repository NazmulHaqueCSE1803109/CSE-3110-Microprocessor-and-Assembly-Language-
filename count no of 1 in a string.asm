include "emu8086.inc"
.model small
.stack 100h   
.data 
x dw 0
.code
main proc       
    
    mov ax,@data
    mov ds,ax 
    
    print "enter a number : "
    mov ah,1    
    int 21h
    
    mov bl,0
    mov cx,16
    
    shift:
    rol ax,1
    jnc again
    inc bl  
   
    
    again:
    loop shift  
    
         
    printn
    print "no of 1 : "     
    mov ah,2   
    sub bl,0
    mov dl,bl
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main