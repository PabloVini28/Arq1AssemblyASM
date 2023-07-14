    .686
    .model flat, c
    .stack 100h
printf PROTO arg1:Ptr Byte, printlist:VARARG
    .data
msg1fmt byte 0Ah,"%d",0
    .code
main proc

;mov eax, 10
;mov ebx, 2

mov edx, eax
mov eax, 0
.repeat
sub edx, ebx
inc eax
.until (edx < ebx)

;mov ebx, eax
;INVOKE printf, ADDR msg1fmt, ebx

main endp
end
