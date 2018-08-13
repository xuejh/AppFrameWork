//
//  RecentCellView.h
//  AppFramework
//
//  Created by zhengjf on 2018/3/26.
//  Copyright © 2018年 nd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RecentCellDelegate.h"

@interface RecentCellView : UITableViewCell

@property(nonatomic, assign) NSInteger uid;
@property(nonatomic, strong) NSString *title;
@property(nonatomic, strong) NSString *timeText;
@property(nonatomic, strong) NSString *content;
@property(nonatomic, strong) NSString *rightButtonTitle;
@property(nonatomic, weak) id<RecentCellDelegate> delegate;

- (void)setRightButtonBackGroundColor:(UIColor *)color;
@end
