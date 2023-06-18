import 'package:flutter/material.dart';
import 'package:learn_flutter/xiecheng/widget_basic/1-stateless_widget.dart';


main() {
  runApp(WidgetApp());
}

class WidgetApp extends StatelessWidget {
  const WidgetApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '数据类型',
      theme: ThemeData(
          primarySwatch: Colors.green,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('widget'),
        ),
        body: Container(
          child: Column(
            children: [
              statelessWidgetDemo()
            ],
          ),
        ),
      ),
    );
  }

}