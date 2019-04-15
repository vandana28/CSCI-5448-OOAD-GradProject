//
//  Vehicle.m
//  VehicleDemo
//
//  Created by Shipra Behera on 2019/04/14.
//  Copyright © 2019 CodeWithShipra. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle
#define NSLog(FORMAT, ...) fprintf(stderr, "%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
-(void) goForward
{
    NSLog(@"");
    NSLog(@"...Going forward...");
    NSLog(@"");
}

-(void) goBackward
{
    NSLog(@"");
    NSLog(@"...Going backward...");
    NSLog(@"");
}

-(void)stopMoving
{
    NSLog(@"");
    NSLog(@"...Stopping..");
    NSLog(@"");
}


-(void)changeGears:(NSString *)newGearName
{
    NSLog(@"Put %@ into %@ gear.", self.modelName, newGearName);
}

-(void)makeNoise
{
    NSLog(@"");
    NSLog(@"...Making noise...");
    NSLog(@"");
}
-(void) displayDetails
{
    NSLog(@"Vehicle Details are: ");
    NSLog(@"Number of wheels is %ld", self.numberOfWheels);
    NSLog(@"Brand name is %@", self.brandName);
    NSLog(@"Model name is %@", self.modelName);
    NSLog(@"Model year is %ld", self.modelYear);
    NSLog(@"Power source is %@", self.powerSource);
    NSLog(@"");
}

@end


