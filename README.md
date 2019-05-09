# YMYFontSize

全局字体大小

## 使用说明：

1、导入头文件 "YMYFontSize.h"
2、设置全局字体大小（举例如下）
```ruby
[YMYFontSize setupFontSize:14];
```
3、如有需要获取设定的全局字体大小（举例如下）
```ruby
CGFloat fontSize = [YMYFontSize currentFontSize];
```

## 导入方法：

1、（推荐）cocoapods 导入，在 Podfile 添加
```ruby
pod 'YMYFontSize'
```

2、手动导入，下载工程，在工程目录下 "YMYFontSize" 文件夹拖到你的工程中使用。
