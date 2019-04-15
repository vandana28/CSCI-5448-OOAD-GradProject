//
//  Car.m
//  VehicleDemo
//
//  Created by Shipra Behera on 2019/04/15.
//  Copyright © 2019 CodeWithShipra. All rights reserved.
//

#import "Car.h"

@implementation Car
#define NSLog(FORMAT, ...) fprintf(stderr, "%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
-(id)init
{
    if (self = [super init]) {
        //Since all cars have four wheels, we can safely set this for every initialized instance
        //of a car.
        self.numberOfWheels = 4;
    }
    
    return self;
}

#pragma mark - Superclass Overrides
-(void) goForward
{
    [super goForward];
    NSLog(@"Start power source %@.", self.powerSource);
    [self changeGears:@"Forward"];
    NSLog(@"Then depress gas pedal.");
}

-(void) goBackward
{
    [super goBackward];
    NSLog(@"Start power source %@.", self.powerSource);
    [self changeGears:@"Reverse"];
    NSLog(@"Check your rear view mirror. Then depress gas pedal.");
}

-(void) stopMoving
{
    [super stopMoving];
    NSLog(@"Depress gas pedal.");
    [self changeGears:@"Park"];
}

-(void) makeNoise
{
    [super makeNoise];
    NSLog(@"Beep beep!");
}

-(void) displayDetails
{
    //Get basic details from superclass
    [super displayDetails];
    NSLog(@"Car specific details are: ");
    NSLog(@"Number of doors are %ld", self.numberOfDoors);
    NSLog(@"Is it convertible? %@",self.isConvertible ? @"YES" : @"NO");
    NSLog(@"Is it hatchback? %@",self.isHatchback ? @"YES" : @"NO");
    NSLog(@"Does it have sunroof? %@",self.hasSunroof ? @"YES" : @"NO");
}

@end
