; Correção: 0,5
    .686
    .model flat, c
    .stack 100h
printf PROTO arg1:Ptr Byte, printlist:VARARG
scanf PROTO arg2: Ptr Byte, inputlist:VARARG
    .data
msg1fmt byte "%s",0
msg2fmt byte 0Ah,"%s",0Ah, 0
msg3fmt byte "%s",0Ah, 0
msg4fmt byte 0Ah, 0
msg1 byte "Enter an AC Voltage: ", 0
msg2 byte "Voltage is Acceptable", 0
msg3 byte "Warning!", 0
msg4 byte "Voltage too Low", 0
msg5 byte "Voltage too High", 0
in1fmt byte "%d",0
voltage sdword ?
    .code
main proc
    INVOKE printf,ADDR msg1fmt, ADDR msg1
    INVOKE scanf,ADDR in1fmt, ADDR voltage
    mov eax, voltage
    if01:       cmp eax, 110
                jl else01
                cmp eax, 120
                jg else01
    then01:     INVOKE printf,ADDR msg2fmt, ADDR msg2
                jmp endif01
    else01:     INVOKE printf,ADDR msg2fmt, ADDR msg3
    if02:       cmp voltage, 110
                jge else02
    then02:     INVOKE printf,ADDR msg3fmt, ADDR msg4
                jmp endif02
    else02:     INVOKE printf,ADDR msg3fmt, ADDR msg5
    endif02:    nop
    endif01:    nop
    INVOKE printf,ADDR msg4fmt
    ret
main endp
end