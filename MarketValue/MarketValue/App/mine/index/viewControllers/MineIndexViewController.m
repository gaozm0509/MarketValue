//
//  MineIndexViewController.m
//  MarketValue
//
//  Created by 高泽民 on 2017/8/15.
//  Copyright © 2017年 zm. All rights reserved.
//

#import "MineIndexViewController.h"
#import "MineIndexTableView.h"

@interface MineIndexViewController ()

@property (nonatomic, strong) MineIndexTableView *tableView;

@end

@implementation MineIndexViewController

#pragma mark - Cycle life

- (void)dealloc{
    NSLog(@"%s dealloc",__func__);
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Getter and setter

- (MineIndexTableView *)tableView {
    if (!_tableView) {
        _tableView = [[MineIndexTableView alloc] initWithFrame:ViewFrame style:UITableViewStylePlain];
    }
    return _tableView;
}

#pragma mark - Delegate



#pragma mark - Net request



#pragma mark - Event method



#pragma mark - Pravit method

- (void)setupSubViews {
    [self.view addSubview:self.tableView];
}

@end
