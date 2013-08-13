//
//  main.c
//  Heap
//
//  Created by Felix Weiss on 13.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person *p)
{
    // p->member is a shortcut to (*p).member
    return p->weightInKilos / (p->heightInMeters * p->heightInMeters);
}

int main(int argc, const char * argv[])
{
    Person *x = (Person *)malloc(sizeof(Person)); // also works: Person *x = malloc(sizeof(Person));
    
    x->weightInKilos = 81;
    x->heightInMeters = 2.0;
    
    float xBMI = bodyMassIndex(x);
    printf("x has a BMI of = %f \n", xBMI);
    
    free(x);
    x = NULL;
    
    return 0;
}

