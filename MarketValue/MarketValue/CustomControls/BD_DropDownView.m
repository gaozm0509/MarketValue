//
//  BD_DropDownView.m
//  BusinessDistrict
//
//  Created by 高泽民 on 2017/3/14.
//  Copyright © 2017年 zm. All rights reserved.
//

#import "BD_DropDownView.h"

static NSString * const cellId = @"BD_DropDownViewCellId";
static CGFloat const kCellHeight = 50;

@interface BD_DropDownView()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UIView *bgView;

@end

@implementation BD_DropDownView


- (instancetype)init {
    if (self = [super init]) {
        self.backgroundColor = [UIColor whiteColor];
        self.layer.masksToBounds = YES;
        self.isShow = NO;
        
        [self addSubview:self.tableView];
    }
    return self;
}

- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] init];
        _tableView.backgroundColor = [UIColor whiteColor];
        _tableView.dataSource = self;
        _tableView.delegate = self;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellId];
    }
    return _tableView;
}

- (UIView *)bgView {
    if (!_bgView) {
        _bgView = [[UIView alloc] init];
        _bgView.backgroundColor = [UIColor colorWithHexString:@"000000" andAlpha:0];
        
        UITapGestureRecognizer *gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hie)];
        [_bgView addGestureRecognizer:gesture];
    }
    return _bgView;
}

- (void)setDataList:(NSArray<NSString *> *)dataList{
    _dataList = dataList;
    [self layoutUI];
}

#pragma mark - UITableViewDataSource

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    cell.textLabel.text = self.dataList[indexPath.row];
    cell.textLabel.font = kFont14;
    cell.textLabel.textColor = kText_Color;
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataList.count;
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return kCellHeight;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (self.clickItemBlock) {
        NSString *title = self.dataList[indexPath.row];
        self.clickItemBlock(title);
    }
}

#pragma mark - pravit method

- (void)layoutUI {
    CGFloat height = MIN(200, self.dataList.count * kCellHeight);
    self.tableView.frame = CGRectMake(0, 0, kScreen_Width, height);
    [self.tableView reloadData];
}

#pragma mark - pubilce method

- (void)showWithView:(UIView *)view startPosition:(CGFloat)startPosition {
    
    self.isShow = YES;
    
    // 添加背景遮罩层
    self.bgView.frame = CGRectMake(0, startPosition, kScreen_Width, view.height - startPosition);
    [view addSubview:self.bgView];
    
    self.frame = CGRectMake(0, startPosition, kScreen_Width, 0);
    CGFloat height = MIN(200, self.dataList.count * kCellHeight);
    [view addSubview:self];
    
    [UIView animateWithDuration:0.3 animations:^{
        self.bgView.backgroundColor = [UIColor colorWithHexString:@"000000" andAlpha:0.2];
        self.height = height;
    }];
}

- (void)hie {
    [UIView animateWithDuration:0.3 animations:^{
        self.isShow = NO;
        self.height = 0;
        self.bgView.backgroundColor = [UIColor colorWithHexString:@"000000" andAlpha:0];
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
        [self.bgView removeFromSuperview];
    }];
}

@end
