//
//  UIColor+Manipulation.m
//  UIColorDemo
//
//  Created by Mike Spensieri on 2014-12-27.
//  Copyright (c) 2014 Mike. All rights reserved.
//

#import "UIColor+Manipulation.h"

@implementation UIColor(Manipulation)

+(UIColor*)colorWithHex:(long)hex
{
    CGFloat r = ((hex & 0xff0000) >> 16) / 255.0;
    CGFloat g = ((hex & 0x00ff00) >> 8) / 255.0;
    CGFloat b = (hex & 0x0000ff) / 255.0;
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1.0];
}

-(CGFloat)red
{
    CGFloat r;
    [self getRed:&r green:NULL blue:NULL alpha:NULL];
    
    return r;
}

-(CGFloat)green
{
    CGFloat g;
    [self getRed:NULL green:&g blue:NULL alpha:NULL];
    
    return g;
}

-(CGFloat)blue
{
    CGFloat b;
    [self getRed:NULL green:NULL blue:&b alpha:NULL];
    
    return b;
}

-(CGFloat)hue
{
    CGFloat h;
    [self getHue:&h saturation:NULL brightness:NULL alpha:NULL];
    
    return h;
}

-(CGFloat)saturation
{
    CGFloat s;
    [self getHue:NULL saturation:&s brightness:NULL alpha:NULL];
    
    return s;
}

-(CGFloat)brightness
{
    CGFloat b;
    [self getHue:NULL saturation:NULL brightness:&b alpha:NULL];
    
    return b;
}

-(CGFloat)alpha
{
    CGFloat a;
    [self getHue:NULL saturation:NULL brightness:NULL alpha:&a];
    
    return a;
}

-(UIColor*)colorWithRed:(CGFloat)red
{
    CGFloat g, b, a;
    [self getRed:NULL green:&g blue:&b alpha:&a];
    
    return [UIColor colorWithRed:red green:g blue:b alpha:a];
}

-(UIColor*)colorWithRed:(CGFloat)red green:(CGFloat)green
{
    CGFloat b, a;
    [self getRed:NULL green:NULL blue:&b alpha:&a];
    
    return [UIColor colorWithRed:red green:green blue:b alpha:a];
}

-(UIColor*)colorWithRed:(CGFloat)red blue:(CGFloat)blue
{
    CGFloat g, a;
    [self getRed:NULL green:&g blue:NULL alpha:&a];
    
    return [UIColor colorWithRed:red green:g blue:blue alpha:a];
}

-(UIColor*)colorWithGreen:(CGFloat)green
{
    CGFloat r, b, a;
    [self getRed:&r green:NULL blue:&b alpha:&a];
    
    return [UIColor colorWithRed:r green:green blue:b alpha:a];
}

-(UIColor*)colorWithGreen:(CGFloat)green blue:(CGFloat)blue
{
    CGFloat r, a;
    [self getRed:&r green:NULL blue:NULL alpha:&a];
    
    return [UIColor colorWithRed:r green:green blue:blue alpha:a];
}

-(UIColor*)colorWithBlue:(CGFloat)blue
{
    CGFloat r, g, a;
    [self getRed:&r green:&g blue:NULL alpha:&a];
    
    return [UIColor colorWithRed:r green:g blue:blue alpha:a];
}

-(UIColor*)colorWithHue:(CGFloat)hue
{
    CGFloat s, b, a;
    [self getHue:NULL saturation:&s brightness:&b alpha:&a];
    
    return [UIColor colorWithHue:hue saturation:s brightness:b alpha:a];
}

-(UIColor*)colorWithHue:(CGFloat)hue brightness:(CGFloat)brightness
{
    CGFloat s, a;
    [self getHue:NULL saturation:&s brightness:NULL alpha:&a];
    
    return [UIColor colorWithHue:hue saturation:s brightness:brightness alpha:a];
}

-(UIColor*)colorWithHue:(CGFloat)hue saturation:(CGFloat)saturation
{
    CGFloat b, a;
    [self getHue:NULL saturation:NULL brightness:&b alpha:&a];
    
    return [UIColor colorWithHue:hue saturation:saturation brightness:b alpha:a];
}

-(UIColor*)colorWithSaturation:(CGFloat)saturation
{
    CGFloat h, b, a;
    [self getHue:&h saturation:NULL brightness:&b alpha:&a];
    
    return [UIColor colorWithHue:h saturation:saturation brightness:b alpha:a];
}

-(UIColor*)colorWithSaturation:(CGFloat)saturation brightness:(CGFloat)brightness
{
    CGFloat h, a;
    [self getHue:&h saturation:NULL brightness:NULL alpha:&a];
    
    return [UIColor colorWithHue:h saturation:saturation brightness:brightness alpha:a];
}

-(UIColor*)colorWithBrightness:(CGFloat)brightness
{
    CGFloat h, s, a;
    [self getHue:&h saturation:&s brightness:NULL alpha:&a];
    
    return [UIColor colorWithHue:h saturation:s brightness:brightness alpha:a];
}

@end
