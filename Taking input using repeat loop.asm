include "emu8086.inc"
.model small
.stack 100h
.code
main proc   
    
    print "enter a text : "
    mov ah,1
    
    REPEAT:
    int 21h
    cmp al,' '
    jne REPEAT
    
          
   

    mov ah,4ch
    int 21h
    main endp
end main