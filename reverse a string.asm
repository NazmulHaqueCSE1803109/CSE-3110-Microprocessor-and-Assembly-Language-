INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    
    
    XOR CX,CX
    
    PRINT 'ENTER A STRING : '
    
    MOV AH,1
    
    PUSH_:
          INT 21H
          CMP AL,0DH
          JE END_PUSH_
          PUSH AX 
          INC CX
          JMP PUSH_
                     
    END_PUSH_:
              PRINTN
              PRINT 'OUTPUT : '
              MOV AH,2                 
    OUTPUT:
         POP DX
         INT 21H
         LOOP OUTPUT
   
          
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN