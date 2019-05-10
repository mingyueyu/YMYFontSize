//
//  UISegmentedControl+YMYSegmentedControl.m
//  YMYFontSizeDemo
//
//  Created by yumingyue on 2017/7/19.
//  Copyright © 2017年 yumingyue. All rights reserved.
//

#import "UISegmentedControl+YMYSegmentedControl.h"
#import "UIView+YMYModelView.h"

@implementation UISegmentedControl (YMYSegmentedControl)
- (void)awakeFromNib{
    [super awakeFromNib];
    // 监听通知
    [self addNote];
}

- (void)setUpFontSize{
    [self setTitleTextAttributes:[NSDictionary dictionaryWithObject:[UIFont systemFontOfSize:[self fontSize]] forKey:NSFontAttributeName] forState:UIControlStateNormal];
}

- (void)removeFromSuperview{
    // 移除通知
    [self removeNote];
    [super removeFromSuperview];
}
@end
