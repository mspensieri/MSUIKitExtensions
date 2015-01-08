UIColorExtensions
================

Simplifies working with UIColors in Objective-C

# UIColor+Manipulation

Convenience methods for:
* Generating colors from hex
* Accessing color components (red, green, blue, hue, saturation, brightness, alpha)
* Generating new colors by modifying individual components

###Example

UIColor* color = [UIColor colorWithHex:0xff0000];

NSLog(@"%f", color.red); // 1.0
NSLog(@"%f", color.green); // 0.0
NSLog(@"%f", color.blue); // 0.0

color = [color colorWithGreen:0.5 blue:0.6];

NSLog(@"%f", color.red); // 1.0
NSLog(@"%f", color.green); // 0.5
NSLog(@"%f", color.blue); // 0.6

UIViewExtensions
================

Simplifies working with UIViews in Objective-C

# UIView+Anchoring

Convenience methods for positioning views relative to others. Allows you to anchor your views outside or inside another view on any side, and center one view relative to another (horizontally and vertically)