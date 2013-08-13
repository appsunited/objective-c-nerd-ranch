//
//  main.m
//  LifeInSeconds
//
//  Created by Felix Weiss on 13.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1976];
        [comps setMonth:4];
        [comps setDay:2];
        [comps setHour:5];
        [comps setMinute:15];
        [comps setSecond:0];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        NSDate *now = [NSDate date];
        
        double liveInSeconds = [now timeIntervalSinceDate:dateOfBirth];
        NSLog(@"I am living already for %.2f seconds!", liveInSeconds);
    }
    return 0;
}

