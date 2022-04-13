import 'package:flutter/material.dart';
import 'package:learn_flutter/day02/05_ImageDemo.dart';
import 'package:learn_flutter/day02/06_TextFileDemo.dart';

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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){}
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class HomeContent extends StatefulWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  final imageURL = 'https://club2.autoimg.cn/album/g26/M02/4C/44/userphotos/2020/07/25/10/820_ChwFkF8bniOAU_8EAJavO73o2KM848.jpg';


  final usernameTextEditController = TextEditingController();
  final passwordTextEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return TextFiledDemo();
  }
}






















