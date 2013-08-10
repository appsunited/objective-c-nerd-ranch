//
//  main.c
//  FoundOne
//
//  Created by Felix Weiss on 09.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int i;
    for (i = 99; i > 0; i-=3) {
        printf("%d \n", i);
        if (i % 5 == 0) {
            printf("Found one! \n");
        }
    }
    return 0;
}

