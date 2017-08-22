//
//  MineIndexTableView.m
//  MarketValue
//
//  Created by 高泽民 on 2017/8/22.
//  Copyright © 2017年 zm. All rights reserved.
//

#import "MineIndexTableView.h"
#import "MineIndexTableViewCell.h"

@interface MineIndexTableView()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation MineIndexTableView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    if (self = [super initWithFrame:frame style:style]) {
        self.backgroundColor = [UIColor clearColor];
        
        [self registerNib:[UINib nibWithNibName:@"MineIndexTableViewCell" bundle:nil] forCellReuseIdentifier:@"MineIndexTableViewCellId"];
        [self registerClass:[UITableViewHeaderFooterView class] forHeaderFooterViewReuseIdentifier:@"UITableViewFooterViewId"];
        
        self.dataSource = self;
        self.delegate = self;
    }
    return self;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 1;
    } else if (section == 1) {
        return 5;
    } else {
        return 2;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 10;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    UITableViewHeaderFooterView *view = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"UITableViewFooterViewId"];
    UIView *bgView = [UIView new];
    bgView.backgroundColor = [UIColor clearColor];
    view.backgroundView = bgView;
    return view;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return 75;
    } else {
        return 45;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        MineIndexTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MineIndexTableViewCellId" forIndexPath:indexPath];
        return cell;
    } else {
        MineIndexTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MineIndexTableViewCellId" forIndexPath:indexPath];
        return cell;
    }
}

@end
