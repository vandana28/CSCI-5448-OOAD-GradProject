//
//  main.m
//  VehicleDemo
//
//  Created by Shipra Behera on 2019/04/14.
//  Copyright © 2019 CodeWithShipra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vehicle.h"
#import "Car.h"
#import "Motorcycle.h"
#import "Truck.h"
int main(int argc, const char * argv[]) {
    #define NSLog(FORMAT, ...) fprintf(stderr, "%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
    NSMutableArray *vehicles;
    vehicles = [[NSMutableArray alloc] init];
    
    //Create a car.
    Car *mustang = [[Car alloc] init];
    mustang.brandName = @"Ford";
    mustang.modelName = @"Mustang";
    mustang.modelYear = 1968;
    mustang.isConvertible = YES;
    mustang.isHatchback = NO;
    mustang.hasSunroof = NO;
    mustang.numberOfDoors = 2;
    mustang.powerSource = @"gas engine";
    
    [vehicles addObject:mustang];
    
    //Create a motorcycle
    Motorcycle *harley = [[Motorcycle alloc] init];
    harley.brandName = @"Harley-Davidson";
    harley.modelName = @"Softail";
    harley.modelYear = 1979;
    harley.engineNoise = @"Vrrrrrrrroooooooooom!";
    
    //Add it to the array.
    [vehicles addObject:harley];
    
    //Create a truck
    Truck *silverado = [[Truck alloc] init];
    silverado.brandName = @"Chevrolet";
    silverado.modelName = @"Silverado";
    silverado.modelYear = 2011;
    silverado.numberOfWheels = 4;
    silverado.cargoCapacityCubicFeet = 53;
    silverado.powerSource = @"gas engine";
    
    //Add it to the array
    [vehicles addObject:silverado];
    NSInteger i = 1;
    for (Vehicle* obj in vehicles) {
        NSLog(@"");
        NSLog(@"############## Vehicle number %ld #############", i);
        //display the object details
        [obj displayDetails];
        i = i+1;
        NSLog(@"");
        //Polymorphism
        //make the vehicle do something
        [obj goForward];
        [obj goBackward];
        [obj makeNoise];
        [obj stopMoving];
    }
    return 0;
}

