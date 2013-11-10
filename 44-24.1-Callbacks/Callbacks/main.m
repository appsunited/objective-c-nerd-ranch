//
//  main.m
//  Callbacks
//
//  Created by Felix Weiß on 10.11.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Logger.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Logger *logger = [Logger new];

        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0
                                                                   target:logger
                                                                 selector:@selector(sayOuch:)
                                                                 userInfo:nil
                                                                  repeats:YES];
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}

