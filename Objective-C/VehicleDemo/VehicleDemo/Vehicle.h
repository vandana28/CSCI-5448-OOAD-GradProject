//
//  Vehicle.h
//  VehicleDemo
//
//  Created by Shipra Behera on 2019/04/14.
//  Copyright © 2019 CodeWithShipra. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject

/*instance variables
 @property in Xcode 4.4 and above automatically creates getters and setters for that instance variable
better to use NSInteger when you don't know what kind of processor architecture your code might run on
 */
@property NSInteger numberOfWheels;
@property NSString *brandName;
@property NSString *modelName;
@property NSInteger modelYear;
@property NSString *powerSource;

//instance methods
-(void) goForward;
-(void) goBackward;
-(void) stopMoving;
-(void)changeGears:(NSString *)newGearName;
-(void)makeNoise;
-(void) displayDetails;

@end
