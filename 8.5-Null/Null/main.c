//
//  main.c
//  Null
//
//  Created by Felix Weiss on 09.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    // float x = 1.0;
    // float *myPointer = &x;
    
    float *myPointer;
    if (myPointer) {
        printf("true");
    } else {
        // myPointer is NULL
        printf("false");
    }
}

