import 'package:flutter/material.dart';

import 'package:learn_flutter/xiecheng/widget_basic/1-stateless_widget.dart';
import 'package:learn_flutter/xiecheng/widget_basic/2-%E6%9C%89%E7%8A%B6%E6%80%81%E7%BB%84%E4%BB%B6.dart';
import 'package:learn_flutter/xiecheng/widget_gesture/main.dart';
import 'package:learn_flutter/xiecheng/widget_layout/main.dart';
import 'package:learn_flutter/xiecheng/widget_lifecycle/app_lifecycle.dart';
import 'package:learn_flutter/xiecheng/widget_lifecycle/main.dart';
import 'package:learn_flutter/xiecheng/widget_theme/main.dart';

main() {
  runApp(DemoBasicApp());
}

class DemoBasicApp extends StatefulWidget {
  const DemoBasicApp({Key? key}) : super(key: key);

  @override
  State<DemoBasicApp> createState() => _WidgetLayoutAppState();
}

class _WidgetLayoutAppState extends State<DemoBasicApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '路由',
      theme: ThemeData(
          // fontFamily: 'RubikMonoOne',
          primarySwatch: Colors.green,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('路由'),
        ),
        body: RouterNavigator(),
      ),
      // 配置路由name 可以通过name跳转页面
      routes: {
        'less': (context) => StateLessWidgetGroupDemo(),
        'full': (context) => StateFulWidgetGroupDemo(),
        'gesture': (context) => WidgetGestureApp(),
        'lifecycle': (context) => WidgetLifeCycleApp(),
        'applifecycle': (context) => WidgetAppLifeCycleApp(),
        'layout': (context) => WidgetLayoutApp(),
        'theme': (context) => WidgetThemeDemo()
      },
    );
  }

}

class RouterNavigator extends StatefulWidget {
  const RouterNavigator({Key? key}) : super(key: key);

  @override
  State<RouterNavigator> createState() => _RouterNavigatorState();
}

class _RouterNavigatorState extends State<RouterNavigator> {
  bool byName = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SwitchListTile(
              title: Text("${byName ? '通过routename' : '通过push'}路由跳转"),
              value: byName,
              onChanged: (value) {
                setState(() {
                  byName = value;
                });
              }
          ),
          _item('statelesswidget与组件', StateLessWidgetGroupDemo(), 'less'),
          _item('statefullwidget与组件', StateFulWidgetGroupDemo(), 'full'),
          _item('手势控制', WidgetGestureApp(), 'gesture'),
          _item('生命周期', WidgetLifeCycleApp(), 'lifecycle'),
          _item('app应用生命周期', WidgetAppLifeCycleApp(), 'applifecycle'),
          _item('layoutswidget与组件', WidgetLayoutApp(), 'layout'),
          _item('主题修改', WidgetThemeDemo(), 'theme'),
        ],
      ),
    );
  }

  _item(String title, page, String routeName) {
    return Container(
      child: TextButton(
        onPressed: () {
          if(byName) {
            Navigator.pushNamed(context, routeName);
          } else {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => page)
            );
          }
        },
        child: Text(title),
      ),
    );
  }
}