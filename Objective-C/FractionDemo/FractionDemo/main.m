//
//  main.m
//  FractionDemo
//
//  Created by Shipra Behera on 2019/04/14.
//  Copyright © 2019 CodeWithShipra. All rights reserved.
//
#import "Fraction.h"


int main(int argc, const char * argv[]) {
    
    // Create an instance of Fraction
    Fraction *myFraction;
    
    /*
     allocate memory for the instance and initialize it
     alloc is a class method inherited from NSObject
     */
    myFraction = [[Fraction alloc] init];
    
    // Set myFraction to 2/5
    [myFraction setNumerator:2];
    [myFraction setDenominator:5];
    
    // Display the value of myFraction
    [myFraction display];

    return 0;
}
