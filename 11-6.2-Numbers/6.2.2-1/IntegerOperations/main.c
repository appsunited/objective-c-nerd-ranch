//
//  main.c
//  IntegerOperations
//
//  Created by Felix Weiss on 07.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[])
{
    printf("3 * 3 + 5 * 2 = %d\n", 3 * 3 + 5 * 2);
    printf("11 / 3 = %d \n", 11 / 3);
    printf("11 / 3 = %d remaider of %d \n", 11 / 3, 11 % 3);
    printf("11 / 3 = %f \n", 11 / (float)3);
    printf("The absolut value of -5 is %d \n", abs(-5));
    return 0;
}

