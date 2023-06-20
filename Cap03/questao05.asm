 ; Correção: 0,5
    .686
    .model flat, c
    .stack 100h
printf PROTO arg1:Ptr Byte, printlist:VARARG
scanf PROTO arg2: Ptr Byte, inputlist:VARARG
    .data
msg1fmt byte 0Ah, "%s",0
msg2fmt byte 0Ah, "%s%d" ,0Ah,0Ah,0
msg1 byte "Enter a integer: ",0
msg2 byte "The integer is: ",0
number sdword ?
in1fmt byte "%d",0
    .code
main proc
INVOKE printf,ADDR msg1fmt,ADDR msg1
INVOKE scanf,ADDR in1fmt,ADDR number
mov eax,number
mov ebx,3
imul ebx
mov ebx,7
sub ebx,eax
mov number,ebx
INVOKE printf, ADDR msg2fmt,ADDR msg2,number
ret
main endp
end