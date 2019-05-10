//
//  UIView+YMYModelView.m
//  YMYFontSizeDemo
//
//  Created by yumingyue on 2017/7/19.
//  Copyright © 2017年 yumingyue. All rights reserved.
//

#import "UIView+YMYModelView.h"

@implementation UIView (YMYModelView)
- (CGFloat)fontSize{
    CGFloat size = [[NSUserDefaults standardUserDefaults] floatForKey:YMY_FONT_SIZE];
    if (size < 1) {
        // 默认字体大小
        size = 14;
        [[NSUserDefaults standardUserDefaults] setFloat:size forKey:YMY_FONT_SIZE];
    }
    return size;
}

- (void)addNote{
    // 注册通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(setUpFontSize) name:YMY_FONT_SIZE object:nil];
    // 显示用户设定的大小
    [self setUpFontSize];
}

- (void)setUpFontSize{}

- (void)removeNote{
    // 移除通知
    [[NSNotificationCenter defaultCenter] removeObserver:self name:YMY_FONT_SIZE object:nil];
}

@end
