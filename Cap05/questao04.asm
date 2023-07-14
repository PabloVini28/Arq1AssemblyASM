    .686
; Correção: 0,0. Era para fazer sem as diretivas, vocês fizeram com diretivas.
    .model flat, c
    .stack 100h
printf PROTO arg1:Ptr Byte, printlist:VARARG
    .data
msg1fmt byte 0Ah,"%s",0
msg1 byte "funfou",0
ans sdword 0
y sdword 5
x sdword ?
i sdword ?

    .code
main proc

mov ans,0
.if y!= 0
mov ecx,1
.repeat
mov eax,ans
add eax,x
mov ans,eax
INVOKE printf, ADDR msg1fmt, ADDR msg1
inc ecx
.until ecx>y
mov i,ecx
.endif

main endp
end
