    .686
    .model flat, c
    .stack 100h
printf PROTO arg1:Ptr Byte, printlist:VARARG
    .data
msg1fmt byte 0Ah,"%d",0
msg1 byte "funfou",0
i sdword ?
    .code
main proc
            mov i, 1
while01:    cmp i, 3
            jg endw01
            ;body of loop
            INVOKE printf, ADDR msg1fmt, i
            inc i 
            jmp while01
endw01:     nop


main endp
end
