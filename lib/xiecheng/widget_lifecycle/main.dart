import 'package:flutter/material.dart';

main() {
  runApp(WidgetLifeCycleApp());
}

class WidgetLifeCycleApp extends StatefulWidget {
  const WidgetLifeCycleApp({Key? key}) : super(key: key);

  @override
  State<WidgetLifeCycleApp> createState() => _WidgetLayoutAppState();
}

class _WidgetLayoutAppState extends State<WidgetLifeCycleApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '手势',
      theme: ThemeData(
          primarySwatch: Colors.green,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('生命周期'),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context); // 返回到上一页
            },
            child: Icon(Icons.back_hand),
          ),
        ),
        body: Container(
          child: LifeCycleDemo(),
        )
      ),
    );
  }

}


class LifeCycleDemo extends StatefulWidget {
  const LifeCycleDemo({Key? key}) : super(key: key);

  @override
  State<LifeCycleDemo> createState() => _LifeCycleDemoState();
}

class _LifeCycleDemoState extends State<LifeCycleDemo> {

  @override
  void initState() {
    super.initState();
    print('------------ initState ---------------');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('------------ didChangeDependencies ---------------');
  }

  int _count = 0;

  @override
  Widget build(BuildContext context) {
    print('------------ build ---------------');

    return Center(
      child: Column(
        children: [
          ElevatedButton(
              onPressed: (){
                setState(() {
                  _count += 1;
                });
              },
              child: Text('点击')
          ),
          Text(_count.toString())
        ],
      ),
    );
  }

  @override
  void didUpdateWidget(LifeCycleDemo oldWidget) {
    print('-------didUpdateWidget-------');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    print('-------deactivate-------');
    super.deactivate();
  }

  @override
  void dispose() {
    print('-------dispose-------');
    super.dispose();
  }
}
