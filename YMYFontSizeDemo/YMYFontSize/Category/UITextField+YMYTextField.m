//
//  UITextField+YMYTextField.m
//  YMYFontSizeDemo
//
//  Created by yumingyue on 2017/7/19.
//  Copyright © 2017年 yumingyue. All rights reserved.
//

#import "UITextField+YMYTextField.h"
#import "UIView+YMYModelView.h"

@implementation UITextField (YMYTextField)
- (void)awakeFromNib
{
    [super awakeFromNib];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(setUpFontSize) name:YMY_FONT_SIZE object:nil];
    [self setUpFontSize];
}

-(void)setUpFontSize{
    [self setFont:[UIFont systemFontOfSize:[self fontSize]]];
}

-(void)removeFromSuperview{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:YMY_FONT_SIZE object:nil];
    [super removeFromSuperview];
}

@end
