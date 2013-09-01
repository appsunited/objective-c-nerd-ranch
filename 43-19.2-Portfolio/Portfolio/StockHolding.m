//
//  StockHolding.m
//  Stocks
//
//  Created by Felix Weiss on 18.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

@synthesize purchaseSharePrice, currentSharePrice, numberOfShares;

- (float)costInDollars
{
    return purchaseSharePrice * numberOfShares;
}

- (float)valueInDollars
{
    return currentSharePrice * numberOfShares;
}

- (StockHolding *)stock:(float)purchasedPrice :(float)currentPrice :(int)numberShares
{
    [self setPurchaseSharePrice:purchasedPrice];
    [self setCurrentSharePrice:currentPrice];
    [self setNumberOfShares:numberShares];
    
    return self;
}

@end
