//
//  Employee.m
//  BmiTime
//
//  Created by Felix Weiss on 21.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#import "Employee.h"

@implementation Employee

@synthesize employeeID;

// Overwrites bodyMassIndes in Person.
// Employee inherits from Person, no further declaration in Employee is needed.
- (float)bodyMassIndex
{
    // In this case super is Person.
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}


@end