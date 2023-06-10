import 'package:flutter/material.dart';
import 'widgets/star_rating.dart';
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
          primarySwatch: Colors.blue, splashColor: Colors.transparent),
      home: DouBanHomePage(),
    );
  }
}

class DouBanHomePage extends StatelessWidget {
  const DouBanHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('豆瓣app'),
      ),
      body: Center(
        child: HYStarRating(
          rating: 4,
        ),
      ),
    );
  }
}
// final imageURL1 = 'https://club2.autoimg.cn/album/g30/M02/08/77/userphotos/2020/06/24/18/820_ChsEoF7zMcOAGV5MAAdFGZhTvIs136.jpg';


