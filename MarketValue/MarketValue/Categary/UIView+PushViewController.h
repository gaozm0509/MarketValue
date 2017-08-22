//
//  UIView+PushViewController.h
//  BusinessDistrict
//
//  Created by 高泽民 on 2017/2/11.
//  Copyright © 2017年 zm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (PushViewController)


/**
 获取self所在的UIViewController，并且push到指定的控制器

 @param viewController push到指定的控制器
 @param animated 是否有动画
 */
- (void)getVCAndPushViewController:(NSString *_Nullable)viewController animated:(BOOL)animated;


/**
 获取self所在的UIViewController，并且push到指定的控制器
 
 @param viewController 目标控制器
 @param params 传递的参数
 @param animated 动画
 */
- (void)getVCAndPushViewController:(NSString *_Nullable)viewController params:(NSDictionary *_Nullable)params animated:(BOOL)animated;


/**
 获取self所在的UIViewController，并且push到指定的控制器

 @param viewController 目标控制器
 @param params 传递的参数
 */
- (void)getVCAndPushViewController:(NSString *_Nullable)viewController params:(NSDictionary *_Nullable)params;


- (void)getVCAndPresentViewController:(UIViewController *_Nullable)viewControllerToPresent animated: (BOOL)flag completion:(void (^ __nullable)(void))completion;

/**
 获取self所在的UIViewController

 @return self所在的UIViewController
 */
- (UIViewController *_Nullable)viewController;

@end
