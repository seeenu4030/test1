#include <stdio.h>
#include "add.h"
#include "sub.h"

int main() {
    int a = 10, b = 3;

    int sum = add(a, b);
    int diff = sub(a, b);

    printf("Sum = %d\n", sum);
    printf("Sub = %d\n", diff);

    return 0;
}
