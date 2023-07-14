; Correção: 0,1
    .686
    .model flat, c
    .stack 100h
printf PROTO arg1:Ptr Byte, printlist:VARARG
    .data
msg1fmt byte 0Ah,"%d",0
msg1 byte "funfou",0
numero sdword 7         ; Mude manualmente o numero pra determinar o valor
resultado sdword ?
    .code

fibonacci macro
    mov ecx, numero
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
endm

main proc
        fibonacci
        
        INVOKE printf, ADDR msg1fmt, resultado

        ret
main endp
end