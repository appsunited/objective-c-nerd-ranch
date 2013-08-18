//
//  Person.h
//  BmiTime
//
//  Created by Felix Weiss on 16.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    // Instance variables
    float heightInMeters;
    int weightInKilos;
}

- (float)heightInMeters;
- (void)setHeightInMeters:(float)h;
- (int)weightInKilos;
- (void)setWeightInKilos:(int)w;

-(float)bodyMassIndex;
@end
