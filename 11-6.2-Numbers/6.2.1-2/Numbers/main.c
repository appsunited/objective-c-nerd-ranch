//
//  main.c
//  Numbers
//
//  Created by Felix Weiss on 07.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    long x = 255;
    printf("x is %ld\n", x);
    printf("In octal, x is %lo\n", x);
    printf("In hexadecimal, x is %lx\n", x);
    return 0;
}

