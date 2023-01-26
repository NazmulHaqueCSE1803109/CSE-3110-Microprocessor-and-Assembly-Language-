.model small
.stack 100h

.data 
a db 'Enter first number : $'
b db 'Enter second number : $'
c db 'Largest number : $'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    biggest:  ; this is use for finding biggest number between two number
    cmp bl,bh  ; this is use for comparing two number
    jg level1   ; if this condition is true then go to level1
    jmp level2   ; if this condition is true then go to level2
    
    level1:
    mov ah,9
    lea dx,c
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    jmp exit
    
    level2:
    mov ah,9
    lea dx,c
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    