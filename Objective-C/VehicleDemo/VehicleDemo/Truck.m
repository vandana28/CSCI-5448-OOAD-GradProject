//
//  Truck.m
//  VehicleDemo
//
//  Created by Shipra Behera on 2019/04/15.
//  Copyright © 2019 CodeWithShipra. All rights reserved.
//

#import "Truck.h"

@implementation Truck
#define NSLog(FORMAT, ...) fprintf(stderr, "%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#pragma mark - Private method implementations
-(NSString *)start
{
    return [NSString stringWithFormat:@"Start power source %@.", self.powerSource];
}

#pragma mark - Superclass Overrides
-(void) goForward
{
    [super goForward];
    NSLog(@"Depress gas pedal.");
    [self changeGears:@"Drive"];
    
}

-(void) goBackward
{
    [super goBackward];
    if (self.cargoCapacityCubicFeet > 100) {
        //Sound a backup alarm first
        NSLog(@"Wait for \"%@\"", [self soundBackupAlarm]);
        [self changeGears:@"Reverse"];
    } else {
        NSLog(@"Depress gas pedal.");
        [self changeGears:@"Reverse"];
    }
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
    if (self.numberOfWheels <= 4) {
        NSLog(@"Beep beep!");
    } else if (self.numberOfWheels > 4 && self.numberOfWheels <= 8) {
        NSLog(@"Honk!");
    } else {
        NSLog(@"HOOOOOOOOONK!");
    }
}

-(void) displayDetails
{
    //Get basic details from superclass
    [super displayDetails];
    NSLog(@"Truck specific details are: ");
    NSLog(@"Cargo capacity is %ld", self.cargoCapacityCubicFeet);
}


#pragma mark - Private methods
-(NSString *)soundBackupAlarm
{
    return @"Beep! Beep! Beep! Beep!";
}

@end

