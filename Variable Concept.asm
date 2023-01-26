.model small
.stack 100h
.data
num db 3
num1 db ?

.code
main proc
     mov ax,@data
     mov ds,ax
     
     mov ah,2
     add num,48 
     mov dl,num
     int 21h 
     
     mov ah,2
     mov dl,0dh
     int 21h
     mov dl,0ah
     int 21h
     
     mov ah,1
     int 21h
     mov num1,al   
     
     mov ah,2
     mov dl,0dh
     int 21h
     mov dl,0ah
     int 21h
     
     mov ah,2
     mov dl,num1  
     int 21h
     
     
     exit:
     mov ah,4ch
     int 21h
     main endp
end main
     