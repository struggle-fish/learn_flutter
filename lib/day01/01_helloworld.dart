import 'package:flutter/material.dart';

void main() {
  // 1. runApp 函数
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