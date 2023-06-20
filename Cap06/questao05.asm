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
msgfire   byte  "FIRE ALARM", 0Ah, 0    
msgcarb   byte  "CARBON MONOXIDE", 0Ah, 0    
msgppout  byte  "POWER OUTAGE", 0Ah, 0    
msggun    byte  "GATE UNLOCKED", 0Ah, 0    
msgdoor   byte  "DOOR OPEN", 0Ah, 0  
msgwind   byte  "WINDOW OPEN", 0Ah, 0    
dsb       dword ?
          .code 
main      proc 

          INVOKE printf, ADDR msg1fmt, ADDR msg1
          INVOKE scanf, ADDR in1fmt, ADDR dsb
          INVOKE printf, ADDR msg2fmt, ADDR msg2, dsb

          .while dsb <= 03fh

          test dsb, 00000001b
          .if !ZERO?                ; if bit0 = 1 then
          INVOKE printf, ADDR msg1fmt, ADDR msgfire
          .endif

          test dsb, 00000010b
          .if !ZERO?                ; if bit1 = 1 then
          INVOKE printf, ADDR msg1fmt, ADDR msgcarb
          .endif

          test dsb, 00000100b
          .if !ZERO?                ; if bit2 = 1 then
          INVOKE printf, ADDR msg1fmt, ADDR msgppout
          .endif


          test dsb, 00000111b       ; pula se algum caso anterior tenha ocorrido
          .if !ZERO?
          jmp endtest
          .endif


          test dsb, 00001000b
          .if !ZERO?                ; if bit3 = 1 then
          INVOKE printf, ADDR msg1fmt, ADDR msggun
          .endif
  
          test dsb, 00010000b
          .if !ZERO?                ; if bit4 = 1 then
          INVOKE printf, ADDR msg1fmt, ADDR msgdoor
          .endif

          test dsb, 00100000b
          .if !ZERO?                ; if bit4 = 1 then
          INVOKE printf, ADDR msg1fmt, ADDR msgwind
          .endif

endtest:  nop

          INVOKE printf, ADDR msg1fmt, ADDR msg1
          INVOKE scanf, ADDR in1fmt, ADDR dsb
          INVOKE printf, ADDR msg2fmt, ADDR msg2, dsb

          .endw
          ret
main      endp
          end