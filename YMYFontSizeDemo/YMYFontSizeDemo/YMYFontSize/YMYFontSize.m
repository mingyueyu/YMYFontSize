//
//  YMYFontSize.m
//  YMYFontSizeDemo
//
//  Created by yumingyue on 2017/7/19.
//  Copyright © 2017年 yumingyue. All rights reserved.
//

#import "YMYFontSize.h"
#import "UIView+YMYModelView.h"

@implementation YMYFontSize

// 修改全局字体大小
+ (void)setupFontSize:(CGFloat)fontSize{
    [[NSUserDefaults standardUserDefaults] setFloat:fontSize forKey:YMY_FONT_SIZE];
    [[NSNotificationCenter defaultCenter] postNotificationName:YMY_FONT_SIZE object:nil userInfo:nil];
}

// 获取设定的字体大小
+ (CGFloat)currentFontSize{
    return [[UIView new] fontSize];
}

@end
