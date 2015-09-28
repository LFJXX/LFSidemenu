//
//  LFMenuView.m
//  LFSideMenu
//
//  Created by apple on 15/9/28.
//  Copyright © 2015年 xyb100. All rights reserved.
//

#import "LFMenuView.h"

@interface LFMenuView ()


@end

@implementation LFMenuView

- (instancetype)initWithFrame:(CGRect)frame{

    if (self = [super initWithFrame:frame]) {
      
        // 创建UI
        [self creatUI];
        
    }
    return self;
}


- (void)creatUI{
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(10, 20, 40, 40)];
    self.iconView = btn;
    [btn setBackgroundImage:[UIImage imageNamed:@"icon.jpg"] forState:UIControlStateNormal];
    btn.tag = 100;
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:btn];
    

    
}

- (void)btnClick:(UIButton *)sender{

    if ([self.delegate respondsToSelector:@selector(menuViewDidClick:index:)]) {
        
        [self.delegate menuViewDidClick:self index:(int)sender.tag];
    }
    
}



@end
