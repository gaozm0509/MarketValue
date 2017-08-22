//
//  MVViewController.m
//  MarketValue
//
//  Created by 高泽民 on 2017/8/15.
//  Copyright © 2017年 zm. All rights reserved.
//

#import "MVTabBarViewController.h"
#import "DiscoveryIndexViewController.h"
#import "HomeViewController.h"
#import "InformationIndexViewController.h"
#import "MineIndexViewController.h"

@interface MVTabBarViewController ()

@end

@implementation MVTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupViewControllers];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)setupViewControllers {
    HomeViewController *home = [[HomeViewController alloc] init];
    DiscoveryIndexViewController *discovery = [[DiscoveryIndexViewController alloc] init];
    InformationIndexViewController *info = [[InformationIndexViewController alloc] init];
    MineIndexViewController *mine = [[MineIndexViewController alloc] init];
    
    UINavigationController *navHome = [[UINavigationController alloc] initWithRootViewController:home];
    UINavigationController *navDiscovery = [[UINavigationController alloc] initWithRootViewController:discovery];
    UINavigationController *navInfo = [[UINavigationController alloc] initWithRootViewController:info];
    UINavigationController *navMine = [[UINavigationController alloc] initWithRootViewController:mine];
    
    [self customizeTabBar];
    [self setViewControllers:@[navHome,navDiscovery,navInfo,navMine]];
}

/*
 *
 在`-setViewControllers:`之前设置TabBar的属性，
 *
 */
- (void)customizeTabBar {
    
    NSDictionary *dict0 = @{
                            CYLTabBarItemTitle : @"首页",
                            CYLTabBarItemImage : @"tabbar0_normal",
                            CYLTabBarItemSelectedImage : @"tabbar0_highlight",
                            };
    NSDictionary *dict1 = @{
                            CYLTabBarItemTitle : @"发现",
                            CYLTabBarItemImage : @"tabbar1_normal",
                            CYLTabBarItemSelectedImage : @"tabbar1_highlight",
                            };
    NSDictionary *dict2 = @{
                            CYLTabBarItemTitle : @"资讯",
                            CYLTabBarItemImage : @"tabbar2_normal",
                            CYLTabBarItemSelectedImage : @"tabbar2_highlight",
                            };
    NSDictionary *dict3 = @{
                            CYLTabBarItemTitle : @"我的",
                            CYLTabBarItemImage : @"tabbar3_normal",
                            CYLTabBarItemSelectedImage : @"tabbar3_highlight",
                            };
    
    NSArray *tabBarItemsAttributes = @[dict0,dict1,dict2,dict3];
    self.tabBarItemsAttributes = tabBarItemsAttributes;
}

@end
