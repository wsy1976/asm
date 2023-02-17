
assume cs:code,ds:data
data segment
    msg db 'hello world!$'
data ends
code segment
start:
;数据段寄存器赋值
    mov ax,data
    mov ds,ax 
;输出字符串
    mov ah,09h
    mov dx,offset msg
    int 21h
;返回DOS          
    mov ah,4ch
    int 21h
code ends
    end start
