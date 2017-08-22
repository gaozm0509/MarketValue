#import "UIColor+Expanded.h"

/*
 
 Thanks to Poltras, Millenomi, Eridius, Nownot, WhatAHam, jberry,
 and everyone else who helped out but whose name is inadvertantly omitted
 
 */

/*
 Current outstanding request list:
 
 - PolarBearFarm - color descriptions ([UIColor warmGrayWithHintOfBlueTouchOfRedAndSplashOfYellowColor])
 - Crayola color set
 - Eridius - UIColor needs a method that takes 2 colors and gives a third complementary one
 - Consider UIMutableColor that can be adjusted (brighter, cooler, warmer, thicker-alpha, etc)
 */

/*
 FOR REFERENCE: Color Space Models: enum CGColorSpaceModel {
 kCGColorSpaceModelUnknown = -1,
 kCGColorSpaceModelMonochrome,
 kCGColorSpaceModelRGB,
 kCGColorSpaceModelCMYK,
 kCGColorSpaceModelLab,
 kCGColorSpaceModelDeviceN,
 kCGColorSpaceModelIndexed,
 kCGColorSpaceModelPattern
 };
 */

// Static cache of looked up color names. Used with +colorWithName:
static NSMutableDictionary *colorNameCache = nil;

#if SUPPORTS_UNDOCUMENTED_API
// UIColor_Undocumented
// Undocumented methods of UIColor
@interface UIColor (UIColor_Undocumented)
- (NSString *)styleString;
@end
#endif // SUPPORTS_UNDOCUMENTED_API

@interface UIColor (UIColor_Expanded_Support)
+ (UIColor *)searchForColorByName:(NSString *)cssColorName;
@end

#pragma mark -

@implementation UIColor (UIColor_Expanded)

+ (UIColor *)colorWithHexString:(NSString *)stringToConvert {
    return [UIColor colorWithHexString:stringToConvert andAlpha:1];
}
+ (UIColor *)colorWithHexString:(NSString *)stringToConvert andAlpha:(CGFloat)alpha{
    NSScanner *scanner = [NSScanner scannerWithString:stringToConvert];
    unsigned hexNum;
    if (![scanner scanHexInt:&hexNum]) return nil;
    return [UIColor colorWithRGBHex:hexNum alpha:alpha];
}

+ (UIColor *)randomColor {
    return [UIColor colorWithRed:(CGFloat)RAND_MAX / random()
                           green:(CGFloat)RAND_MAX / random()
                            blue:(CGFloat)RAND_MAX / random()
                           alpha:1.0f];
}

+ (UIColor *)colorWithRGBHex:(UInt32)hex alpha:(CGFloat)alpha{
    int r = (hex >> 16) & 0xFF;
    int g = (hex >> 8) & 0xFF;
    int b = (hex) & 0xFF;
    
    return [UIColor colorWithRed:r / 255.0f
                           green:g / 255.0f
                            blue:b / 255.0f
                           alpha:alpha];
}

@end
