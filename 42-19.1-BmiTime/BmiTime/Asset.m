//
//  Asset.m
//  BmiTime
//
//  Created by Felix Weiss on 22.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#import "Asset.h"

@implementation Asset

@synthesize label, resaleValue;

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: $%d >", [self label], [self resaleValue]];
}

- (void) dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
