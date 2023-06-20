# Cap 01
> Correção: 1,9

1. Which of the following are syntactically correct variable names in assembly
language?
> Correção: 0,4
- A. RX8   

        CORRETA
- B. 325i       

        INCORRETA, não pode iniciar com número
- C. Total$     

        CORRETA
- D. @1234      

        CORRETA*, porém é recomendado começar por letra
- E. $1000      

        CORRETA*, porém é recomendado começar por letra
- F. Pi3.14     

        INCORRETA, não pode haver ponto decimal.

----- 
<br>

2. Implement each of the following declarations in assembly language:
> Correção: 0,4
- A. char initial;
        
        initial byte ?

- B. char grade = 'B';
        
        grade byte 'B'

- C. char x = 'P', y = 'Q';
    
        x byte 'P'
        y byte 'Q'

- D. int amount;
    
        amount sdword ?

- E. int count = 0;
    
        count sdword 0

- F. int number = -396;
    
        number sdword -396

----- 
<br>

3. Assuming that the variables have been declared properly, indicate whether the
following statements are syntactically correct or incorrect. If incorrect, indicate
what is wrong with the statement:
> Correção: 0,4
- A. move cat,5 
    
        INCORRETA, se escreve MOV
- B. mov dog,cat 
    
        INCORRETA, está acessando dois espaços de memoria simultaneamente
- C. mov eax,ebx
    
        CORRETA
- D. mov mouse,-7 
    
        CORRETA
- E. mov 1,frog 
    
        INCORRETA, não é possível mover um espaço de memória para um valor imediato
- F. mov horse,ecx
    
        CORRETO
- G. mov rat,-eax 
        
        INCORRETO, só pode haver sinais em valores imediatos
- H. mov edx,2
        
        CORRETO

----- 
<br>
4. Assuming all the variables are declared as sdword, write assembly language
instructions to implement each of the following C statements or segments:

> Correção: 0,3

- A. i = 1;

        MOV i, 1

- B. x = y;
> Correção: aqui você fez y = x, não x = y.

        MOV eax, x
        MOV y, eax

- C. c = 2; 
     b = c;
     a = b;

        MOV c_, 2
        MOV eax, c_
        MOV b, eax
        MOV a, eax

- D. x = y = 1;

        MOV x, 1
        MOV y, 1

- E. a = 1;
     b = 2;
     c = a;
     a = b; 
     b = c;

        MOV a, 1
        MOV b, 2
        MOV eax, a
        MOV c_, eax
        MOV eax, b
        MOV a, eax
        MOV eax, c_
        MOV b, eax

----- 
<br>
5. Assuming all the variables are declared as byte, write assembly language
instructions to implement each of the following C statements or segments:

> Correção: 0,4

- A. a = 'B';

        MOV a, 'B'

- B. b = c;

        MOV al, c_
        MOV b, al

- C. d = 'E';
    e = d;

        MOV d, 'E'
        MOV al, d
        MOV e, al

- D. d = 'z';
    a = d;
    b = a;

        MOV d, 'Z'
        MOV al, d
        MOV a, al
        MOV b, al

- E. a = '2';
    b = '?';
    a = b;

        MOV a, '2'
        MOV b, '?'
        MOV al, b
        MOV a, al
