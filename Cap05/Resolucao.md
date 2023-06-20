### Questão 01

        a) Incorreto pois não existe o (.for) e (.endfor) no MASM

        b) Incorreto, falta o . da diretiva .while e no mesmo while está ocorrendo dois acessos à memória simultaneamente.

        c) Correto

        d) Incorreto, pois o .repeat e .ultilcxz utiliza o ecx como contador. A diretiva .untiledx não existe.

        e) Incorreto pois no ASM ultiliza-se o .repeat e .until.

------
### Questão 02
```asm
            mov i, 1
while01:    cmp i, 3
            jg endw01
            ;body of loop
            inc i 
            jmp while01
endw01:     nop
```
------
### Questão 03

        a) O loop ocorrerá 3 vezes

        b) O trecho de código não irá se repetir, será executado apenas a primeira vez

        c) O trecho não será executado nenhuma vez.

