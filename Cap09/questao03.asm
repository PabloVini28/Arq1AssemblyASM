; Correção: 1,0 
    .686
    .model flat, c
    .stack 100h
printf PROTO arg1:Ptr Byte, printlist:VARARG
scanf PROTO arg2: Ptr Byte, inputlist:VARARG
    .data
msg1fmt byte "%s",0Ah, 0
in1fmt byte "%s", 0
msg1 byte "Eh palindromo", 0
msg2 byte "Nao eh palindromo", 0
vetor byte "abcdeedcba radarradar engenheiro abcdeedcba computador levellevel sopossopos natannatan amigoamigo abacaxista"
tamanho sdword  10
achou sdword  0
aux1 sdword  0
aux2 sdword  0
aux3 sdword  0
.code 
main proc

    lea esi, vetor
    lea edi, vetor + 9
    mov eax, 0

    .while(aux1 < 10)
        mov achou, 0
        mov ecx, 4
        
        .repeat
            mov al, [edi]
            mov ah, [esi]

            .if(al != ah)
                mov achou, -1
            .endif

            inc esi
            dec edi
        .untilcxz
        add esi, 7
        add edi, 15
        mov aux2, esi
        mov aux3, edi

        .if(achou <= -1)
            INVOKE printf, ADDR msg1fmt, ADDR msg2
        .else
            INVOKE printf, ADDR msg1fmt, ADDR msg1
        .endif

        mov esi, aux2
        mov edi, aux3
        inc aux1
    .endw

    ret
main endp
end