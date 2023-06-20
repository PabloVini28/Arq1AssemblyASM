    .686
    .model flat, c
    .stack 100h
scanf PROTO arg2:Ptr Byte, inputlist:VARARG
printf PROTO arg1:Ptr Byte, printlist:VARARG
    .data
msg1fmt byte 0Ah,"%s%d",0Ah,0Ah,0
msg1 byte "The contents of the accumulator are: ",0
temp sdword ?
three sdword 3

    .code
LOADACC macro operand
    mov eax,operand
endm

ADDACC macro operand
    add eax,operand
endm

MULTACC macro operand
    push ebx
    push ecx

    mov ebx,eax

    ;caso ebx = 0, retorna 0
    ;caso ebx = 1, retorna operando

    if (operand ne 0) and (operand ne 1)
        mov eax,0
        mov ecx,operand

        if operand LT 0
        neg ecx
        endif

        .while ecx >0
        add eax,ebx 
        dec ecx
        .endw

        if operand LT 0
        neg eax
        endif
    elseif operand eq 0
        mov eax,0
    endif 

        pop ecx
        pop ebx
endm


main    proc
        LOADACC 1
        ADDACC 2
        ADDACC three
        MULTACC 4
        MULTACC -3
        CALL OUTACC
        ret
main    endp

OUTACC proc
    push eax
    push ecx
    push edx
    mov temp, eax
    INVOKE printf, ADDR msg1fmt, ADDR msg1, temp
    pop edx
    pop ecx
    pop eax
    ret
OUTACC endp


end