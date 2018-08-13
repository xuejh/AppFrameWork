//
//  RecentCellView.m
//  AppFramework
//
//  Created by zhengjf on 2018/3/26.
//  Copyright © 2018年 nd. All rights reserved.
//

#import "RecentCellView.h"

@interface RecentCellView ()
@property (nonatomic, strong) UILabel *titleView;
@property (nonatomic, strong) UILabel *summaryView;
@property (nonatomic, strong) UILabel *timeView;
@property (nonatomic, strong) UIButton *rightButtonView;
@end

@implementation RecentCellView

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initSubViews];
    }
    return self;
}

- (void)initSubViews {
    UIView *avatar = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
    avatar.backgroundColor = [UIColor grayColor];
    avatar.layer.cornerRadius = 15;
    UITapGestureRecognizer *avatarClick = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(onAvatarClick)];
    [avatar addGestureRecognizer:avatarClick];
    [self addSubview:avatar];
    
    self.titleView = [[UILabel alloc] initWithFrame:CGRectMake(50, 0, self.frame.size.width - 44 - 50, 20)];
    [self addSubview:self.titleView];
    
    self.summaryView = [[UILabel alloc] initWithFrame:CGRectMake(50, 24, self.frame.size.width - 44 - 50, 20)];
    [self addSubview:self.summaryView];
    
    self.timeView = [[UILabel alloc] initWithFrame:CGRectMake(self.frame.size.width - 64, 0, 64, 20)];
    [self addSubview:self.timeView];
    
    self.rightButtonView = [[UIButton alloc] initWithFrame:CGRectMake(self.frame.size.width - 84, 24, 84, 20)];
    self.rightButtonView.backgroundColor = [UIColor redColor];
    [self.rightButtonView addTarget:self action:@selector(onRightButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.rightButtonView];
}

- (void)onRightButtonClick:(UIButton *)btn {
    [self.delegate onRightButtonClick];
}

- (void)onAvatarClick {
    [self.delegate onAvatarClick:self.uid];
}

- (void)setTitle:(NSString *)title {
    _title = title;
    self.titleView.text = title;
}

- (void)setTimeText:(NSString *)time {
    _timeText = time;
    self.timeView.text = time;
}

- (void)setContent:(NSString *)content {
    _content = content;
    self.summaryView.text = content;
}
- (void)setRightButtonTitle:(NSString *)buttonTitle {
    _rightButtonTitle = buttonTitle;
    [self.rightButtonView setTitle:buttonTitle forState:UIControlStateNormal];
    [self.rightButtonView setTitle:buttonTitle forState:UIControlStateHighlighted];
}

- (void)setRightButtonBackGroundColor:(UIColor *)color {
    self.rightButtonView.backgroundColor = color;
}
@end
