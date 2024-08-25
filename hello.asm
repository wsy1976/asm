;打印字符串
;注释：
;知识点：程序基本结构
;知识点：利用中断调用显示字符串，字符串结束标识“$”
;知识点：字符串的偏移地址，伪指令offset
;知识点：利用中断返回DOS
;入口地址：标号
;修改时间：2024-08-25
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
