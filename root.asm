
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h 

quadratic proc near
    
mov bl,[1001h]
mov cl,[1002h]
mov dl,[1000h]

mov al,bl
imul bl
mov [1010h],ax

mov al,04h
imul cl
imul dl

mov [1012h],ax
mov bx,[1010h]

sub bx,ax

mov ax,0002h

imul dl

mov cx,ax

mov ax,bx
idiv cl

mov [1020h],al

ret 

quadratic endp

call quadratic
 

ret




      
