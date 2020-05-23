//
//  YMYFontSize.h
//  YMYFontSize
//
//  Created by ericj on 2020/5/23.
//  Copyright © 2020 minyueyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YMYFontSize : NSObject

/**
 修改全局字体大小

 @param fontSize 字体大小
 */
+ (void)setupFontSize:(CGFloat)fontSize;

/**
 获取设定的字体大小

 @return 设定的字体大小
 */
+ (CGFloat)currentFontSize;

@end
