include "emu8086.inc"
.model small
.stack 100h
.code
main proc
      
      print "Enter a number : "
      mov ah,1
      int 21h   
      mov bl,al   
      mov cl,30h
      
      
      
      printn
      
      print "Output : "
      mov ah,2
      cmp bl,cl
      jg positive
      je zero
      jl negative
      
      
      positive:
      mov dl,31h
      int 21h
      jmp exit
      
      zero:
      mov dl,30h
      int 21h
      jmp exit
      
      negative:  
      print "-"
      mov dl,31h
      int 21h
      jmp exit
      
      exit:
      mov ah,4ch
      int 21h
      
      main endp
end main