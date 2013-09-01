//
//  main.m
//  Portfolio
//
//  Created by Felix Weiß on 01.09.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"
#import "Portfolio.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        StockHolding *google = [[StockHolding alloc] init];
        StockHolding *yahoo = [[StockHolding alloc] init];
        StockHolding *ebay = [[StockHolding alloc] init];
        
        [google stock:398.21 :768.59 :10];
        [yahoo stock:7.78 :28.67 :500];
        [ebay stock:36.11 :57.46 :75];
        
        Portfolio *webPortfolio = [[Portfolio alloc] init];
        
        [webPortfolio addStock:google];
        [webPortfolio addStock:yahoo];
        [webPortfolio addStock:ebay];
        [webPortfolio portfolioValue];
        
        NSLog(@"Portfolio value: %.2f", [webPortfolio portfolioValue]);
    }
    return 0;
}

