//
//  RecentCellDelegate.h
//  AppFramework
//
//  Created by zhengjf on 2018/3/26.
//  Copyright © 2018年 nd. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol RecentCellDelegate <NSObject>
@optional
- (void)onAvatarClick:(NSInteger)uid;
- (void)onRightButtonClick;
@end
