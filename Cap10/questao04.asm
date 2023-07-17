; Correção: 0,5 
    .686
    .model flat, c
    .stack 100h
printf PROTO arg1:Ptr Byte, printlist:VARARG
scanf PROTO arg2: Ptr Byte, inputlist:VARARG
    .data
msg1fmt byte 0Ah,"%s",0
msg1 byte "Enter a long double for x: ", 0
msg2fmt byte 0Ah,"%s%6.4Lf", 0Ah, 0Ah,0
msg2 byte "The long double in y is: ", 0
in1fmt byte "%Lf",0

x real10 ?
y real10 ?

    .code
main proc
    INVOKE printf, ADDR msg1fmt, ADDR msg1
    INVOKE scanf, ADDR in1fmt, ADDR x

    fld x
    fstp y

    INVOKE printf, ADDR msg2fmt, ADDR msg2, y
ret
main endp
end
