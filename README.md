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
  - Scaffold 脚手架 快速搭建页面
  - AppBar 顶部导航
  

- Container 包裹 有点儿 div 的感觉  宽高、内边距、形变、阴影、背景。。。
- BoxDecoration 盒子装饰（可设置颜色、圆角、 border、阴影、渐变等）

- Row 一行排列 
- Column 垂直排列
- SizedBox 尺寸盒子（模拟间距）
- Flex 弹性布局   Row 、Column 都是基于 Flex实现的
  - Flexible  Flex 的孩子 可以设置 flex 值 空间分配
  - Expanded  Flex 的孩子 继承自 Flexible
- Stack 层叠布局  默认的大小是包裹内容的大小
- Positioned 绝对定位  类比 position
- Border.all 设置边框  
- Padding 内边距
- Align 对齐方式 默认居中  把widget放哪儿  有点儿 position 的感觉
- Center 居中

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


- Text 文本 内部是调用的 RichText
- Text.rich  丰富的文本 可以加图 加文字等等  图文混排
- TextSpan 文本片段
- TextStyle 文本样式
- TextField 表单
- InputDecoration  输入框 input
- TextButton 文本按钮
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




### 常用的一些类

以下的都是些常用的方法类

- Alignment 对齐方式值 如 Alignment.bottomCenter 、Alignment(1, 1)
- Colors 颜色 如 Colors.red
- MainAxisAlignment 主轴控制 类似 flex 如 MainAxisAlignment.spaceAround
- MainAxisSize 设置主轴占多大 默认是整行  MainAxisSize.min 
- CrossAxisAlignment 交叉轴控制 如 end start等
- setState 状态同步 注意 只在 StatefulWidget内使用
- EdgeInsets.only 内边距值设置 类似于 padding 如 EdgeInsets.all(10)
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




### 官方地址
- [material ui](https://m3.material.io/styles/icons/overview)
- [Flutter 实战第二版](https://book.flutterchina.club/)
- [Flutter 老孟](http://laomengit.com/)











