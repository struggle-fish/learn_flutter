import 'package:flutter/material.dart';

import 'package:dio/dio.dart';

import 'package:learn_flutter/service/http_request.dart';

class NetWorkBasicDemo extends StatelessWidget {
  const NetWorkBasicDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('网络请求'),
        ),
        body: Column(
          children: [
            // NetWorkDemo(),
            NewtWordDemo2()
          ],
        ),
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
    final dio = Dio();

    // 测试get请求
    dio.get('https://httpbin.org/get').then((value){
      print(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('网络请求23', style: TextStyle(fontSize: 30),)
        ],
      ),
    );
  }
}



class NewtWordDemo2 extends StatefulWidget {
  const NewtWordDemo2({Key? key}) : super(key: key);

  @override
  State<NewtWordDemo2> createState() => _NewtWordDemo2State();
}

class _NewtWordDemo2State extends State<NewtWordDemo2> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    HttpRequest.request(
      'https://httpbin.org/get',
      params: {
        'name': '小铜钱'
      },
        // 某个请求的 自定义拦截
      inter: InterceptorsWrapper(onRequest: (options, handler) {
        print('自定义拦截');
        print(options);
      })
    ).then((res) {
      print(res);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('网络请求')
      ],
    );
  }
}
