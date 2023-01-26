INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA 
     NUMBER DB 0,1,2,3,4,5,6,7,8,9  
     NUMBER2 DW 65,66,67,68,69,70
     
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA SI,NUMBER
    
    MOV CX,10
    MOV AH,2
    
    FOR:
        MOV DL,[SI] 
        ADD DL,48
        INT 21H 
        PRINT ' '
        ADD SI,1
       LOOP FOR   
       
    PRINTN 
    
    LEA SI,NUMBER2
    
    MOV CX,6
    MOV AH,2
    
    FOR1:
         MOV DL,[SI]
         INT 21H
         PRINT ' '
         ADD SI,2
         LOOP FOR1  
    PRINTN
    
    MOV CX,10
    MOV AH,2 
    XOR BX,BX
    
    FOR2:
         MOV DL,NUMBER[BX]    
         ADD DL,48
         PRINT ' '
         INT 21H
         ADD BX,1
         LOOP FOR2 
         
    PRINTN
    
    MOV CX,6
    XOR BX,BX
    MOV AH,2
    
    FOR3:
         MOV DX,NUMBER2[BX]
         INT 21H 
         PRINT ' '
         ADD BX,2
         LOOP FOR3
       
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN