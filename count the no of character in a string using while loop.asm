include "emu8086.inc"
.model small
.stack 100h
.code
main proc
     
     mov dl,30h
     print "enter a text : " 
   
     mov ah,1
     int 21h
             
     
     
     whilelp:  
     cmp al,0dh
     je exit
     inc dl  
     int 21h
     loop whilelp    
     
     exit:  
     mov cl,dl    
    
     printn    
     print "no of character : "
     mov ah,2
  
     
     mov dl,cl
     int 21h
     
     
     mov ah,4ch
     int 21h
      
      main endp
end main