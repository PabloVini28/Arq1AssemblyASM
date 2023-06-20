; Correção: 0,5
    .686
    .model flat, c
    .stack 100h
printf PROTO arg1:Ptr Byte, printlist:VARARG
scanf PROTO arg2: Ptr Byte, inputlist:VARARG
    .data
msg1fmt byte "%s",0
msg2fmt byte 0Ah,"%s",0
msg3fmt byte 0Ah,"    %d",0
in1fmt byte "%d",0
msg1 byte "Enter a number: ",0
msg3 byte "Numbers",0
num1 sdword ?
num2 sdword ?
    .code
main proc
INVOKE printf,ADDR msg1fmt, ADDR msg1
INVOKE scanf,ADDR in1fmt, ADDR num1
INVOKE printf,ADDR msg1fmt, ADDR msg1
INVOKE scanf,ADDR in1fmt, ADDR num2
INVOKE printf,ADDR msg2fmt, ADDR msg3
INVOKE printf,ADDR msg3fmt, num1
INVOKE printf,ADDR msg3fmt, num2
ret
main endp
end
