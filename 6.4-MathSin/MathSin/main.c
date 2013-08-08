//
//  main.c
//  MathSin
//
//  Created by Felix Weiss on 08.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#include <stdio.h>
#include <math.h>

int main(int argc, const char * argv[])
{
    float x = 1.00;
    float sinVal = sin(x);
    printf("Sine of %.2f measured in radian is %.3f \n", x, sinVal);
}

