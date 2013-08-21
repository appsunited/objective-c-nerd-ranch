//
//  main.m
//  BmiTime
//
//  Created by Felix Weiss on 16.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        // Employee inherits from Person.
        // Person *person = [[Employee alloc] init];
        
        // To use the method setEmployeeID, the type 'Employee' is needed.
        Employee *person = [[Employee alloc] init];
        
        [person setWeightInKilos:96];
        [person setHeightInMeters:1.8];
        [person setEmployeeID:15];
        
        float bmi = [person bodyMassIndex];
        NSLog(@"Employee %d has a BMI of %.2f",[person employeeID], bmi);
        
    }
    return 0;
}

