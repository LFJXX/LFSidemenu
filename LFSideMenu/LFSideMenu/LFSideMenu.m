
//  LFSideMenu.m
//  LFSideMenu
//
//  Created by apple on 15/9/24.
//  Copyright © 2015年 xyb100. All rights reserved.
//

#import "LFSideMenu.h"
#define LFMenuWidth  250
#define LFMenuHeight [UIScreen mainScreen].bounds.size.height - 64-49

@implementation LFSideMenu

- (instancetype)initWithSender:(UIViewController *)sender{
    CGRect frame = CGRectMake(-LFMenuWidth, 64, LFMenuWidth,LFMenuHeight);
    if (self = [super initWithFrame:frame]) {
        [self buildSwipe:sender];
        self.backgroundColor = [UIColor yellowColor];
    }
    return self;
    
}


- (void)buildSwipe:(UIViewController *)sender{
    _sender = sender;
    _leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(show)];
    _leftSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    
    _rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(hide)];
    _rightSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    
    [sender.view addGestureRecognizer:_leftSwipe];
    [sender.view addGestureRecognizer:_rightSwipe];
    
}

- (void)show:(BOOL)show{
    CGFloat x = show?0:-LFMenuWidth;
    [UIView animateWithDuration:0.3 animations:^{
        self.frame = CGRectMake(x, 64, LFMenuWidth, LFMenuHeight);
    } completion:^(BOOL finished) {
        _isOpen = show;
        if(!_isOpen){
            NSLog(@"hidden");
        }
    }];

}

-(void)switchMenu{
    
    BOOL show = !_isOpen;
    [self show:show];
    
}
- (void)hide{

    [self show:NO];
}

- (void)show{

    [self show:YES];
}

-(void)setContentView:(UIView*)contentView{
    if (contentView) {
        _contentView = contentView;
    }
    _contentView.backgroundColor = [UIColor yellowColor];
    _contentView.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    [self addSubview:_contentView];
}
@end
