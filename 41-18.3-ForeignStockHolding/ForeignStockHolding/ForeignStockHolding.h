//
//  ForeignStockHolding.h
//  ForeignStockHolding
//
//  Created by Felix Weiß on 21.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#import "StockHolding.h"

@interface ForeignStockHolding : StockHolding

@property float conversionRate;

- (StockHolding *)stock:(float)purchasedPrice :(float)currentPrice :(int)numberShares :(float)conversionRate;

@end
