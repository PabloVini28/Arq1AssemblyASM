;
;   Building Instructions:
;   ml /Cx /coff .\Main.asm /link /SUBSYSTEM:console /out:Main.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;
; Correção: 0,5

        .686
        .model  flat, c 
        .stack  100h
printf  PROTO arg1:Ptr Byte, printlist:VARARG 
scanf   PROTO arg2:Ptr Byte, inputlist:VARARG
        .data
infmt  byte    "%d", 0
msg0fmt byte    "%s",0
msg1fmt byte    0Ah, "%s",0
msg2fmt byte    0Ah,"%d%s%d%s%d",0Ah,0
msg0    byte    "Enter a number: ",0
msg1    byte    "Enter a larger number: ",0
msg2    byte    "Enter an even larger",0
msg3    byte    "number: ", 0
msg4    byte    " < ", 0
msg5    byte    " > ", 0
num1    sdword  ?   ; first number
num2    sdword  ?   ; second number
num3    sdword  ?   ; third number
        .code
main    proc
        INVOKE printf, ADDR msg1fmt, ADDR msg0
        INVOKE scanf, ADDR infmt, ADDR num1
        INVOKE printf, ADDR msg0fmt, ADDR msg1
        INVOKE scanf, ADDR infmt, ADDR num2
        INVOKE printf, ADDR msg0fmt, ADDR msg2
        INVOKE printf, ADDR msg1fmt, ADDR msg3
        INVOKE scanf, ADDR infmt, ADDR num3
        INVOKE printf, ADDR msg2fmt, num1, ADDR msg4, num2, ADDR msg4, num3, ADDR msg4
        INVOKE printf, ADDR msg2fmt, num3, ADDR msg5, num2, ADDR msg5, num1, ADDR msg5
        ret 
main    endp
end