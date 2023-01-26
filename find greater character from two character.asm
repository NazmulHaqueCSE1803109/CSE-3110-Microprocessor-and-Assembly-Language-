include "emu8086.inc"
.model small
.stack 100h
.code
main proc    
    print "Enter first character : "
    mov ah,1
    int 21h
    mov bl,al
    
    
    printn
     
    print "Enter second character : " 
    mov ah,1 
    int 21h
    
    printn 
    
    mov ah,2
    
    print "greater character : "
    cmp bl,al
    jge second  
    mov dl,bl  
    
    
    second: 
    mov dl,al
    int 21h  
    
    mov ah,4ch
    int 21h
    
    main endp
end main