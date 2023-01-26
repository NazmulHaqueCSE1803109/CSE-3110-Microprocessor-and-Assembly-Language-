include 'emu8086.inc'
.model small
.stack 100h
.code
main proc
    
    printn "Subhanallah"
    printn "alahamdulillah"   
    printn "allah hu akbar"
    printn "la ilaha illallah"
  
  mov ah,4ch
  int 21h
  main endp
end main