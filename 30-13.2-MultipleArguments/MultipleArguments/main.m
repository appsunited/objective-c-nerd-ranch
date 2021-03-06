//
//  main.m
//  MultipleArguments
//
//  Created by Felix Weiss on 15.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Same as: NSDate *now = [[NSDate alloc] init];
        NSDate *now = [NSDate date];
        
        // Pointer to simple objects can be derefrenced with the * operator.
        // Complex Objective-C object can't be accessed using the derefrencing operator.
        NSLog(@"The new date lives at %p", now);
        NSLog(@"The date is %@", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970.", seconds);
        
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000 seconds it will be %@", later);
        
        // NSUInteger: unsigned integer
        // ordinalityOfUnit: ordinal number of a smaller calendar unit (such as a day) within a specified larger calendar unit (such as a week)
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSUInteger day = [cal ordinalityOfUnit:NSDayCalendarUnit inUnit:NSMonthCalendarUnit forDate:now];
        NSLog(@"This is day %lu of the month", day);
        
    }
    return 0;
}

