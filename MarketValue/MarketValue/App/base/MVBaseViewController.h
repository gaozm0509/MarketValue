//
//  MVBaseViewController.h
//  MarketValue
//
//  Created by 高泽民 on 2017/8/15.
//  Copyright © 2017年 zm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MVBaseViewController : UIViewController

@property (nonatomic ,strong) NSDictionary *receiveParams;

- (void)setupDatas;
- (void)setupSubViews;

@end
