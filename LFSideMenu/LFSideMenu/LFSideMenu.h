//
//  LFSideMenu.h
//  LFSideMenu
//
//  Created by apple on 15/9/24.
//  Copyright © 2015年 xyb100. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LFSideMenu : UIView
@property (nonatomic,strong) UISwipeGestureRecognizer *leftSwipe;
@property (nonatomic,strong) UISwipeGestureRecognizer *rightSwipe;
@property (nonatomic,weak) UIViewController *sender;
@property (nonatomic,weak) UIView *contentView;
@property (nonatomic,assign) BOOL isOpen;

- (instancetype)initWithSender:(UIViewController*)sender;
-(void)show;
-(void)hide;
-(void)switchMenu;
-(void)setContentView:(UIView*)contentView;
@end
