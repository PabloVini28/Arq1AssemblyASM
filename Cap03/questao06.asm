 ; Correção: 0,5
    .686
    .model flat, c
    .stack 100h
    printf PROTO arg1:Ptr Byte, printlist:VARARG
    scanf PROTO arg2: Ptr Byte, inputlist:VARARG
    .data
msg1fmt byte "%s",0
msg2fmt byte 0Ah,"%s%d",0
msg1 byte "Enter the number of amperes: ",0
msg2 byte "Enter the number of ohms: ",0
msg3 byte "The number of volts is: " ,0
msg4 byte "the number of watts is: " ,0
number sdword ?
number2 sdword ?
in1fmt byte "%d",0
    .code
main proc
INVOKE printf,ADDR msg1fmt,ADDR msg1
INVOKE scanf,ADDR in1fmt,ADDR number
INVOKE printf, ADDR msg1fmt,ADDR msg2
INVOKE scanf, ADDR in1fmt,ADDR number2
mov eax,number
imul number2
mov ebx,eax
INVOKE printf,ADDR msg2fmt,ADDR msg3,ebx
mov eax,number
imul ebx
mov ebx,eax
INVOKE printf,ADDR msg2fmt,ADDR msg4,ebx
ret
main endp 
end