//
//  StockHolding.h
//  Stocks
//
//  Created by Felix Weiss on 18.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StockHolding : NSObject

@property float purchaseSharePrice, currentSharePrice;
@property int numberOfShares;

- (float) costInDollars;
- (float) valueInDollars;
- (StockHolding *)stock:(float)purchasedPrice :(float)currentPrice :(int)numberShares;

@end
