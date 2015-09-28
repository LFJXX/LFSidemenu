//
//  ViewController.m
//  LFSideMenu
//
//  Created by apple on 15/9/24.
//  Copyright © 2015年 xyb100. All rights reserved.
//

#import "ViewController.h"
#import "LFSideMenu.h"
#import "LFMenuView.h"
@interface ViewController ()<LFMenuViewDelegate>
@property (nonatomic,weak) LFSideMenu *sideMenu;
@property (nonatomic,weak) LFMenuView *menuView;
@end

@implementation ViewController
- (IBAction)btnClick:(id)sender {
    [self.sideMenu switchMenu];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    LFSideMenu *side = [[LFSideMenu alloc] initWithSender:self];
    self.sideMenu = side;
    [self.view addSubview:side];
    
    LFMenuView *menuView = [[LFMenuView alloc] initWithFrame:side.bounds];
    self.menuView = menuView;
    menuView.delegate = self;
    [self.sideMenu setContentView:menuView];
 
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)menuViewDidClick:(LFMenuView *)menuView index:(int)index{

    NSLog(@"点击了头像按钮");
}
@end
