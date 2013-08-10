//
//  main.c
//  BMIcalc
//
//  Created by Felix Weiss on 10.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#include <stdio.h>

typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person p)
{
    return p.weightInKilos / (p.heightInMeters * p.heightInMeters);
}

int main(int argc, const char * argv[])
{
    Person felix;
    felix.weightInKilos = 82;
    felix.heightInMeters = 1.8;
    
    printf("felix weights %i kilogramms \n", felix.weightInKilos);
    printf("felix is %.2f meters tall \n", felix.heightInMeters);

    float bmi = bodyMassIndex(felix);
    printf("felix has a BMI of %.2f \n", bmi);
    
    return 0;
}

