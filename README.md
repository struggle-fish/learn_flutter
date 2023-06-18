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
    - 初始化数据  initState
    - 发送网络请求
    - 监听组件中的事件
    - 管理内存（定时器，控制器的销毁等）


- 钩子函数
  - initState 初始化
  - didUpdateWidget
  - didChangeDependencies 状态依赖更新
  - build  构建
  - dispose  销毁


初始化列表的目的： 给 final 变量赋值 、校验传递的值
### 状态管理
  - 全局状态


### 常用快捷键

- `stl` 快速生成 StatelessWidget
- `option + enter` 设置包裹 Container
- `option + command + b` 可以查看所属的所有实现类
- `option + command + w` 将build 出来的widget 抽取到文件（快捷键不好使，所以鼠标右击吧）


### 变量的定义

- var
- dynamic  动态更新变量类型
- final  常量 可以动态获取, 比如赋值一个函数
- const 常量  赋值的内容必须是在编译期间就确定下来的


### 一些常用 UI Widget 

注意以下的都是 Widget , 调用的时候都是 XXX() 去调用的

- MaterialApp 谷歌提示的设计风格 各种UI组件
  - ElevatedButton "漂浮"按钮 有圆角 默认带有阴影和灰色背景
  - Scaffold 脚手架 快速搭建页面
    - AppBar 顶部导航
    - BottomNavigationBar 底部导航 2个起步
      - BottomNavigationBarItem 子模块
    

- Container 包裹 有点儿 div 的感觉  宽高、圆角、内边距、形变、阴影、背景图、控制居中。。。
  - DecoratedBox 带装饰的盒子 
    ```flutter
        DecoratedBox(
          decoration: BoxDecoration(
            color: color, 
            border: Border(
              bottom: BorderSide(width: 8, color: Color(0xffcccccc))
            )
          ),
        )
    ```
  - BoxDecoration 盒子装饰（可设置颜色、圆角、 border、阴影、渐变、背景图等）

- SizedBox 用于给子元素指定固定的宽高

- Row 一行排列  注意：这个超出了不会自动换行
- Column 垂直排列
- SizedBox 尺寸盒子（模拟间距）
- Flex 弹性布局   Row 、Column 都是基于 Flex实现的
  - Flexible  Flex 的孩子 可以设置 flex 值 空间分配
  - Expanded  Flex 的孩子 继承自 Flexible
- Stack 层叠布局  默认的大小是包裹内容的大小
- IndexedStack 根据索引 显示不同的页面
- Positioned 绝对定位  类比 position
- Border 边框设置  
  - Border.all 设置边框
  - BorderSide 设置边框宽度和颜色等
- Padding 内边距
- Align 对齐方式 默认居中  把widget放哪儿  有点儿 position 的感觉
- Center 居中
- Card 卡片 颜色 形状 阴影 margin等
- AlertDialog 弹窗  

- ListView 列表 一次创建完
  - ListView.builder 可视区内的创建 推荐用这个
  - ListView.separated 带分割线的 list
  - ListView.custom 
- ListTile 列表项 item 可以设置标题、描述等
- GridView 网格布局
  - GridView.builder


- CustomScrollView  统一管理多个滚动视图，可以放多个滚动widget 在 CustomScrollView 中，每一个独立的，可滚动的 widget 被称为 Sliver
- SliverList 类似 ListView  
- SliverGrid  类似于 GridView
  - SliverChildBuilderDelegate 函数 生成子模块
  - SliverGridDelegateWithFixedCrossAxisCount 函数
- SliverPadding 设置 Sliver 的内边距
- SliverSafeArea 设置内容显示在安全区域（避开刘海遮挡）
- SliverAppBar 添加一个 AppBar 通常用作 CustomScrollView的 HeaderView  可以滚动后吸顶
- FlexibleSpaceBar 可以吸顶导航
- NotificationListener 滚动监听  可以监听什么时候开始，什么时候结束
- RefreshIndicator 下拉刷新 配合 ListView 使用
- PageView 可以做 类似 swiper的一个滑动

- Text 文本 内部是调用的 RichText
- Text.rich  丰富的文本 可以加图 加文字等等  图文混排 可以支持超出后 ...
- TextSpan 文本片段
- WidgetSpan   
- TextStyle 文本样式
- TextField 表单
  - InputDecoration  输入框 input 装饰 内边距、label 、border、默认文案等等吧

  
- TextButton 文本按钮
- CloseButton 关闭按钮  icon 
- BackButton 返回按钮 icon
- ButtonStyle 按钮样式
- ButtonTheme 可以自定义按钮  
- ElevatedButton 圆角按钮
- OutlinedButton 边框按钮
- FloatingActionButton  悬浮按钮
- RoundedRectangleBorder 创建带圆角的矩形边框  可以自定义按钮
- WidgetSpan 空 span 吧，可以包裹图标
- Checkbox 单选框
- Image.network 网络图片
- NetworkImage 加载网络图片
- AssetImage 加载本地图片  Image.asset
- FadeInImage 占位图
- Icon 字体图标
- Divider 分隔线
- Chip  可以做椭圆的一个小部件, 还可以加icon
- ClipRect 裁剪
  - CustomClipper 用这个构建要裁剪的类
- ClipRRect 可以裁剪圆角 如 一个圆角的图片  
  
  ```flutter
    ClipRRect (
      borderRadius: BorderRadius.circular(8),
      child: Image.network(
          movie.imageURL!,
          height: 150,
      ),
    )
  ```
  
- Rect.fromLTRB(0, 0, 15, size.height) 正方形




### 常用的一些类

以下的都是些常用的方法类

- Alignment 对齐方式值 如 Alignment.bottomCenter 、Alignment(1, 1)
- Colors 颜色 如 Colors.red
- MainAxisAlignment 主轴控制 类似 flex 如 MainAxisAlignment.spaceAround
- MainAxisSize 设置主轴占多大 默认是整行  MainAxisSize.min 
- CrossAxisAlignment 交叉轴控制 如 end start等
- setState 状态同步 注意 只在 StatefulWidget内使用
- EdgeInsets.only 内边距值设置 类似于 padding 如 EdgeInsets.all(10)  EdgeInsets.fromLTRB(10 left, 5 top, 10 right, 5 bottom)
- Icons 提供各种 icon 图标 如 Icons.add
- TextAlign 文本属性设置 如 TextAlign.center
- TextOverflow.ellipsis 超出省略 ...
- BorderRadius 圆角 如 BorderRadius.circular(4)
- BoxFit 设置填充方式 如 BoxFit.contain
- Border 边框值设置  如 Border.all()
- BoxShadow 设置盒子的阴影相关  颜色，偏移量 模糊度等  
- InputBorder 表单 border 如 InputBorder.none  
- ImageRepeat 图片重复 如 ImageRepeat.repeatY
- MaterialStateProperty   Material Design设计规范里值的设定  如  MaterialStateProperty.all(Colors.white)
- Duration 设置延时时间 Duration(seconds: 3)
- OutlineInputBorder 设置 input 边框
- TextEditingController  文本输入框 的控制器
- Matrix4 形变值设置  如 Matrix4.skew(0.1, 0) 跟动画相关
- Axis 设置 flex 方向 Axis.vertical(约等于Column)、Axis.horizontal(约等于Row)
  
- List.generate 循环生成widget列表
- SliverGridDelegateWithFixedCrossAxisCount 一个横轴为固定数量子元素的layout算法 在 GridView 里使用
- SliverGridDelegateWithMaxCrossAxisExtent 一个横轴子元素为固定最大长度的layout算法
- Random 随机数 如 Random().nextInt(256)
- ScrollController 获取滚动的一些数据  如 ScrollController(initialScrollOffset: 300)
  -  ```
     // 绑定监听
      ScrollController _controller = ScrollController(initialScrollOffset: 300);
      _controller.addListener(）
     // 回到顶部
      _controller.animateTo(）
     
     ```
- Curves 动画方式 如 Curves.easeIn
- GestureDetector 给文本加点击事件


### Dart 中常用的方法

- cast 方法是一个静态方法，它可以将对象转换为指定类型。该方法的语法如下：

  ```dart
  
    // 语法: T cast<T>(Object value)
     
    Object a = "hello world";
    String b = cast<String>(a);
  ```


### 滚动监听

- controller 属性  ListView 的 controller
  - 可以设置默认的 offset
  - 监听滚动，也可以监听滚动的位置
  
- NotificationListener
  - 监听什么时候开始滚动，什么时候结束滚动
  
- ScrollNotification 滚动通知
  - ScrollStartNotification
  - ScrollUpdateNotification
  - ScrollEndNotification
  


  
### 使用本地图片
- 在Flutter 项目里窗机一个文件夹，存储图片
- 在 pubspec.yaml 进行配置 
  ```
    assets:
      - assets/images/
   ```
- 使用图片
- 图片会默认缓存的 [默认缓存1000张 100MB](https://api.flutter.dev/flutter/painting/ImageCache-class.html) 
- [参考](https://blog.csdn.net/u011578734/article/details/111935285)


### 网络请求

- dio
  
Flutter中非常流行的三方库：dio；dio是一个强大的Dart Http请求库，支持Restful API、FormData、拦截器、请求取消、Cookie管理、文件上传/下载、超时、自定义适配器等...


### 如果将 json 转成 model
 
- 有个疑问哈，比如没有接口，自己mock 数据，怎么做呢






### 异步

- Dart 是单线程的

单线程 + 事件循环 比如 JS 、Dart 都是基于单线程加事件循环来完成耗时操作的处理的。

阻塞和非阻塞关注的是程序在等待调用结果（消息，返回值）是的状态

- 阻塞式调用

调用结果返回之前，当前线程会被挂起，调用线程只有在得到调用结果之后才会继续执行。
点了外卖，不在做任何事情，就是在傻傻等待，你的线程停止了任何其他的工作


- 非阻塞式调用

调用执行后，当前线程不会停止执行，只需要一段时间来检查一下有没有结果返回即可。
点了外卖，继续做其他事情，工作，游戏等，你的线程没有停止执行其他事情，只需要偶尔去看下有没有人敲门，看看外卖有没有送到


- Dart 事件循环

单线程模型中主要是在维护着一个事件循环（Event Loop）。它就是将需要处理的一系列事件（点击事件、IO事件、网络事件）放在一个实践队列中。
不断的从事件队列中取出事件，并执行其对应需要执行的代码，直到事件队列清空。

- Dart 的异步操作

  - `Future` (约等于Promise)
  - `async` 、`await`


- 多核CPU的利用
  - Isolate

  在Dart中，有一个Isolate的概念，它是什么呢？Dart是单线程的，这个线程有自己可以访问的内存空间以及需要运行的事件循环；可以将这个空间系统称之为是一个Isolate；
  比如Flutter中就有一个Root Isolate，负责运行Flutter的代码，比如UI渲染、用户交互等等；在 Isolate 中，资源隔离做得非常好，每个 Isolate 都有自己的 Event Loop 与 Queue，
  Isolate 之间不共享任何资源，只能依靠消息机制通信，因此也就没有资源抢占问题。但是，如果只有一个Isolate，那么意味着我们只能永远利用一个线程，这对于多核CPU来说，是一种资源的浪费。
  如果在开发中，我们有非常多耗时的计算，完全可以自己创建Isolate，在独立的Isolate中完成想要的计算操作。


- 如何创建Isolate呢？

  ```dart

    import "dart:isolate";
    
    main(List<String> args) {
      Isolate.spawn(foo, "Hello Isolate");
    }
    
    void foo(info) {
      print("新的isolate：$info");
    }
        
  ```




### 官方地址
- [material ui](https://m3.material.io/styles/icons/overview)
- [Flutter 实战第二版](https://book.flutterchina.club/)
- [Flutter 老孟](http://laomengit.com/)











