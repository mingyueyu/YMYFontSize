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
- (void)awakeFromNib
{
    [super awakeFromNib];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(setUpFontSize) name:YMY_FONT_SIZE object:nil];
    [self setUpFontSize];
}

-(void)setUpFontSize{
    [self.titleLabel setFont:[UIFont systemFontOfSize:[self fontSize]]];
}

-(void)removeFromSuperview{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:YMY_FONT_SIZE object:nil];
    [super removeFromSuperview];
}

@end
