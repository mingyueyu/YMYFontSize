//
//  UITextView+YMYTextView.m
//  YMYFontSizeDemo
//
//  Created by yumingyue on 2019/5/15.
//  Copyright © 2019年 yumingyue. All rights reserved.
//

#import "UITextView+YMYTextView.h"
#import "UIView+YMYModelView.h"

@implementation UITextView (YMYTextView)
- (void)awakeFromNib{
    [super awakeFromNib];
    // 监听通知
    [self addNote];
}

- (void)setUpFontSize{
    [self setFont:[UIFont systemFontOfSize:[self fontSize]]];
}

- (void)removeFromSuperview{
    // 移除通知
    [self removeNote];
    [super removeFromSuperview];
}

@end
