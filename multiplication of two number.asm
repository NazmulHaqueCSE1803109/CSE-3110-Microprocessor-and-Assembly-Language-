INCLUDE 'EMU8086.INC'
.MODEL SMALL
.DATA
.CODE
MAIN PROC
    
    CALL MULTIPLICATION
    
    MOV AH,4CH
    INT 21H  
    
MAIN ENDP  
    
MULTIPLICATION PROC  
    
    ;INPUT
    
    PRINT 'ENTER FIRST NUMBER : '
    MOV AH,1
    INT 21H  
    MOV BL,AL
    SUB BL,30H
    
    PRINTN 
    
    PRINT 'ENTER SECOND NUMBER : '
    MOV AH,1
    INT 21H
    MOV CL,AL
    SUB CL,30H
    PRINTN   
    
    ;MULTIPLICATION
    
    MOV DL,0H
    
    FOR:
        CMP CL,0
        JE END_FOR
        SHR CL,1
        
        JNC CHECK
        ADD DL,BL
        
      CHECK:
            SHL BL,1
            JMP FOR   
            
     END_FOR:
             ;OUTPUT
                      
                   
             MOV AH,2
            
             INT 21H
    
    
    RET
    
MULTIPLICATION ENDP     

END MAIN