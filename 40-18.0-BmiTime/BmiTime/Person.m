//
//  Person.m
//  BmiTime
//
//  Created by Felix Weiss on 16.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize heightInMeters, weightInKilos;

- (float)bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

@end
