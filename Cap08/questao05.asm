    .686
    .model flat, c
    .stack 100h
printf PROTO arg1:Ptr Byte, printlist:VARARG
    .data
msg1fmt byte "%d, ", 0
msg2fmt byte 0Ah, 0
msg1    byte "funfou ", 0
vetor1 sdword 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20
vetor2 sdword 20 dup(?)
    .code
main proc
    mov esi, offset vetor1
    mov edi, offset vetor2
    mov ecx, 20
    .repeat
        mov eax, [esi]
        mov [edi], eax
        add esi, 4
        add edi, 4
    .untilcxz
    ret
main endp
end