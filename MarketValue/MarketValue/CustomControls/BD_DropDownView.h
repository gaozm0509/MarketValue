//
//  BD_DropDownView.h
//  BusinessDistrict
//
//  Created by 高泽民 on 2017/3/14.
//  Copyright © 2017年 zm. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^BD_DropDownViewClickItemBlock)(NSString *seleceTitle);

@interface BD_DropDownView : UIView

@property (nonatomic, assign) BOOL isShow;

@property (nonatomic, strong) NSArray<NSString *> *dataList;

@property (nonatomic, copy) BD_DropDownViewClickItemBlock clickItemBlock;

- (void)showWithView:(UIView *)view startPosition:(CGFloat)startPosition;

- (void)hie;

@end
