#include <stdio.h>

void main(){ 
    
    int size;
    int vetor[100];

    printf("\nDigite o tamanho do vetor: ");
    scanf("%d", &size);

    printf("\nDigite o vetor (elementos separados por espaco ou enter): ");
    for(int i = 0; i < size; i++)
        scanf(" %d", &vetor[i]);
    
    printf("\nVetor desordenado: ");
    for (int i = 0; i < size; i++)
        printf("%d ", vetor[i]);

    for (int i = size-1; i >= 0; --i) {
        for (int j = i - 1; j >= 0; --j) {
            if (vetor[j] > vetor[j + 1]) {
                int temp = vetor[j];
                vetor[j] = vetor[j + 1];
                vetor[j + 1] = temp;
            }
        }
    }

    printf("\nVetor ordenado:    ");
    for (int i = 0; i < size; i++)
        printf("%d ", vetor[i]);
    
    printf("\n\n");
    return;
}