#include "calc.h"

void main(void)
{
    int32_t a = 200;
    int32_t b = 20;
    
    printf("Addition of a and b : %d\r\n",add(a,b));
    printf("Difference of a and b : %d\r\n",sub(a,b));
    printf("Multiplication of a and b : %d\r\n",mul(a,b));
    printf("Division of a by b : %d\r\n",div(a,b));

    return 0;
}