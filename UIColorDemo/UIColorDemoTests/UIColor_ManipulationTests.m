//
//  UIColor_ManipulationTests.m
//  UIColorDemo
//
//  Created by Mike Spensieri on 2014-12-27.
//  Copyright (c) 2014 Mike. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "UIColor+Manipulation.h"

@interface UIColor_ManipulationTests : XCTestCase

@end

@implementation UIColor_ManipulationTests

-(void)testRGBGetters
{
    CGFloat r = 0.1, g = 0.2, b = 0.3, a = 0.4;
    
    UIColor* color = [UIColor colorWithRed:r green:g blue:b alpha:a];
    
    XCTAssertEqualWithAccuracy(r, color.red, 0.0001);
    XCTAssertEqualWithAccuracy(g, color.green, 0.0001);
    XCTAssertEqualWithAccuracy(b, color.blue, 0.0001);
    XCTAssertEqualWithAccuracy(a, color.alpha, 0.0001);
}

-(void)testHSBGetters
{
    CGFloat h = 0.1, s = 0.2, b = 0.3, a = 0.4;
    
    UIColor* color = [UIColor colorWithHue:h saturation:s brightness:b alpha:a];
    
    XCTAssertEqualWithAccuracy(h, color.hue, 0.0001);
    XCTAssertEqualWithAccuracy(s, color.saturation, 0.0001);
    XCTAssertEqualWithAccuracy(b, color.brightness, 0.0001);
    XCTAssertEqualWithAccuracy(a, color.alpha, 0.0001);
}

-(void)testColorWithHex
{
    long red = 0xff0000;
    UIColor* color = [UIColor colorWithHex:red];
    
    XCTAssertEqualWithAccuracy(color.red, 1.0, 0.0001);
    XCTAssertEqualWithAccuracy(color.green, 0.0, 0.0001);
    XCTAssertEqualWithAccuracy(color.blue, 0.0, 0.0001);
    XCTAssertEqualWithAccuracy(color.alpha, 1.0, 0.0001);
    
    long blue = 0x0000ff;
    color = [UIColor colorWithHex:blue];
    
    XCTAssertEqualWithAccuracy(color.red, 0.0, 0.0001);
    XCTAssertEqualWithAccuracy(color.green, 0.0, 0.0001);
    XCTAssertEqualWithAccuracy(color.blue, 1.0, 0.0001);
    XCTAssertEqualWithAccuracy(color.alpha, 1.0, 0.0001);
    
    long green = 0x00ff00;
    color = [UIColor colorWithHex:green];
    
    XCTAssertEqualWithAccuracy(color.red, 0.0, 0.0001);
    XCTAssertEqualWithAccuracy(color.green, 1.0, 0.0001);
    XCTAssertEqualWithAccuracy(color.blue, 0.0, 0.0001);
    XCTAssertEqualWithAccuracy(color.alpha, 1.0, 0.0001);
    
    long grey = 0x999999;
    color = [UIColor colorWithHex:grey];
    
    XCTAssertEqualWithAccuracy(color.red, 0.6, 0.0001);
    XCTAssertEqualWithAccuracy(color.green, 0.6, 0.0001);
    XCTAssertEqualWithAccuracy(color.blue, 0.6, 0.0001);
    XCTAssertEqualWithAccuracy(color.alpha, 1.0, 0.0001);
}

-(void)testColorWithRed
{
    CGFloat r = 0.1, g = 0.2, b = 0.3, a = 0.4;
    CGFloat newRed = 0.5;
    
    UIColor* color = [[UIColor colorWithRed:r green:g blue:b alpha:a] colorWithRed:newRed];
    
    XCTAssertEqualWithAccuracy(newRed, color.red, 0.0001);
    XCTAssertEqualWithAccuracy(g, color.green, 0.0001);
    XCTAssertEqualWithAccuracy(b, color.blue, 0.0001);
    XCTAssertEqualWithAccuracy(a, color.alpha, 0.0001);
}

-(void)testColorWithRedGreen
{
    CGFloat r = 0.1, g = 0.2, b = 0.3, a = 0.4;
    CGFloat newRed = 0.5;
    CGFloat newGreen = 0.6;
    
    UIColor* color = [[UIColor colorWithRed:r green:g blue:b alpha:a] colorWithRed:newRed green:newGreen];
    
    XCTAssertEqualWithAccuracy(newRed, color.red, 0.0001);
    XCTAssertEqualWithAccuracy(newGreen, color.green, 0.0001);
    XCTAssertEqualWithAccuracy(b, color.blue, 0.0001);
    XCTAssertEqualWithAccuracy(a, color.alpha, 0.0001);
}

-(void)testColorWithRedBlue
{
    CGFloat r = 0.1, g = 0.2, b = 0.3, a = 0.4;
    CGFloat newRed = 0.5;
    CGFloat newBlue = 0.6;
    
    UIColor* color = [[UIColor colorWithRed:r green:g blue:b alpha:a] colorWithRed:newRed blue:newBlue];
    
    XCTAssertEqualWithAccuracy(newRed, color.red, 0.0001);
    XCTAssertEqualWithAccuracy(g, color.green, 0.0001);
    XCTAssertEqualWithAccuracy(newBlue, color.blue, 0.0001);
    XCTAssertEqualWithAccuracy(a, color.alpha, 0.0001);
}

-(void)testColorWithGreen
{
    CGFloat r = 0.1, g = 0.2, b = 0.3, a = 0.4;
    CGFloat newGreen = 0.5;
    
    UIColor* color = [[UIColor colorWithRed:r green:g blue:b alpha:a] colorWithGreen:newGreen];
    
    XCTAssertEqualWithAccuracy(r, color.red, 0.0001);
    XCTAssertEqualWithAccuracy(newGreen, color.green, 0.0001);
    XCTAssertEqualWithAccuracy(b, color.blue, 0.0001);
    XCTAssertEqualWithAccuracy(a, color.alpha, 0.0001);
}

-(void)testColorWithGreenBlue
{
    CGFloat r = 0.1, g = 0.2, b = 0.3, a = 0.4;
    CGFloat newGreen = 0.5;
    CGFloat newBlue = 0.6;
    
    UIColor* color = [[UIColor colorWithRed:r green:g blue:b alpha:a] colorWithGreen:newGreen blue:newBlue];
    
    XCTAssertEqualWithAccuracy(r, color.red, 0.0001);
    XCTAssertEqualWithAccuracy(newGreen, color.green, 0.0001);
    XCTAssertEqualWithAccuracy(newBlue, color.blue, 0.0001);
    XCTAssertEqualWithAccuracy(a, color.alpha, 0.0001);
}

-(void)testColorWithBlue
{
    CGFloat r = 0.1, g = 0.2, b = 0.3, a = 0.4;
    CGFloat newBlue = 0.5;
    
    UIColor* color = [[UIColor colorWithRed:r green:g blue:b alpha:a] colorWithBlue:newBlue];
    
    XCTAssertEqualWithAccuracy(r, color.red, 0.0001);
    XCTAssertEqualWithAccuracy(g, color.green, 0.0001);
    XCTAssertEqualWithAccuracy(newBlue, color.blue, 0.0001);
    XCTAssertEqualWithAccuracy(a, color.alpha, 0.0001);
}

-(void)testColorWithHue
{
    CGFloat h = 0.1, s = 0.2, b = 0.3, a = 0.4;
    CGFloat newHue = 0.5;
    
    UIColor* color = [[UIColor colorWithHue:h saturation:s brightness:b alpha:a] colorWithHue:newHue];
    
    XCTAssertEqualWithAccuracy(newHue, color.hue, 0.0001);
    XCTAssertEqualWithAccuracy(s, color.saturation, 0.0001);
    XCTAssertEqualWithAccuracy(b, color.brightness, 0.0001);
    XCTAssertEqualWithAccuracy(a, color.alpha, 0.0001);
}

-(void)testColorWithHueSaturation
{
    CGFloat h = 0.1, s = 0.2, b = 0.3, a = 0.4;
    CGFloat newHue = 0.5;
    CGFloat newSaturation = 0.6;
    
    UIColor* color = [[UIColor colorWithHue:h saturation:s brightness:b alpha:a] colorWithHue:newHue saturation:newSaturation];
    
    XCTAssertEqualWithAccuracy(newHue, color.hue, 0.0001);
    XCTAssertEqualWithAccuracy(newSaturation, color.saturation, 0.0001);
    XCTAssertEqualWithAccuracy(b, color.brightness, 0.0001);
    XCTAssertEqualWithAccuracy(a, color.alpha, 0.0001);
}

-(void)testColorWithHueBrightness
{
    CGFloat h = 0.1, s = 0.2, b = 0.3, a = 0.4;
    CGFloat newHue = 0.5;
    CGFloat newBrightness = 0.6;
    
    UIColor* color = [[UIColor colorWithHue:h saturation:s brightness:b alpha:a] colorWithHue:newHue brightness:newBrightness];
    
    XCTAssertEqualWithAccuracy(newHue, color.hue, 0.0001);
    XCTAssertEqualWithAccuracy(s, color.saturation, 0.0001);
    XCTAssertEqualWithAccuracy(newBrightness, color.brightness, 0.0001);
    XCTAssertEqualWithAccuracy(a, color.alpha, 0.0001);
}

-(void)testColorWithSaturation
{
    CGFloat h = 0.1, s = 0.2, b = 0.3, a = 0.4;
    CGFloat newSaturation = 0.5;
    
    UIColor* color = [[UIColor colorWithHue:h saturation:s brightness:b alpha:a] colorWithSaturation:newSaturation];
    
    XCTAssertEqualWithAccuracy(h, color.hue, 0.0001);
    XCTAssertEqualWithAccuracy(newSaturation, color.saturation, 0.0001);
    XCTAssertEqualWithAccuracy(b, color.brightness, 0.0001);
    XCTAssertEqualWithAccuracy(a, color.alpha, 0.0001);
}

-(void)testColorWithSaturationBrightness
{
    CGFloat h = 0.1, s = 0.2, b = 0.3, a = 0.4;
    CGFloat newSaturation = 0.5;
    CGFloat newBrightness = 0.6;
    
    UIColor* color = [[UIColor colorWithHue:h saturation:s brightness:b alpha:a] colorWithSaturation:newSaturation brightness:newBrightness];
    
    XCTAssertEqualWithAccuracy(h, color.hue, 0.0001);
    XCTAssertEqualWithAccuracy(newSaturation, color.saturation, 0.0001);
    XCTAssertEqualWithAccuracy(newBrightness, color.brightness, 0.0001);
    XCTAssertEqualWithAccuracy(a, color.alpha, 0.0001);
}

-(void)testColorWithBrightness
{
    CGFloat h = 0.1, s = 0.2, b = 0.3, a = 0.4;
    CGFloat newBrightness = 0.5;
    
    UIColor* color = [[UIColor colorWithHue:h saturation:s brightness:b alpha:a] colorWithBrightness:newBrightness];
    
    XCTAssertEqualWithAccuracy(h, color.hue, 0.0001);
    XCTAssertEqualWithAccuracy(s, color.saturation, 0.0001);
    XCTAssertEqualWithAccuracy(newBrightness, color.brightness, 0.0001);
    XCTAssertEqualWithAccuracy(a, color.alpha, 0.0001);
}

@end
