//
//  main.m
//  DateList
//
//  Created by Felix Weiss on 15.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval: 60 * 60 * 24];
        NSDate *yesterday = [now dateByAddingTimeInterval: 60 * 60 * -24];
        
        NSArray *dateList = [NSArray arrayWithObjects: now, tomorrow, yesterday, nil];
        
        NSLog(@"There are %lu dates", [dateList count]);
        NSLog(@"The first date is %@", [dateList objectAtIndex:0]);
        NSLog(@"The third date is %@", [dateList objectAtIndex:2]);
        
        // NSUInteger dateCount = [dateList count];
        // for (int i = 0; i < dateCount; i++) {
        //     NSDate *d = [dateList objectAtIndex:i];
        //     NSLog(@"Here is a date: %@", d);
        // }
        
        for (NSDate *d in dateList) {
            NSLog(@"Here is a date: %@", d);
        }
        
    }
    return 0;
}

