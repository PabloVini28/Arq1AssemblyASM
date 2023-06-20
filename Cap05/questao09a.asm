    .686
    .model flat, c
    .stack 100h
printf PROTO arg1:Ptr Byte, printlist:VARARG
    .data
msg1fmt byte 0Ah,"%d",0
msg1 byte "funfou",0
numero sdword 4
resultado sdword ?
    .code
main proc

        ; Mude manualmente o n para obter o fatorial que quiser

        mov ecx, numero
        mov eax, 1

        .while ecx > 1
         imul ecx
         dec ecx
        .endw

        mov resultado,eax

        INVOKE printf, ADDR msg1fmt,resultado

        ret
main endp
end