INCLUDE 'EMU8086.INC'
.MODEL SMALL
.DATA
.CODE
MAIN PROC
    
    XOR BX,BX
    MOV CL,4  
    PRINT 'ENTER A HEX NUMBER : '
    MOV AH,1
    INT 21H
    
    WHILE_:
           CMP AL,0DH
           JE END_WHILE
           CMP AL,39H
           JG LETTER
           AND AL,0FH
           JMP SHIFT 
           
    LETTER:
           SUB AL,37H
    
    SHIFT:
          SHL BX,CL
          OR BL,AL
          INT 21H
          JMP WHILE_ 
          
    END_WHILE: 
              PRINTN
              PRINT 'PRINT THAT HEX NUMBER : '
              
              MOV CX,4
              MOV AH,2
              
              FOR:
                  MOV DL,BH
                  SHR DL,4
                  SHL BX,4
                  
                  CMP DL,10
                  JGE LETTER1
                  
                  ADD DL,48
                  INT 21H 
                  JMP END_FOR
              LETTER1:
                      ADD DL,55
                      INT 21H
              END_FOR:        
                      LOOP FOR
              
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN