//
//  UIColor+Manipulation.h
//  UIColorDemo
//
//  Created by Mike Spensieri on 2014-12-27.
//  Copyright (c) 2014 Mike. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor(Manipulation)

+(UIColor*)colorWithHex:(long)hex;

-(UIColor*)colorWithRed:(CGFloat)red;
-(UIColor*)colorWithRed:(CGFloat)red green:(CGFloat)green;
-(UIColor*)colorWithRed:(CGFloat)red blue:(CGFloat)blue;

-(UIColor*)colorWithGreen:(CGFloat)green;
-(UIColor*)colorWithGreen:(CGFloat)green blue:(CGFloat)blue;

-(UIColor*)colorWithBlue:(CGFloat)blue;

-(UIColor*)colorWithHue:(CGFloat)hue;
-(UIColor*)colorWithHue:(CGFloat)hue saturation:(CGFloat)saturation;
-(UIColor*)colorWithHue:(CGFloat)hue brightness:(CGFloat)brightness;

-(UIColor*)colorWithSaturation:(CGFloat)saturation;
-(UIColor*)colorWithSaturation:(CGFloat)saturation brightness:(CGFloat)brightness;

-(UIColor*)colorWithBrightness:(CGFloat)brightness;

@property(nonatomic, readonly) CGFloat red;
@property(nonatomic, readonly) CGFloat green;
@property(nonatomic, readonly) CGFloat blue;
@property(nonatomic, readonly) CGFloat hue;
@property(nonatomic, readonly) CGFloat saturation;
@property(nonatomic, readonly) CGFloat brightness;
@property(nonatomic, readonly) CGFloat alpha;

@end
