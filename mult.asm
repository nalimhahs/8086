
; mult

org 100h

MOV AX,[1000H]
MOV BX,[1002H]
MUL BX
MOV [1004H], AX
MOV AX, DX
MOV [1006H], AX
hlt

ret




