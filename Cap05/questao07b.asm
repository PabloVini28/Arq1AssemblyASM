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
            
while01:    cmp i,0
            jle endw01
            mov eax,sum
            add eax,i
            mov sum,eax
            mov ebx,i
            sub ebx,2
            mov i,ebx
            jmp while01
endw01:     nop
            INVOKE printf, ADDR msg1fmt,sum

        ret
main endp
end