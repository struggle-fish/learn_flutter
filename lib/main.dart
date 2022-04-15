import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learn_flutter/day02/05_ImageDemo.dart';
import 'package:learn_flutter/day02/06_TextFileDemo.dart';
import 'package:learn_flutter/day02/07_LayoutDemo1.dart';
import 'package:learn_flutter/day02/08_RowDemo.dart';
import 'package:learn_flutter/day02/09_StackDemo.dart';

void main() => runApp(
    MyApp()
);


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ZYHomePage(),
    );
  }
}

class ZYHomePage extends StatelessWidget {
  const ZYHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('基础widget2111'),
      ),
      body: HomeContent(),
    );
  }
}

class HomeContent extends StatefulWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  final imageURL = 'https://club2.autoimg.cn/a lbum/g26/M02/4C/44/userphotos/2020/07/25/10/820_ChwFkF8bniOAU_8EAJavO73o2KM848.jpg';


  final usernameTextEditController = TextEditingController();
  final passwordTextEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return  Text('你好全世界');
  }
}















