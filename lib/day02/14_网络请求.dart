import 'package:flutter/material.dart';

import 'package:dio/dio.dart';

class NetWorkBasicDemo extends StatelessWidget {
  const NetWorkBasicDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('网络氢气'),
        ),
        body: NetWorkDemo(),
      ),
    );
  }
}

class NetWorkDemo extends StatefulWidget {
  const NetWorkDemo({Key? key}) : super(key: key);

  @override
  State<NetWorkDemo> createState() => _NetWorkDemoState();
}

class _NetWorkDemoState extends State<NetWorkDemo> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // 发送网络请求
    

  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
