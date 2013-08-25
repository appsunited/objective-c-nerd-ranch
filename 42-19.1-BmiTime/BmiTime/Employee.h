//
//  Employee.h
//  BmiTime
//
//  Created by Felix Weiß on 21.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#import "Person.h"
@class Asset;

@interface Employee : Person
{
    int employeeID;
    NSMutableArray *assets;
}

@property int employeeID;

- (void)addAssetsObject:(Asset *)a;
- (unsigned int)valueOfAssets;

@end
