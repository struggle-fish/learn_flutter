import 'package:flutter/material.dart';

void main() => runApp(
    MyApp()
);


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ZYHomePage(),
    );
  }
}

class ZYHomePage extends StatefulWidget {
  const ZYHomePage({Key? key}) : super(key: key);

  @override
  State<ZYHomePage> createState() => _ZYHomePageState();
}

class _ZYHomePageState extends State<ZYHomePage> {
  final List<Widget> widgets = [HomeContent()];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
      ),
      body: Column(
        children: widgets,
      ),
      floatingActionButton: ElevatedButton.icon(
          onPressed: (){
            setState(() {
              // 这里主要是为了点击的时候，让父widget 发生改变---进而查看didUpdateWidget生命周期
              widgets.insert(0, Text('你好全世界'));
            });
          },
          icon: Icon(Icons.add), label: Text('添加啊')),
    );
  }
}


class HomeContent extends StatefulWidget {
  HomeContent() {
    print('1---调用HomeContent的constructor');
  }

  @override
  State<HomeContent> createState() {
    print('2---调用HomeContent的createState方法');
    return _HomeContentState();
  }
}

class _HomeContentState extends State<HomeContent> {
  int _counter = 0;

  _HomeContentState() {
    print('3---调用_HomeContentState的constructor');
  }

  @override
  void initState() {
    print('4---调用initState');
    // 这里必须调用 super
    super.initState();
  }

  @override
  void didUpdateWidget(covariant HomeContent oldWidget) {
    // TODO: implement didUpdateWidget
    // 这个没演示成功
    print('----didUpdateWidget---用的比较少');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    print('---状态依赖更新');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print('5---调用build');
    return Column(
      children: [
        ElevatedButton(onPressed: () {
          setState(() {
            _counter++;
          });
        }, child: Text('点击')),
        Text('当前数字${_counter}')
      ],
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    print('6---调用dispose销毁方法');
    super.dispose();
  }
}

















