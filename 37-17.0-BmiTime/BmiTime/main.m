//
//  main.m
//  BmiTime
//
//  Created by Felix Weiss on 16.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        // Creates an instance of Person
        Person *person = [[Person alloc] init];
        
        [person setWeightInKilos:96];
        [person setHeightInMeters:1.8];
        
        float bmi = [person bodyMassIndex];
        NSLog(@"person (%d, %.2f) has a BMI of %.2f", [person weightInKilos], [person heightInMeters], bmi);
        
        // Dotnotation
        // person.weightInKilos = 96;
        // person.heightInMeters = 1.8;
        // float bmi = person.bodyMassIndex;
        // NSLog(@"person (%d, %.2f) has a BMI of %.2f", person.weightInKilos, person.heightInMeters, bmi);
        
    }
    return 0;
}

