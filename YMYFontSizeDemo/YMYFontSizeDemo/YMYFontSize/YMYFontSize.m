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


+(void)setupFontSize:(CGFloat)fontSize{
    [[NSUserDefaults standardUserDefaults] setFloat:fontSize forKey:YMY_FONT_SIZE];
    [[NSNotificationCenter defaultCenter] postNotificationName:YMY_FONT_SIZE object:nil userInfo:nil];
}

+(CGFloat)currentFontSize{
    return [[UIView new] fontSize];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
