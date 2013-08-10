//
//  main.c
//  PBR
//
//  Created by Felix Weiss on 10.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#include <stdio.h>
#include <math.h>

int main(int argc, const char * argv[])
{
    double pi = 3.14;
    double integerPart;
    double fractionPart;
    
    // passes the address of integerPart as argument
    fractionPart = modf(pi, &integerPart);
    
    printf("integerPart = %.2f, fractionPart = %.2f \n", integerPart, fractionPart);
    return 0;
}

