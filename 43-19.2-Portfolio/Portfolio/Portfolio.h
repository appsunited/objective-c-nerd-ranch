//
//  Portfolio.h
//  Portfolio
//
//  Created by Felix Weiss on 01.09.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

@interface Portfolio : NSObject
{
    NSMutableArray *portfolioObjects;
}

- (float)portfolioValue;
- (void)addStock:(StockHolding *)s;

@end
