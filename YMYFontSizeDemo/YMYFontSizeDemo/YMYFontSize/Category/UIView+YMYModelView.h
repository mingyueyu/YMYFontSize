//
//  UIView+YMYModelView.h
//  YMYFontSizeDemo
//
//  Created by yumingyue on 2017/7/19.
//  Copyright © 2017年 yumingyue. All rights reserved.
//

#import <UIKit/UIKit.h>

#define YMY_FONT_SIZE @"YMYFontSize"

@interface UIView (YMYModelView)
// 获取字体大小
- (CGFloat)fontSize;
// 注册通知
- (void)addNote;
// 移除通知
- (void)removeNote;

@end
