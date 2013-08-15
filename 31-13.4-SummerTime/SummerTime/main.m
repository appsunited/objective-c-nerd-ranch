//
//  main.m
//  SummerTime
//
//  Created by Felix Weiss on 15.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSTimeZone *timeZone = [NSTimeZone systemTimeZone];
        // NSTimeZone *timeZone = [[NSTimeZone alloc] init];
        // timeZone = [NSTimeZone systemTimeZone];
        
        if ([timeZone isDaylightSavingTime]) {
            NSLog(@"It's summertime!");
        } else {
            NSLog(@"It's wintertime!");
        }
        
    }
    return 0;
}

