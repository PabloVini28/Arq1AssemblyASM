    .686
    .model flat, c
    .stack 100h
printf PROTO arg1:Ptr Byte, printlist:VARARG
; Correção: 1,0
    .data
msg1fmt byte 0Ah,"%d",0
msg1 byte "funfou",0
resultado sdword ?
    .code
main proc

        ; Mude manualmente o ecx pra determinar o valor
        mov ecx, 7

        mov ebx, 0
        mov edx, 1

        .if (ecx == 0)
            mov eax, ebx;
        .elseif (ecx == 1)
            mov eax, edx;
        .else 
            dec ecx
            .while ecx > 0
                mov eax, ebx
                add eax, edx
                mov ebx, edx
                mov edx, eax
                dec ecx
            .endw
        .endif


        mov resultado, eax
        INVOKE printf, ADDR msg1fmt, resultado

        ret
main endp
end