; Correção: 0,5
    .686
    .model flat, c
    .stack 100h
printf PROTO arg1:Ptr Byte, printlist:VARARG
scanf PROTO arg2: Ptr Byte, inputlist:VARARG
    .data
msg1fmt byte 0Ah,"%s",0
msg1 byte "Digite o tamanho do vetor: ", 0
msg2 byte "Digite o vetor (elementos separados por espaco ou enter): ", 0
msg3 byte "Vetor desordenado: ", 0
msg4 byte "Vetor ordenado:    ", 0
msg5fmt byte "%d " , 0
msg6fmt byte 0Ah, 0Ah, 0
in1fmt byte "%d",0

n sdword ?
aux sdword ?
vetor sdword 100 dup(?)

    .code
main proc


INVOKE printf, ADDR msg1fmt,ADDR msg1               ;pede o tamanho do vetor
INVOKE scanf, ADDR in1fmt, ADDR n


.if n > 0                                           ;se for maior que 0

    INVOKE printf, ADDR msg1fmt,ADDR msg2           ;pede o vetor
    mov ecx, n                                      ;preenchimento do vetor
    mov esi, offset vetor+0
    .repeat 
        push ecx
        INVOKE scanf, ADDR in1fmt, ADDR [esi]
        add esi,4
        pop ecx
    .untilcxz

    INVOKE printf, ADDR msg1fmt, ADDR msg3          ;"Vetor desordenado: "
    mov ecx , n
    mov esi, offset vetor+0
    .repeat
        push ecx
        mov eax, [esi]
        mov aux, eax
        INVOKE printf , ADDR msg5fmt, aux
        add esi, 4
        pop ecx
    .untilcxz

    .if n > 1                                       ;ordena apenas se n > 1

        mov ecx, n                                  ;ordenamento do vetor (bubblesort modificado)
        dec ecx
        .repeat
            push ecx
            mov esi, offset vetor+0
            .repeat
                mov edi, esi
                add edi, 4
                mov eax, [esi]
                .if eax > [edi]
                    mov edx, [edi]
                    mov [esi], edx
                    mov [edi], eax 
                .endif
                add esi, 4
            .untilcxz
        pop ecx
        .untilcxz
    .endif

                                                    ;imprime o vetor ordenado
    INVOKE printf, ADDR msg1fmt, ADDR msg4          ;"Vetor ordenado: "
    mov ecx , n
    mov esi, offset vetor+0
    .repeat
        push ecx
        mov eax, [esi]
        mov aux, eax
        INVOKE printf , ADDR msg5fmt, aux
        add esi, 4
        pop ecx
    .untilcxz
    INVOKE printf, ADDR msg6fmt                     ;0Ah

.endif
ret
main endp
end
