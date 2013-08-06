//
//  main.c
//  Triangle
//
//  Created by Felix Weiss on 06.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#include <stdio.h>

float remainingAngle(angleA, angleB)
{
    float angleC = 180.0 - angleA - angleB;
    return angleC;
}

int main(int argc, const char * argv[])
{
    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    printf("The third angle is %f degree", angleC);
    return 0;
}

