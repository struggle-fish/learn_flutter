# learn_flutter

记录学习flutter


### Flutter 启动的3种方式

- 冷启动
- 热重载 （主要是执行build方法）
- 热重启 （重新运行整个app）


### 多态
父类引用指向子类对象


### Widget
- 有状态的 Widget : StatefulWidget 在运行过程中有一些状态（data）需要改变
- 无状态的 Widget : StatelessWidget 内容是确定的没有状态
    - 直接写死
    - parent widget 传递
    - inheritWidget 获取

Flutter 中万物皆是 Widget , 在 Flutter 开发中所有的 Widget 都不能定义状态


### 生命周期
- 作用
    - 初始化数据
    - 发送网络请求
    - 监听组件中的事件
    - 管理内存（定时器，控制器的销毁等）


  
### 常用快捷键

- `stl` 快速生成 StatelessWidget
- `option + enter` 设置包裹 Container
- `option + command + b` 可以查看实现类
- `option + command + w` 将build 出来的widget 抽取到文件（快捷键不好使，所以鼠标右击吧）


### 一些常用 UI Widget 

注意以下的都是 Widget , 调用的时候都是 XXX() 去调用的

- MaterialApp 谷歌提示的设计风格
- Scaffold 脚手架 快速搭建页面
- AppBar 顶部导航
- Center 居中
- Text 文本
- TextStyle 文本样式


### 常用的一些类

以下的都是些常用的方法类

- Colors 颜色




### 使用本地图片
- 在Flutter 项目里窗机一个文件夹，存储图片
- 在 pubspec.yaml 进行配置
- 使用图片
- 图片会默认缓存的 [默认缓存1000张 100MB](https://api.flutter.dev/flutter/painting/ImageCache-class.html) 
- [参考](https://blog.csdn.net/u011578734/article/details/111935285)












