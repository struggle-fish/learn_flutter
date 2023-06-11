import 'package:flutter/material.dart';
import 'widgets/star_rating.dart';
import 'widgets/dashed_line.dart';
import 'pages/main/main.dart';
main() {
  runApp(DouBanApp());
}

class DouBanApp extends StatelessWidget {
  const DouBanApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '豆瓣',
      theme: ThemeData(
          primarySwatch: Colors.green,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent
      ),
      home: HYMainPage(),
    );
  }
}


// final imageURL1 = 'https://club2.autoimg.cn/album/g30/M02/08/77/userphotos/2020/06/24/18/820_ChsEoF7zMcOAGV5MAAdFGZhTvIs136.jpg';




