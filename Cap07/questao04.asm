    .686
    .model flat, c
    .stack 100h
printf PROTO arg1:Ptr Byte, printlist:VARARG
    .data
msg1fmt byte 0Ah,"%d",0
msg1 byte "funfou",0
numero sdword 5                      ; Mude manualmente o numero para obter o fatorial que quiser
resultado sdword ?
.code
    fatorial macro
    mov ecx, numero
    mov eax, 1
    .while ecx > 1
        imul ecx
        dec ecx
    .endw
    mov resultado,eax
endm

main proc
        fatorial

        INVOKE printf, ADDR msg1fmt,resultado

        ret
main endp
end