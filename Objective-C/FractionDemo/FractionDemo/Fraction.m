//
//  Fraction.m
//  FractionDemo
//
//  Created by Shipra Behera on 2019/04/14.
//  Copyright © 2019 CodeWithShipra. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
- (void)setNumerator:(NSInteger)value {
    numerator = value;
}

- (void)setDenominator:(NSInteger)value {
    denominator = value;
}

- (void)display {
    NSString *numeratorString = [[NSString alloc] initWithFormat:@"%ld", numerator];
    NSString *denominatorString = [[NSString alloc] initWithFormat:@"%ld", denominator];
    NSLog(@"%@/%@", numeratorString, denominatorString);
}

@end
