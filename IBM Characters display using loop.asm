.model small
.stack 100h
.code
main proc
    MOV AH,2
    MOV CX,256
    MOV DL,0
  LOOP1:
    INT 21H
    INC DL
    DEC CX
    JNZ LOOP1
  
  mov ah,4ch
  int 21h
  main endp
end main