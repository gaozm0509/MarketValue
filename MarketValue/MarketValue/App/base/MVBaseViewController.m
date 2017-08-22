//
//  MVBaseViewController.m
//  MarketValue
//
//  Created by 高泽民 on 2017/8/15.
//  Copyright © 2017年 zm. All rights reserved.
//

#import "MVBaseViewController.h"

@interface MVBaseViewController ()

@end

@implementation MVBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupSubViews];
    [self setupDatas];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 需要覆写的空方法

- (void)setupDatas {
    self.view.backgroundColor = BackgroundColor;
}
- (void)setupSubViews {}

@end
