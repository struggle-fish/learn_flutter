import 'package:flutter/material.dart';
import 'package:learn_flutter/demo/01_%E5%BF%AB%E9%80%9F%E8%B5%B7%E6%AD%A5.dart';

class WidgetAppLifeCycleApp extends StatefulWidget {
  const WidgetAppLifeCycleApp({Key? key}) : super(key: key);

  @override
  State<WidgetAppLifeCycleApp> createState() => _WidgetLayoutAppState();
}

class _WidgetLayoutAppState extends State<WidgetAppLifeCycleApp> with WidgetsBindingObserver {


  @override
  void initState() {
    // TODO: 注意这里需要添加一个观察
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('应用的生命周期'),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.back_hand),
        ),
      ),
      body: Container(
        child: Text('app应用的声明周期'),
      ),
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    print('state = $state');
    if (state == AppLifecycleState.paused) {
      print('app进入后台');
    } else if (state == AppLifecycleState.resumed) {
      print('app 进入前台');
    } else if (state == AppLifecycleState.inactive) {
      // 这个不常用，应用程序处于非激活状态，并且未接收用户输入是调用，比如来个电话
    } else if (state == AppLifecycleState.detached) {
      print('app detached');
    }

  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}


