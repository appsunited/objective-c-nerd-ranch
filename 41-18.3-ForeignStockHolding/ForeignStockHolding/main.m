//
//  main.m
//  ForeignStockHolding
//
//  Created by Felix Weiss on 21.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ForeignStockHolding.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        StockHolding *google = [[StockHolding alloc] init];
        StockHolding *ebay = [[StockHolding alloc] init];
        ForeignStockHolding *googleF = [[ForeignStockHolding alloc] init];
        ForeignStockHolding *ebayF = [[ForeignStockHolding alloc] init];
        
        [google stock:398.21 :768.59 :10];
        [googleF stock:398.21 :768.59 :10 :0.7482];
        
        [ebay stock:36.11 :57.46 :75];
        [ebayF stock:36.11 :57.46 :75 :0.7482];
        
        NSArray *allStocks = [NSArray arrayWithObjects:google, ebay, googleF, ebayF, nil];
        
        // Aaron Hillegass recommends to use StockHolding to keep it general.
        for (StockHolding *s in allStocks) {
            NSLog(@"costs: %.2f, value: %.2f", [s costInDollars], [s valueInDollars]);
        }
    }
    
    return 0;
}

