//
//  Portfolio.m
//  Portfolio
//
//  Created by Felix Weiss on 01.09.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#import "Portfolio.h"

@implementation Portfolio

- (float)portfolioValue
{
    float sum = 0;
    
    for (StockHolding *p in portfolioObjects) {
        sum += [p valueInDollars];
    }
    return sum;
}

- (void)addStock:(StockHolding *)s
{
    if (!portfolioObjects) {
        portfolioObjects = [[NSMutableArray alloc] init];
    }
    [portfolioObjects addObject:s];
}

@end
