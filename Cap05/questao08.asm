    .686
    .model flat, c
    .stack 100h
printf PROTO arg1:Ptr Byte, printlist:VARARG
    .data
msg1fmt byte 0Ah,"%s ",0
msg1 byte ".",0
tempecx sdword ?
    .code
main proc


            mov ecx,2
for01:      nop
            mov tempecx,ecx
            mov ecx,3
for02:      nop
            ;body of nested loop
            loop for02
endfor02:   nop
            mov ecx,tempecx
            loop for01
endfor01:   nop

main endp
end
