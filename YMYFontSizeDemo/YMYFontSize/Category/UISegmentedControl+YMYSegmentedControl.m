//
//  UISegmentedControl+YMYSegmentedControl.m
//  YMYFontSizeDemo
//
//  Created by yumingyue on 2017/7/19.
//  Copyright © 2017年 yumingyue. All rights reserved.
//

#import "UISegmentedControl+YMYSegmentedControl.h"
#import "UIView+YMYModelView.h"

@implementation UISegmentedControl (YMYSegmentedControl)
- (void)awakeFromNib
{
    [super awakeFromNib];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(setUpFontSize) name:YMY_FONT_SIZE object:nil];
    [self setUpFontSize];
}

-(void)setUpFontSize{
    [self setTitleTextAttributes:[NSDictionary dictionaryWithObject:[UIFont systemFontOfSize:[self fontSize]] forKey:NSFontAttributeName] forState:UIControlStateNormal];
}

-(void)removeFromSuperview{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:YMY_FONT_SIZE object:nil];
    [super removeFromSuperview];
}
@end
