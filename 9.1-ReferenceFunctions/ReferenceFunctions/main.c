//
//  main.c
//  ReferenceFunctions
//
//  Created by Felix Weiss on 10.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void cartesianToPolar(float x, float y, double *rPtr, double *thetaPtr)
{
    // always check pointers
    if (rPtr) {
        // save radius to the given address
        *rPtr = sqrt(x * x + y * y);
    }

    // always check pointers
    if (!thetaPtr) {
        return;
    }
    
    // calculate theta
    float theta;
    if (x == 0.0) {
        if (y == 0.0) {
            theta = 0.0;
        } else if (y > 0) {
            theta = M_PI_2;
        } else {
            theta = -M_PI_2;
        }
    } else {
        theta = atan(y/x);
    }
    // save theta to the given address
    *thetaPtr = theta;
}

int main(int argc, const char * argv[])
{
    double pi = 3.14;
    double integerPart;
    double fractionPart;
    
    // pass the address of integerPart as argument
    fractionPart = modf(pi, &integerPart);
    
    printf("integerPart = %.2f, fractionPart = %.2f \n", integerPart, fractionPart);
    
    double x = 3.0;
    double y = 4.0;
    double radius;
    double angle;
    
    cartesianToPolar(x, y, &radius, &angle);
    printf("(%.2f, %.2f) becomes (%.2f radians, %.2f) \n", x, y, radius, angle);
    
    return 0;
}

