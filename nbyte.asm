
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov si,1004h
mov di,1014h
mov cx,0005h
         

mov al,00h

again: mov al,[di]
       adc al,[si]
       mov [di],al
       dec si     
       dec di
       loop again
       mov [di],00h
       jnc cont:
       mov [di],01h
cont:
hlt
ret




