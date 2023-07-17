// sem a versão float
#include <stdio.h>
int main() {
  
  long double x,y;
  
  printf("\n%s", "Enter a double for x: ");
  scanf_s("%Lf", &x);
  
  __asm {
    fld x
    fstp y
  }

  printf("\n%s%6.4Lf\n\n", "The double in y is: ", y);

  return 0;
}
