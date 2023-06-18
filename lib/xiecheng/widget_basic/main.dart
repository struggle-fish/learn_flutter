import 'package:flutter/material.dart';
import 'package:learn_flutter/xiecheng/widget_basic/1-stateless_widget.dart';
import '2-有状态组件.dart';

main() {
  runApp(WidgetApp());
}

class WidgetApp extends StatefulWidget {
  const WidgetApp({Key? key}) : super(key: key);

  @override
  State<WidgetApp> createState() => _WidgetAppState();
}

class _WidgetAppState extends State<WidgetApp> {
  int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '一些组件',
      theme: ThemeData(
          primarySwatch: Colors.green,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('widget'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex, // 选中第几个
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: '首页',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
                label: '首页2',
                icon: Icon(Icons.home)
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text('按钮'),
        ),
        body: RefreshIndicator(
          onRefresh: _handleFuture,
          child: ListView(
            children: [
              Container(
                child: Column(
                  children: [
                    statelessWidgetDemo(),
                    StatefulWidgetDemo(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }


  Future<Null> _handleFuture() async{
    await Future.delayed(Duration(seconds: 2));
    return null;
  }
}
