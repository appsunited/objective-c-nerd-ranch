//
//  main.m
//  Groceries
//
//  Created by Felix Weiss on 15.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *apple = @"Apple";
        NSString *orange = @"Orange";
        NSString *peach = @"Peach";
        
        NSMutableArray *groceries = [NSMutableArray array];
        
        [groceries addObject:apple];
        [groceries addObject:orange];
        [groceries addObject:peach];
        
        for (NSString *g in groceries) {
            NSLog(@"%@", g);
        }
    }
    return 0;
}

