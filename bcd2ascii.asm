
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100

mov al,[1000h]
add al,30h
mov [1010h],al
hlt
ret




