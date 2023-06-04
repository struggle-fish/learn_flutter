import 'package:flutter/material.dart';

// void main() => runApp(
//     MyApp()
// );

// TODO: 注意分层


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ZYHomePage()
    );
  }
}

class ZYHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('第一个Flutter')
      ),
      body: ZYContentBody(),
    );
  }
}

class ZYContentBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Text(
          'hello world4',
          style: TextStyle(
              fontSize: 30,
              color: Colors.red
          ),
        )
    );
  }
}

