INCLUDE 'EMU8086.INC' 

.MODEL SMALL
.STACK 100H  

.DATA
    
      S DB 255 DUP("$")   
      
.CODE
     
    MAIN PROC
        
        MOV AX,@DATA                                                                            
        MOV DS,AX
        
        PRINT "Enter a String : "
        
        MOV CX,0
        MOV BX,0 
        MOV SI,OFFSET S          
             
        MOV AH,1 
        
        PUSH_: 
             
              INT 21H
              CMP AL,0DH
              JE END_PUSH_        
              CMP AL,20H
              JE  POP_
              INC CX
              PUSH AX 
              JMP PUSH_ 
        
        END_PUSH_: 
        
                 MOV BX,1
                 JMP POP_                  
         
        POP_:  
            
             POP DX
             CMP DL,97
             JE CAPITAL    
             CMP DL,101
             JE CAPITAL
             CMP DL,105
             JE CAPITAL 
             CMP DL,111
             JE CAPITAL 
             CMP DL,117
             JE CAPITAL 
             MOV [SI],DL
             INC SI                 
             JMP END_POP_
             
        CAPITAL:  
                    
                SUB DL, 32  
                MOV [SI],DL
                INC SI
                JMP END_POP_    
                         
                        
        END_POP_: 
                 
                 LOOP POP_ 
                 MOV [SI],32
                 INC SI 
                 CMP BX,0 
                 JE PUSH_     
                        
        PRINTN            
        PRINT "REVERSE WORD WITH CAPITAL VOWEL : " 
                    
        MOV AH,09H
        LEA DX,S
        INT 21H

        MOV AH,4CH
        INT 21H     
    
     MAIN ENDP
END MAIN
       