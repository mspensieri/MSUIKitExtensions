//
//  UIView+Anchoring.m
//  ShellApp
//
//  Created by Michael Spensieri on 4/4/14.
//  Copyright (c) 2014 Radialpoint. All rights reserved.
//

#import "UIView+Anchoring.h"

@implementation UIView (Anchoring)

-(void)anchorAboveView:(UIView*)view
{
    [self anchorAboveView:view withPadding:0];
}

-(void)anchorAboveView:(UIView*)view withPadding:(int)padding
{
    CGRect frame = self.frame;
    frame.origin.y = CGRectGetMinY(view.frame) - CGRectGetHeight(self.frame) - padding;
    self.frame = frame;
}

-(void)anchorBelowView:(UIView*)view
{
    [self anchorBelowView:view withPadding:0];
}

-(void)anchorBelowView:(UIView*)view withPadding:(int)padding
{
    CGRect frame = self.frame;
    frame.origin.y = CGRectGetMaxY(view.frame)+ padding;
    self.frame = frame;
}

-(void)anchorLeftOfView:(UIView*)view
{
    [self anchorLeftOfView:view withPadding:0];
}

-(void)anchorLeftOfView:(UIView*)view withPadding:(int)padding
{
    CGRect frame = self.frame;
    frame.origin.x = CGRectGetMinX(view.frame) - CGRectGetWidth(self.frame) - padding;
    self.frame = frame;
}

-(void)anchorRightOfView:(UIView*)view
{
    [self anchorRightOfView:view withPadding:0];
}

-(void)anchorRightOfView:(UIView*)view withPadding:(int)padding
{
    CGRect frame = self.frame;
    frame.origin.x = CGRectGetMinX(view.frame) + padding;
    self.frame = frame;
}

-(void)centerHorizontallyWithView:(UIView*)view
{
    self.center = CGPointMake(CGRectGetMidX(view.frame), self.center.y);
}

-(void)centerVerticallyWithView:(UIView*)view
{
    self.center = CGPointMake(self.center.x, CGRectGetMidY(view.frame));
}

-(void)centerInView:(UIView*)view
{
    self.center = CGPointMake(CGRectGetMidX(view.frame), CGRectGetMidY(view.frame));
}

-(void)anchorInsideTopOfView:(UIView*)view
{
    [self anchorInsideTopOfView:view withPadding:0];
}

-(void)anchorInsideTopOfView:(UIView*)view withPadding:(int)padding
{
    CGRect frame = self.frame;
    frame.origin.y = CGRectGetMinY(view.frame) + padding;
    self.frame = frame;
}

-(void)anchorInsideBottomOfView:(UIView*)view
{
    [self anchorInsideBottomOfView:view withPadding:0];
}

-(void)anchorInsideBottomOfView:(UIView*)view withPadding:(int)padding
{
    CGRect frame = self.frame;
    frame.origin.y = CGRectGetMaxY(view.frame) - CGRectGetHeight(self.frame) - padding;
    self.frame = frame;
}

-(void)anchorInsideRightOfView:(UIView*)view
{
    [self anchorInsideRightOfView:view withPadding:0];
}

-(void)anchorInsideRightOfView:(UIView*)view withPadding:(int)padding
{
    CGRect frame = self.frame;
    frame.origin.x = CGRectGetMaxX(view.frame) - CGRectGetWidth(self.frame) - padding;
    self.frame = frame;
}

-(void)anchorInsideLeftOfView:(UIView*)view
{
    [self anchorInsideLeftOfView:view withPadding:0];
}

-(void)anchorInsideLeftOfView:(UIView*)view withPadding:(int)padding
{
    CGRect frame = self.frame;
    frame.origin.x = CGRectGetMinX(view.frame) + padding;
    self.frame = frame;
}

@end
