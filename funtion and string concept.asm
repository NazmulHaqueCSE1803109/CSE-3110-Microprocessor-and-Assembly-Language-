.model small
.stack 100h

.data
m db 'Alhamdulillah $'     ; $ means a string is end here and print start to this point.     


.code
main proc
    ; 1-> single key input 
    ; 2-> single character output
    ; 9-> character  string output 
    
    mov ax,@data
    mov ds,ax 
    
    mov ah,9  ; character string 
    lea dx,m  ; lea for load effective address.
    int 21h  
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al 
    
    mov ah,2
    mov dl,0dh  ; new line 
    int 21h
    mov dl,0ah  ; eliminate extra extra
    int 21h 
    
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch    
    int 21h
    main endp
end main
    
    