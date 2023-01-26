INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA   

.CODE
MAIN PROC
    ; 0100H = SP   
    
    MOV AX,32H   ; AX=2
    MOV BX,33H   ; BX=3
    
    PUSH AX  ; 0100=AX  SP = SP-2H=00FE
    PUSH BX  ; 00FE=BX  SP = SP-2H=00FC
    
    PRINT 'BEFORE SWAP :'
    PRINTN
    
    PRINT 'AX = '
    MOV AH,2
    MOV DX,AX
    INT 21H  
    
    PRINTN
    
    PRINT 'BX = '
    MOV DX,BX
    INT 21H  
    
    PRINTN
    
    PRINT 'AFTER SWAP :'
    PRINTN
        
    PRINT 'AX = '    
    POP CX   ; CX=00FE  SP = SP+2H=OOFC+2H=OOFE  
    MOV AX,CX
    MOV AH,2 
    MOV DX,AX
    INT 21H 
    
    PRINTN
       
    PRINT 'BX = '   
    POP CX   ; DX=OOFC  SP = SP+2H=OOFE+O1OO=0100H
    MOV BX,CX
    MOV AH,2  
    MOV DX,BX
    INT 21H
     
    
    PRINTN
    
    
    
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN