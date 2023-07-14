 ; Correção: 0,5
          .686
          .model  flat, c
          .stack  100h
printf    PROTO   arg1:Ptr Byte, printlist:VARARG
scanf     PROTO   arg2:Ptr Byte, inputlist:VARARG
          .data
msg1fmt   byte  "%s", 0
in1fmt    byte  "%x", 0
msg2fmt   byte  "%s%X", 0Ah, 0Ah, 0
msg1      byte  0Ah, "Enter a hexadecimal number: ", 0
msg2      byte  "The hexadecimal number is: ", 0
msgjam    byte  "PAPER JAM", 0Ah, 0    
msgmis    byte  "PAPER MISFEED", 0Ah, 0    
msgpemp   byte  "PAPER TRAY EMPTY", 0Ah, 0    
msglow    byte  "TONER LOW", 0Ah, 0    
msgtemp   byte  "TONER EMPTY", 0Ah, 0    
dsb       dword ?
          .code 
main      proc 

          INVOKE printf, ADDR msg1fmt, ADDR msg1
          INVOKE scanf, ADDR in1fmt, ADDR dsb
          INVOKE printf, ADDR msg2fmt, ADDR msg2, dsb

          .while dsb <= 01fh

          test dsb, 00000001b
          .if !ZERO?                ; if bit0 = 1 then
          INVOKE printf, ADDR msg1fmt, ADDR msgjam
          jmp endtest
          .endif

          test dsb, 00000010b
          .if !ZERO?                ; if bit1 = 1 then
          INVOKE printf, ADDR msg1fmt, ADDR msgmis
          jmp endtest
          .endif

          test dsb, 00000100b
          .if !ZERO?                ; if bit2 = 1 then
          INVOKE printf, ADDR msg1fmt, ADDR msgpemp
          jmp endtest
          .endif

          test dsb, 00001000b
          .if !ZERO?                ; if bit3 = 1 then
          INVOKE printf, ADDR msg1fmt, ADDR msglow
          jmp endtest
          .endif
  
          test dsb, 00010000b
          .if !ZERO?                ; if bit4 = 1 then
          INVOKE printf, ADDR msg1fmt, ADDR msgtemp
          jmp endtest
          .endif

endtest:  nop

          INVOKE printf, ADDR msg1fmt, ADDR msg1
          INVOKE scanf, ADDR in1fmt, ADDR dsb
          INVOKE printf, ADDR msg2fmt, ADDR msg2, dsb

          .endw
          ret
main      endp
          end