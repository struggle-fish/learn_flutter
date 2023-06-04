import 'package:flutter/material.dart';


/*

void main() {
  // 1. TODO: 全局函数 runApp 在 material 里提供
  runApp(
     Center(
       child: Text(
         '你好1313213123',
         textDirection: TextDirection.rtl,
         style: TextStyle(
             fontSize: 30,
             color: Colors.orange
         ),
       ),
     )
  );
}

*/


void main() {
  // 1. TODO: 全局函数 runApp 在 material 里提供
  // 2. MaterialApp 设计风格
  runApp(
      MaterialApp(
          home: Scaffold(
            appBar: AppBar(
                title: Text('第一个Flutter')
            ),
            body: Center(
                child: Text(
                  'hello world',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.red
                  ),
                )
            ),
          )
      )
  );
}