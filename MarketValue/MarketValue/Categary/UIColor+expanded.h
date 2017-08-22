
/****
 VOORBEELDEN
 
 [UIColor colorWithRGBHex:0xff00ff];
 [UIColor colorWithHexString:@"0xff00ff"]
 *******/

#import <UIKit/UIKit.h>


@interface UIColor (UIColor_Expanded)
+ (UIColor *)colorWithHexString:(NSString *)stringToConvert;
+ (UIColor *)colorWithHexString:(NSString *)stringToConvert andAlpha:(CGFloat)alpha;

+ (UIColor *)randomColor;

@end

