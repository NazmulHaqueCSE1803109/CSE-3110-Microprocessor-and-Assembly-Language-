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
      cmp al,'A'
      jl exit
      cmp al,'Z'
      jg exit
      mov dl,al
      int 21h
      
      
    
      
      exit: 
      print "Enter character is not a english capital letter."
      mov ah,4ch
      int 21h
      
      main endp
end main