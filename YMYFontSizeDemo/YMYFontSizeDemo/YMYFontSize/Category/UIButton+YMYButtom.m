//
//  UIButton+YMYButtom.m
//  YMYFontSizeDemo
//
//  Created by yumingyue on 2017/7/19.
//  Copyright © 2017年 yumingyue. All rights reserved.
//

#import "UIButton+YMYButtom.h"
#import "UIView+YMYModelView.h"

@implementation UIButton (YMYButtom)
- (void)awakeFromNib{
    [super awakeFromNib];
    // 监听通知
    [self addNote];
}

- (void)setUpFontSize{
    [self.titleLabel setFont:[UIFont systemFontOfSize:[self fontSize]]];
}

- (void)removeFromSuperview{
    // 移除通知
    [self removeNote];
    [super removeFromSuperview];
}

@end
