//
//  main.c
//  Addresses
//
//  Created by Felix Weiss on 09.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int i = 17;
    printf("i stores its value at %p \n", &i);
    printf("this function starts at %p \n", main);
    return 0;
}

