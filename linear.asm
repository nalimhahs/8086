
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

        mov si,1000h
        mov ax,[1010h]
        mov cx,0000h
again:  cmp ax,[si]
        jz equal
        add si,02h
        inc cx
        cmp cx,0005h
        jl  again
        mov [1020h],00ffh
        jmp cont
equal:  mov [1020h],cx 
cont:
ret




