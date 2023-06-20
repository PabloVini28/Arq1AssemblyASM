; Correção: 1,0
    .686
    .model flat, c
    .stack 100h
printf PROTO arg1:Ptr Byte, printlist:VARARG
scanf PROTO arg2: Ptr Byte, inputlist:VARARG
    .data
msg1fmt byte 0Ah,"%s",0
msg2fmt byte 0Ah,"%s%d", 0Ah, 0Ah,0
msg1 byte "Enter the degrees in Fahrenheit: ",0
msg2 byte "The degrees in Celsius is: ",0
in1fmt byte "%d",0
num sdword ?
    .code
main proc
INVOKE printf,ADDR msg1fmt, ADDR msg1
INVOKE scanf,ADDR in1fmt, ADDR num
mov eax, num
sub eax, 32
cdq
mov ebx, 9
idiv ebx
mov ebx, 5
imul ebx
mov num, eax
INVOKE printf,ADDR msg2fmt, ADDR msg2, num
ret
main endp
end
