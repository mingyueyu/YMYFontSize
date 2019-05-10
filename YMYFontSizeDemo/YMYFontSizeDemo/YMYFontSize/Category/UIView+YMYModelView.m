//
//  UIView+YMYModelView.m
//  YMYFontSizeDemo
//
//  Created by yumingyue on 2017/7/19.
//  Copyright © 2017年 yumingyue. All rights reserved.
//

#import "UIView+YMYModelView.h"

@implementation UIView (YMYModelView)
-(CGFloat)fontSize{
    CGFloat size = [[NSUserDefaults standardUserDefaults] floatForKey:YMY_FONT_SIZE];
    if (size < 1) {
        size = 14;
        [[NSUserDefaults standardUserDefaults] setFloat:size forKey:YMY_FONT_SIZE];
    }
    return size;
}
@end
