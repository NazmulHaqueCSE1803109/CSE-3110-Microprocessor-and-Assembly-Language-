include "emu8086.inc"
.model small
.stack 100h
.code
main proc
     
     print "enter first number : "
     mov ah,1
     int 21h 
     mov bx,ax
     
     printn
     
     print "enter second number : "
     mov ah,1
     int 21h 
     
     printn
     
     print "larger number : "
     
     cmp ax,bx        
     jg next
     
     mov ah,2
     mov dx,bx
     int 21h  
     
     
     
     next: 
     mov ah,2
     mov dx,ax
     int 21h
               
     mov ah,4ch
     int 21h
     
     main endp
end main
     