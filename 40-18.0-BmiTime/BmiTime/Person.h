//
//  Person.h
//  BmiTime
//
//  Created by Felix Weiss on 16.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property float heightInMeters;
@property int weightInKilos;

-(float)bodyMassIndex;
@end
