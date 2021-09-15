
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV SI, 1000H;
MOV BL, [SI];
CMP BL, 02H;
JZ PRIME;      
CMP BL, 03H;
JZ PRIME;
MOV AL, BL;
MOV CL, 02H;
DIV CL;
MOV CL, AL;  
REPEAT:
MOV AH, 00H;
MOV AL, BL;
DIV CL; 
CMP AH, 00H;
JZ  NOTPRIME;
DEC CL;
CMP CL, 01H;
JNZ REPEAT;    
PRIME:
MOV [SI+2], 01H;
JMP END;
NOTPRIME:
MOV [SI+2], 11H;
END:
HLT

ret




