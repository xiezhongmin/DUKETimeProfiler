# DUKETimeProfiler
利用LLVM自动插桩技术,  统计方法、函数耗时


- 统计方法耗时有一种方案：`hook`住`objc_msgSend`方法, 但是有个局限性, 只对`objective-c`方法有效, 对`c函数`和`block`就不行了

- 利用LLVM自动插桩技术, 可以实现全覆盖统计

## 安装使用
```objc
pod 'DUKETimeProfiler', :configurations => ['Debug'], :git=>'https://github.com/xiezhongmin/DUKETimeProfiler.git'
```
