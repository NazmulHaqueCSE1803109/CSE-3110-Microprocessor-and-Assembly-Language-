INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
     NUMBER DB 10 DUP<"?">
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    XOR BX,BX
    MOV CX,10
    
    MOV AH,1
    
    FOR:
        INT 21H
        MOV NUMBER[BX],AL
        INC BX
        LOOP FOR
        
    XOR BX,BX
    MOV CX,10
    PRINTN  
    
    MOV AH,2   
    
    FOR1:
         MOV DL,NUMBER[BX]
         PRINT ' '
         INT 21H
         INC BX
         LOOP FOR1
         
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    
    