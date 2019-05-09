//
//  YMYFontSize.h
//  YMYFontSizeDemo
//
//  Created by yumingyue on 2017/7/19.
//  Copyright © 2017年 yumingyue. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YMYFontSize : UIView
//修改全局字体大小
+(void)setupFontSize:(CGFloat)fontSize;
//获取设定的字体大小
+(CGFloat)currentFontSize;
@end
