//
//  Motorcycle.m
//  VehicleDemo
//
//  Created by Shipra Behera on 2019/04/15.
//  Copyright © 2019 CodeWithShipra. All rights reserved.
//

#import "Vehicle.h"
#import "Motorcycle.h"

@implementation Motorcycle
#define NSLog(FORMAT, ...) fprintf(stderr, "%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#pragma mark - Initialization
-(id)init
{
    if (self = [super init]) {
        self.numberOfWheels = 2;
        self.powerSource = @"gas engine";
    }
    
    return self;
}

#pragma mark - Superclass Overrides
-(void) goForward
{
    [super goForward];
    NSLog(@"Open throttle.");
    [self changeGears:@"Forward"];
}

-(void) goBackward
{
    [super goBackward];
    [self changeGears:@"Neutral"];
    NSLog(@"Walk %@ backwards using feet.", self.modelName);
}

-(void) stopMoving
{
    [super stopMoving];
    NSLog(@"Squeeze brakes");
}

-(void) makeNoise
{
    [super makeNoise];
    NSLog(@"%@", self.engineNoise);
}

-(void) displayDetails
{
    //Get basic details from superclass
    [super displayDetails];
    NSLog(@"Motorcycle specific details are: ");
    NSLog(@"Engine noise %@", self.engineNoise);
}

@end
