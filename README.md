# AutoCopy

这份代码能够让你轻松实现Model的复制。

使用方法：

1、下载NSObject+Copy.h与NSObject+Copy.m，并导入工程。

2、在需要浮动的地方引入头#import "NSObject+Copy.h"

3、对需要复制的对象调用autoCopy方法
```
Person *clone = [person autoCopy];
```

这个小工具不支持NSArray,NSDictionary等对象，这些对象可直接调用`mutableCopy`。 如果有什么bug欢迎斧正。
