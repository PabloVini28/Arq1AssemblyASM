## QUESTIONÁRIO 06

> Correção: 0,4. Na letra G), não existe o registrador _exc_.


### QUESTÃO 01

        A) CORRETO

        B) CORRETO

        C) INCORRETO, utiliza-se ROL ou ROR

        D) CORRETO

        E) CORRETO

        F) INCORRETO, Há dois acessos na memória

        G) CORRETO

        H) INCORRETO, o comando LOL não existe

        I) INCORRETO, não existe o comando SHIFT e nem se pode rotacionar imediato.


-----

### QUESTÃO 02

> Correção: 0,5

A)
```asm
mov ebx, total
sar ebx, 5
mov eax, num
sub eax, ebx
mov answer, eax
```

B)
```asm
mov eax, amount
add eax, number
sal eax, 2
mov result, eax
```

C)
```asm
mov eax, y
sal eax, 3
mov ebx, z
sar ebx, 1
add eax, ebx
mov x, eax
```

D)
```asm
mov eax, a
sar eax, 4
mov ebx, b
imul ebx, 3
sal ebx, 1          ;b*3*2 = b*6
sub eax, ebx
mov a, eax
```
-----
### QUESTÃO 03

> Correção: 0,5

```asm
push eax
push ebx
push ecx
push edx

pop eax
pop ebx
pop ecx
pop edx
```
-----
### 📎 QUESTÃO 4 E 5 EM ARQUIVO
