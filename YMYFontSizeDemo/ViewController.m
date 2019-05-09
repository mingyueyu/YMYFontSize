//
//  ViewController.m
//  YMYFontSizeDemo
//
//  Created by yumingyue on 2017/7/19.
//  Copyright © 2017年 yumingyue. All rights reserved.
//


/*
 ********************************************************************************
 修改字体只要简单的2步
 1.导入头文件（如果某些视图字体大小不是设定的大小，导入此头文件即可）
 2.设置全局字体大小
 
 说明：如果需要获取字体大小。使用第3步，获取当前字体大小。
 ********************************************************************************
 */

#import "ViewController.h"
//1.导入头文件
#import "YMYFontSize.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *l_size;
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)sliderSize:(UISlider *)sender {
    //2.设置全局字体大小
    [YMYFontSize setupFontSize:sender.value];
    
    self.l_size.text = [NSString stringWithFormat:@"%.1f", [YMYFontSize currentFontSize]];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    //3.获取当前字体大小
    CGFloat size = [YMYFontSize currentFontSize];
    
    self.l_size.text = [NSString stringWithFormat:@"%.1f", size];
    self.slider.value = size;
}

@end
