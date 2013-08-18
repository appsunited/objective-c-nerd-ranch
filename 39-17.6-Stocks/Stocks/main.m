//
//  main.m
//  Stocks
//
//  Created by Felix Weiss on 18.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        StockHolding *google = [[StockHolding alloc] init];
        StockHolding *yahoo = [[StockHolding alloc] init];
        StockHolding *ebay = [[StockHolding alloc] init];
        
        [google stock:398.21 :768.59 :10];
        [yahoo stock:7.78 :28.67 :500];
        [ebay stock:36.11 :57.46 :75];
        
        NSArray *allStocks = [NSArray arrayWithObjects:google, yahoo, ebay, nil];
        
        for (StockHolding *s in allStocks) {
            NSLog(@"price: %.2f, current: %.2f, number: %d, costs: %.2f, value: %.2f", [s purchaseSharePrice], [s currentSharePrice], [s numberOfShares], [s costInDollars], [s valueInDollars]);
        }
    }
    return 0;
}

