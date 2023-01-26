.model small
.stack 100h  
.data
   count db 0
.code
main proc 
    
    mov ax,@data
    mov ds,ax
   
    mov bx,0    
    
    
    
    mov ah,1 
    
    for1:
        int 21h
        cmp al,0dh
        je end_for1  
        sub al,48
        shl bx,1
        or bl,al  
        inc count
        jmp for1
    
    end_for1:
        
        
        
        mov cl,16
        sub cl,count
        rcl bx,cl
        
        xor ch,ch
        mov cl,count   
        
        mov ah,2
        
        for2:
            rcl bx,1
            jc output_one
            mov dl, '0'
            int 21h
            jmp last_of_loop
            
            output_one:
            mov dl, '1'
            int 21h
            
            last_of_loop:
            loop for2
    
    
    
    mov ah,4ch
    main endp
end main
    