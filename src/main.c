#include "magic.h"
#include "magic2.h"
#include <stdio.h>

extern const char msg[];

int main()
{
    printf("%s", msg);
    printf("The magic number is: %d\n", MAGIC_NUMBER);
    printf("The magic number 2 is: %d\n", MAGIC_NUMBER_2);
    return 0;
}