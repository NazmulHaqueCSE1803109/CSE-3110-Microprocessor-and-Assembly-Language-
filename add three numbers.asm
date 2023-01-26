.model small
.stack 100h


.data 

a db 'Ener first number : $'   
b db 'Enter second number : $'
c db 'Enter third number : $'
d db 'Sum : $ '

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
    
    mov ah,9
    lea dx,c
    int 21h  
    
    mov ah,1
    int 21h
    mov cl,al
      
    ;add three numbers
    add bl,bh
    sub bl,48
    mov ch,bl
    add cl,ch
    sub cl,48   
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h  
    
    mov ah,9
    lea dx,d
    int 21h     
    
    
    
    mov ah,2
    mov dl,cl
    int 21h 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h   
    
    mov ah,2
    mov dl,07
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    