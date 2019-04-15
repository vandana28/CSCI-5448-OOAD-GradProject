//
//  Fraction.h
//  FractionDemo
//
//  Created by Shipra Behera on 2019/04/14.
//  Copyright © 2019 CodeWithShipra. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject {
    //instance variables
    //better to use NSInteger when you don't know what kind of processor architecture your code might run on
    NSInteger numerator;
    NSInteger denominator;
}
//instance methods
- (void)setNumerator:(NSInteger)value;
- (void)setDenominator:(NSInteger)value;
- (void)display;

@end
