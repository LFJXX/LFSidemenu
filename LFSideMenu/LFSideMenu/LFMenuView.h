//
//  LFMenuView.h
//  LFSideMenu
//
//  Created by apple on 15/9/28.
//  Copyright © 2015年 xyb100. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LFMenuView;
@protocol LFMenuViewDelegate <NSObject>

- (void)menuViewDidClick:(LFMenuView *)menuView index:(int)index;

@end

@interface LFMenuView : UIView
@property (nonatomic,weak) id<LFMenuViewDelegate>delegate;
@property (nonatomic,weak) UIButton *iconView;
@property (nonatomic,weak) UIButton *qrCode;

@end
