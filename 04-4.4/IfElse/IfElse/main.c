//
//  main.c
//  IfElse
//
//  Created by Felix Weiss on 05.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int i = 20;
    int j = 25;
    
    int k = (i > j) ? 10 : 5;
    
    if (5 < j - k) {
        printf("The first expression is true.");
    } else if (j > i) {
        printf("The second expression is true");
    } else {
        printf("Neither expression is true");
    }
}

