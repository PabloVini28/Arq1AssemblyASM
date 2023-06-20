## QUESTIONÁRIO 03

> Correção: 2,0

### QUESTÃO 01:

> Correção: 0,5

        A - INCORRETA, POIS O COMANDO "inc" É UNÁRIO, OU SEJA, SÓ NECESSITA DE UMA VARÍAVEL PARA  INCREMENTAR
        B - CORRETA
        C - INCORRETA, POIS ESTÁ ACESSANDO DOIS LOCAIS DE MEMÓRIA AO MESMO TEMPO
        D - INCORRETA, POIS O COMANDO "idiv" NECESSITA QUE O DIVISOR ESTEJA EM UM REGISTRADOR OU LOCAL DA MEMÓRIA
        E - INCORRETA, POIS É IMPOSSÍVEL SUBTRAIR DE UM VALOR IMEDIATO
        F - CORRETA


------
 ### QUESTÃO 02:       

> Correção: 0,5

A:

        mov eax,3
        imul number
        mov product,eax
B:

        mov eax,number
        cdq
        idiv amount
        mov result,edx

C:

        mov eax,number
        mov ebx,2
        cdq 
        idiv ebx
        mov answer,eax

D:

        mov eax,4
        sub eax,number
        mov difference,eax


------
### QUESTÃO 03:

> Correção: 0,5

A:      

        mov eax, x
        imul y
        mov ecx,eax
        mov eax,z
        mov ebx,2
        imul ebx
        add ecx,eax
        mov x,ecx

B:

        mov eax,c
        mov ebx,3
        cdq
        idiv ebx
        mov ebx,b
        sub ebx,eax
        mov a,ebx

C:

        mov eax,num3
        imul num4
        mov ebx,eax
        mov eax,num1
        cdq
        idiv num2
        sub eax,ebx
        mov total,eax

D:

        mov ebx,s
        neg ebx
        mov eax, ebx
        add eax, t
        mov r, eax
        inc t

E:

        mov eax,i
        sub eax, j
        imul k
        imul n
        mov m,eax

F:

        mov eax,c
        cdq
        idiv d
        imul e
        sub eax,b
        add eax,a
        mov q,eax


-------
### QUESTÃO 04:

> Correção: 0,5

A:

        dec i

B:

        inc k
        mov eax,k
        sub eax, m
        mov j,eax

C:

        mov eax,x
        add eax,y
        neg eax
        mov z,eax

D:

        inc b
        mov eax,b
        sub eax,c
        inc c
        mov a,eax

E:

        mov eax,y
        neg eax
        add eax,z
        dec z
        mov x,eax


-------
### QUESTÃO 05:
Arquivo questao05.asm


-------
### QUESTÃO 06:
Arquivo questao06.asm


-------
### QUESTÃO 07:
Arquivo questao07.asm




       




