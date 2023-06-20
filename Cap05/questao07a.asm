    .686
    .model flat, c
    .stack 100h
printf PROTO arg1:Ptr Byte, printlist:VARARG
    .data
msg1fmt byte 0Ah,"%d",0
msg1 byte "funfou",0
sum sdword ?
i sdword ?
    .code
main proc

        mov i,10
        mov sum,0
        .repeat
            mov eax,sum
            add eax,i
            mov sum,eax

            mov eax,i
            sub eax,2
            mov i,eax
        .until i<=0

        INVOKE printf, ADDR msg1fmt, sum


        ret
main endp
end