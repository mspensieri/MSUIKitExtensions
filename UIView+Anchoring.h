//
//  UIView+Anchoring.h
//  ShellApp
//
//  Created by Michael Spensieri on 4/4/14.
//  Copyright (c) 2014 Radialpoint. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Anchoring)

-(void)anchorAboveView:(UIView*)view;
-(void)anchorAboveView:(UIView*)view withPadding:(int)padding;

-(void)anchorBelowView:(UIView*)view;
-(void)anchorBelowView:(UIView*)view withPadding:(int)padding;

-(void)anchorLeftOfView:(UIView*)view;
-(void)anchorLeftOfView:(UIView*)view withPadding:(int)padding;

-(void)anchorRightOfView:(UIView*)view;
-(void)anchorRightOfView:(UIView*)view withPadding:(int)padding;

-(void)centerHorizontallyWithView:(UIView*)view;
-(void)centerVerticallyWithView:(UIView*)view;

-(void)centerInView:(UIView*)view;

-(void)anchorInsideTopOfView:(UIView*)view;
-(void)anchorInsideTopOfView:(UIView*)view withPadding:(int)padding;

-(void)anchorInsideBottomOfView:(UIView*)view;
-(void)anchorInsideBottomOfView:(UIView*)view withPadding:(int)padding;

-(void)anchorInsideRightOfView:(UIView*)view;
-(void)anchorInsideRightOfView:(UIView*)view withPadding:(int)padding;

-(void)anchorInsideLeftOfView:(UIView*)view;
-(void)anchorInsideLeftOfView:(UIView*)view withPadding:(int)padding;

@end
