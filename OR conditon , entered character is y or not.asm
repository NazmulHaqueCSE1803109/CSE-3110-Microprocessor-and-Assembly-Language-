include "emu8086.inc"
.model small
.stack 100h
.code
main proc
      
      print "Enter a Character : "
      mov ah,1
      int 21h   
      
      
      
      
      printn
      
      print "Output : "
      mov ah,2
      cmp al,'y'
      je then
      cmp al,'Y'
      je then 
      jmp exit
      
      then:
      mov dl,al
      int 21h    
      jmp end:
      
      
    
      
      exit: 
      print "Entered character is not y or Y."  
      
      end:
      mov ah,4ch
      int 21h
      
      main endp
end main