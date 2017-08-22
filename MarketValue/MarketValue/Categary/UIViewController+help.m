//
//  UIViewController+help.m
//  HouseKeeper
//
//  Created by 高泽民 on 16/9/11.
//  Copyright © 2016年 zm. All rights reserved.
//

#import "UIViewController+help.h"
#import "MVBaseViewController.h"

@implementation UIViewController (help)

- (void)pushNewViewController:(NSString *)VCName params:(NSDictionary *)params{
    [self pushNewViewController:VCName params:params animated:YES];
}

- (void)pushNewViewController:(NSString *)VCName params:(NSDictionary *)params animated:(BOOL)animated{
    MVBaseViewController *VC = (MVBaseViewController *)[[NSClassFromString(VCName) alloc]init];
    if (params != nil) {
        VC.receiveParams = params;
    }
    
    self.hidesBottomBarWhenPushed = YES;
    
    [self.navigationController pushViewController:VC animated:animated];
    if (([self isKindOfClass:NSClassFromString(@"BusinessTabBarViewController")] ||
         [self isKindOfClass:NSClassFromString(@"HomeTabBarViewController")] ||
         [self isKindOfClass:NSClassFromString(@"ReservationTabBarViewController")] ||
         [self isKindOfClass:NSClassFromString(@"MineTabBarViewController")] ||
         [self isKindOfClass:NSClassFromString(@"SearchTabBarViewController")]
         )
        ){
        self.hidesBottomBarWhenPushed=NO;
    }
}

- (void)pushNewViewController:(NSString *)VCName{
    [self pushNewViewController:VCName params:nil animated:YES];
    
}

@end
