
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov dx,0004h

iloop:  mov si,1000h
        mov cx,dx
        
jloop:  mov ax,[si]
        cmp ax,[si + 2]
        jle cont
        xchg ax,[si + 2]
        mov [si],ax
cont:   add si,02
        loop jloop
        dec dx
        jnz iloop

ret




