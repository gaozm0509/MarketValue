//
//  UIView+PushViewController.m
//  BusinessDistrict
//
//  Created by 高泽民 on 2017/2/11.
//  Copyright © 2017年 zm. All rights reserved.
//

#import "UIView+PushViewController.h"
#import "UIViewController+help.h"

@implementation UIView (PushViewController)

- (void)getVCAndPushViewController:(NSString *)viewController animated:(BOOL)animated{
    [self getVCAndPushViewController:viewController params:nil animated:animated];
}

- (void)getVCAndPushViewController:(NSString *)viewController params:(NSDictionary *)params{
    [self getVCAndPushViewController:viewController params:params animated:YES];
}

- (void)getVCAndPushViewController:(NSString *)viewController params:(NSDictionary *)params animated:(BOOL)animated{
    UIViewController * selfViewController = [self viewController];
    NSAssert(selfViewController, @"该view不属于viewController的subview");
    [selfViewController pushNewViewController:viewController params:params];
}


- (void)getVCAndPresentViewController:(UIViewController *)viewControllerToPresent animated: (BOOL)flag completion:(void (^ __nullable)(void))completion{
    
    UIViewController * selfViewController = [self viewController];
    if (completion) {
        [selfViewController.navigationController presentViewController:viewControllerToPresent animated:flag completion:completion];
    }else{
        [selfViewController presentViewController:viewControllerToPresent animated:flag completion:nil];
    }
    
}

- (UIViewController *)viewController {
    // Finds the view's view controller.
    // Traverse responder chain. Return first found view controller, which will be the view's view controller.
    UIResponder *responder = self;
    while ((responder = [responder nextResponder]))
        if ([responder isKindOfClass: [UIViewController class]])
            return (UIViewController *)responder;
    
    // If the view controller isn't found, return nil.
    return nil;
}

@end
