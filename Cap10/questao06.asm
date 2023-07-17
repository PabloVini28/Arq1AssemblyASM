; Correção: 0,5
    .686
    .model flat, c
    .stack 100h
printf PROTO arg1:Ptr Byte, printlist:VARARG
scanf PROTO arg2: Ptr Byte, inputlist:VARARG
    .data
msg1fmt byte 0Ah,"%s",0
msg1 byte "x is greater than y", 0
msg2 byte "x is less than or equal to y", 0

x real10 4.0
y real10 5.0

    .code
main proc

            ;if x > y
if01:       fld y
            fld x
            fcomip st(0), st(1)
            jbe else01
then01:     INVOKE printf, ADDR msg1fmt, ADDR msg1
            jmp endif01
else01:     INVOKE printf, ADDR msg1fmt, ADDR msg2
endif01:    nop

ret
main endp
end
