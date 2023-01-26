include "emu8086.inc"
.model small
.stack 100h
.code
main proc
     
      
     mov cx,20  
     mov ah,2
     mov dl,'*'
                   
     for:
     int 21h
     loop for
      
      main endp
end main