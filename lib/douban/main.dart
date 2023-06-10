import 'package:flutter/material.dart';
import 'widgets/star_rating.dart';
import 'widgets/dashed_line.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: HYStarRating(
              rating: 4,
            ),
          ),
          Container(
            width: 200,
            child: HYDashedLine(),
          ),
          Container(
            height: 200,
            child: HYDashedLine(
              axis: Axis.vertical,
              dashedHeight: 6,
              dashedWidth: 2,
              count: 12,
            ),
          )
        ],
      ),
    );
  }
}
// final imageURL1 = 'https://club2.autoimg.cn/album/g30/M02/08/77/userphotos/2020/06/24/18/820_ChsEoF7zMcOAGV5MAAdFGZhTvIs136.jpg';




