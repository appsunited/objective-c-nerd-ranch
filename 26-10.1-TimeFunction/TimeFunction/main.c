//
//  main.c
//  TimeFunction
//
//  Created by Felix Weiss on 10.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#include <stdio.h>
#include <time.h>

int main(int argc, const char * argv[])
{
    long secondsSince1970 = time(NULL);
    printf("It has been %ld seconds since 1970 \n", secondsSince1970);
    
    struct tm now;
    localtime_r(&secondsSince1970, &now);
    printf("The local time is %d:%d:%d \n", now.tm_hour, now.tm_min, now.tm_sec);
    
    // time in 4 million seconds
    long fms = time(NULL) + 4000000;
    struct tm future;
    localtime_r(&fms, &future);
    printf("In 4 million seconds will be the date: %d-%d-%d \n", future.tm_mday, future.tm_mon + 1, future.tm_year + 1900);
    
    return 0;
}

