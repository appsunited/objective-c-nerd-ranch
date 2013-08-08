//
//  main.c
//  Turkey
//
//  Created by Felix Weiss on 05.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    float weight = weight = 14.2;
    printf("The turkey weights %f.\n", weight);
    
    float cookingTime = 15.0 + 15.0 * weight;
    printf("Cook it for %f minutes.\n", cookingTime);
    
    return 0;
}

