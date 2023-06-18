import 'package:flutter/material.dart';
import 'package:learn_flutter/xiecheng/dart_basis/2-%E9%9D%A2%E5%90%91%E5%AF%B9%E8%B1%A1.dart';
import '1-数据类型.dart';




main() {
  runApp(XieChengApp());
}

class XieChengApp extends StatelessWidget {
  const XieChengApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _oopLearn();


    return MaterialApp(
      title: '数据类型',
      theme: ThemeData(
          primarySwatch: Colors.green,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('数据类型'),
        ),
        body: DataType(),
      ),
    );
  }

  _oopLearn() {
    print('工厂模式');
    Logger log1 = Logger('工厂1');
    Logger log2 = Logger('工厂1');
    print(log1 == log2);
  }
}