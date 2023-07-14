; Correção: 1,0
    .686
    .model flat, c
    .stack 100h
scanf PROTO arg2:Ptr Byte, inputlist:VARARG
printf PROTO arg1:Ptr Byte, printlist:VARARG
    .data
msg1fmt byte 0Ah,"%s%d",0Ah,0Ah,0
msg1 byte "The contents of the accumulator are: ",0
in1fmt byte "%d", 0
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

INACC macro
    push ecx
    push edx
    INVOKE scanf, ADDR in1fmt, ADDR temp
    mov eax, temp
    pop edx
    pop ecx
endm

STOREACC macro
    mov operand, eax
endm

SUBACC macro
    sub eax, operand
endm

DIVACC macro operand
    push ebx
    push ecx
    mov ecx, operand

    if (operand ne 0) and (operand ne 1)
        mov ebx, eax
        mov eax, 0
        if operand LT 0
        neg ecx
        endif
        .while ebx >= ecx
        sub ebx, ecx 
        inc eax
        .endw
        if operand LT 0
        neg eax
        endif
    elseif operand eq 0
        mov eax, -1
    endif 

    pop ecx
    pop ebx 
endm

main    proc
        ;LOADACC 10
        INACC
        ADDACC 2
        ;ADDACC three
        ;MULTACC 1
        ;MULTACC -3
        DIVACC -2
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