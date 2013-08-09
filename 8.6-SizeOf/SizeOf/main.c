//
//  main.c
//  SizeOf
//
//  Created by Felix Weiss on 09.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    printf("size of float is %zu \n", sizeof(float));       // 32 bit
    printf("size of int is %zu \n", sizeof(int));           // 16 bit
    printf("size of short is %zu \n", sizeof(short));       // 16 bit
    printf("size of char is %zu \n", sizeof(char));         // 8 bit
    return 0;
    
    // +/- sign = 1 bit
    // 16 bit - 1 bit = 15 bit
    // 15 bit = 32768
    // signed short: -32768 to +32768
    // unsigned short = 65536
}

