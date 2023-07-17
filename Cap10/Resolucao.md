### QUESTÃO 01 -

> Correção: 0,5

        A) Z = 8

        B) Z = 8

        C) Z = 4
        
        D) Z = 10


----

### QUESTÃO 02 -

> Correção: 0,3

#### A)
```asm
; answer = x – y + z;
; xy-z+

    fld x
    fld y
    fsub
    fld z
    fadd
    fstp answer
```

#### B)
```asm
; result = (w + x) / (y – z);
; wx+yz-/

    fld w
    fld x
    fadd
    fld y
    fld z
    fsub
    fdiv
    fstp result
```

#### C)
```asm
; info = a / b * c – d; 
; ab/c*d-

    fld a
    fld b
    fdiv
    fld c
    fmul
    fld d
    fsub
    fstp info
```

#### D)

> Correção: Aqui, pela ordem de avaliação, o _i_ e _j_ seria multiplicados primeiro. 

```asm
; data = i * j + (k / (m – n));
; kmn-/ij*+

    fld k
    fld m
    fld n
    fsub
    fdiv
    fld i 
    fld j 
    fmul
    fadd
    fstp data
```
----
### QUESTÃO 04 a 09 - EM ARQUIVO


        

