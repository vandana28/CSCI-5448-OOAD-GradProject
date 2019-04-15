//
//  Car.h
//  VehicleDemo
//
//  Created by Shipra Behera on 2019/04/15.
//  Copyright © 2019 CodeWithShipra. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Vehicle.h"

@interface Car : Vehicle

@property BOOL isConvertible;
@property BOOL isHatchback;
@property BOOL hasSunroof;
@property NSInteger numberOfDoors;

@end

