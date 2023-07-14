 ; Correção: 0,1
    .686
    .model flat, c
    .stack 100h
printf PROTO arg1:Ptr Byte, printlist:VARARG
    .data
msg1fmt byte 0Ah,"%d",0
msg1 byte "funfou",0
sum sdword ?
n sdword 0
i sdword 1
    .code
main proc

        mov sum, 0
        mov ecx, n
        .repeat
        mov eax, sum
        add eax,i
        mov sum,eax
        .untilcxz
        
        ; INVOKE printf, ADDR msg1fmt, sum
        
        ; caso n seja negativo ou nulo, entra em um loop infinito

        ret
main endp
end