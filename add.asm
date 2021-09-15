
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV AX, [1000H]             
MOV BX, [1002H]
MOV CL, 00H
ADD AX, BX
MOV [1004H], AX
JNC LABEL
INC CL
LABEL:MOV [1006], CL
HLT

ret




