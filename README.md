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
    - State 里获取 父类的数据 widget.xxxx
- 无状态的 Widget : StatelessWidget 内容是确定的，没有状态
    - 直接写死
    - parent widget 传递
    - inheritWidget 获取

Flutter 中万物皆是 Widget , **在 Flutter 开发中所有的 Widget 都不能定义状态**


### 生命周期

生命周期本质上是回调函数, 主要是讨论 StatefulWidget 的生命周期，从创建到销毁的过程。

- 作用
    - 初始化数据
    - 发送网络请求
    - 监听组件中的事件
    - 管理内存（定时器，控制器的销毁等）


### 状态管理
  - 全局状态




  
### 常用快捷键

- `stl` 快速生成 StatelessWidget
- `option + enter` 设置包裹 Container
- `option + command + b` 可以查看所属的所有实现类
- `option + command + w` 将build 出来的widget 抽取到文件（快捷键不好使，所以鼠标右击吧）


### 一些常用 UI Widget 

注意以下的都是 Widget , 调用的时候都是 XXX() 去调用的

- MaterialApp 谷歌提示的设计风格 各种UI组件
  - ElevatedButton "漂浮"按钮 有圆角 默认带有阴影和灰色背景
  - Icon 图标
  - Scaffold 脚手架 快速搭建页面
  - AppBar 顶部导航
  

- Container 包裹 
- Center 居中
- Row 一行
- Column 垂直排列
- BoxDecoration 盒子装饰（可设置 border、阴影、渐变等）  
- SizedBox 尺寸盒子（设置间距）
- Border.all 设置边框  
- ListView 列表
- Text 文本 内部是调用的 RichText
- Text.rich  丰富的文本 可以加图 加文字等等  图文混排
- TextSpan 文本片段
- TextStyle 文本样式
- WidgetSpan 空 span 吧，可以包裹图标
- Checkbox 单选框
- Image.network 网络图片

### 常用的一些类

以下的都是些常用的方法类

- Colors 颜色 如 Colors.red
- MainAxisAlignment 主轴控制 类似 flex
- CrossAxisAlignment 交叉轴控制 如 end start等  
- setState 状态同步
- EdgeInsets.only 内边距设置 类似于 padding
- Icons 提供各种 icon 图标 如 Icons.add
- TextAlign 文本属性设置 如 TextAlign.center
- TextOverflow.ellipsis 超出省略 ...





### 使用本地图片
- 在Flutter 项目里窗机一个文件夹，存储图片
- 在 pubspec.yaml 进行配置
- 使用图片
- 图片会默认缓存的 [默认缓存1000张 100MB](https://api.flutter.dev/flutter/painting/ImageCache-class.html) 
- [参考](https://blog.csdn.net/u011578734/article/details/111935285)




### 官方地址
- [material ui](https://m3.material.io/styles/icons/overview)
- [Flutter 实战第二版](https://book.flutterchina.club/)
- [Flutter 老孟](http://laomengit.com/)











