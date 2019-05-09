//
//  UILabel+YMYLable.m
//  YMYFontSizeDemo
//
//  Created by yumingyue on 2017/7/19.
//  Copyright © 2017年 yumingyue. All rights reserved.
//

#import "UILabel+YMYLable.h"
#import "UIView+YMYModelView.h"

@implementation UILabel (YMYLable)
- (void)awakeFromNib
{
    [super awakeFromNib];
    //注册通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(setUpFontSize) name:YMY_FONT_SIZE object:nil];
    //显示用户设定的大小
    [self setUpFontSize];
}

-(void)setUpFontSize{
    [self setFont:[UIFont systemFontOfSize:[self fontSize]]];
}

-(void)removeFromSuperview{
    //移除通知
    [[NSNotificationCenter defaultCenter] removeObserver:self name:YMY_FONT_SIZE object:nil];
    [super removeFromSuperview];
}



@end
