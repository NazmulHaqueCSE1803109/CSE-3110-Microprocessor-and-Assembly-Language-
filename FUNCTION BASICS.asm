INCLUDE 'EMU8086.INC'
.MODEL SMALL
.DATA
.CODE
MAIN PROC
    
    CALL FUNCTION_NAME
    
    PRINTN 'I AM MAIN FUNCTION'    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP

  FUNCTION_NAME PROC
    ;STATEMENTS
    ;STATEMENTS
    PRINTN 'HELLO WORLD'
    PRINTN 'HELLO, I AM A FUNCTION' 
    
    RET
    
  FUNCTION_NAME ENDP
  
  END MAIN