//
//  main.m
//  MutableArray
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
        
        // Create empty array
        NSMutableArray *dateList = [NSMutableArray array];
        
        // Add elements
        [dateList addObject:now];
        [dateList addObject:tomorrow];
        
        // Insert element in first position
        [dateList insertObject:yesterday atIndex:0];
        
        for (NSDate *d in dateList) {
            NSLog(@"Here is a date: %@", d);
        }
        
        // Remove element yesterday
        [dateList removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@", [dateList objectAtIndex:0]);
    }
    return 0;
}

