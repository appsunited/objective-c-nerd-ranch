//
//  ForeignStockHolding.m
//  ForeignStockHolding
//
//  Created by Felix Weiß on 21.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#import "ForeignStockHolding.h"

@implementation ForeignStockHolding

@synthesize conversionRate;

- (float)costInDollars
{
    float convertedCosts = [super costInDollars] * conversionRate;
    return convertedCosts;
}

-(float)valueInDollars
{
    float convertedValue = [super valueInDollars] * conversionRate;
    return convertedValue;
}

// Additional parameter convertRate
- (StockHolding *)stock:(float)purchasedPrice :(float)currentPrice :(int)numberShares :(float)convertRate
{
    [self setPurchaseSharePrice:purchasedPrice];
    [self setCurrentSharePrice:currentPrice];
    [self setNumberOfShares:numberShares];
    [self setConversionRate:convertRate];
    
    return self;
}

@end
