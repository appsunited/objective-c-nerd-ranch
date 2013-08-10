//
//  main.c
//  Continue
//
//  Created by Felix Weiss on 09.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int i;
    for (i = 0; i < 12; i++) {
        if (i % 3 == 0) {
            continue;
        }
        printf("Checking i = %d \n", i);
        if (i + 90 == i * i) {
            break;
        }
    }
    printf("The answere is %d \n", i);
    return 0;
}

