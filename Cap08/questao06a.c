#include <stdio.h>

void main(){
    int array[] = {9, 5, 7, 1, 3, 2, 6, 4, 8, 10};
    int size = sizeof(array) / sizeof(array[0]);

    printf("Array antes do Bubble Sort: ");
    for (int i = 0; i < size; i++) {
        printf("%d ", array[i]);
    }
    printf("\n");


    for (int i = 0; i < size - 1; i++) {
        for (int j = 0; j < size - i - 1; j++) {
            if (array[j] > array[j + 1]) {
                int temp = array[j];
                array[j] = array[j + 1];
                array[j + 1] = temp;
            }
        }
    }


    printf("Array depois do Bubble Sort: ");
    for (int i = 0; i < size; i++) {
        printf("%d ", array[i]);
    }
    printf("\n");

    return;
}