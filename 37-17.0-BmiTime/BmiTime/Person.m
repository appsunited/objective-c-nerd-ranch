//
//  Person.m
//  BmiTime
//
//  Created by Felix Weiss on 16.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#import "Person.h"

@implementation Person

- (float)heightInMeters
{
    return heightInMeters;
}
- (void)setHeightInMeters:(float)h
{
    heightInMeters = h;
}
- (int)weightInKilos
{
    return weightInKilos;
}
- (void)setWeightInKilos:(int)w;
{
    weightInKilos = w;
}

- (float)bodyMassIndex
{
    return weightInKilos / (heightInMeters * heightInMeters);
}

@end
