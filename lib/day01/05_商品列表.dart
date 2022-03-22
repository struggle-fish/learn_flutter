import 'package:flutter/material.dart';

void main() => runApp(
    MyApp()
);


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        title: Text('商品列表'),
      ),
      body: HomeContent(),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HomeProductItem('苹果1', '苹果手机1', 'https://m1.autoimg.cn/clubdfs/g25/M03/47/99/702x1054_0_autohomecar__ChxkqWInDCKAQN8EABtErDj2elg108.jpg.webp'),
        HomeProductItem('苹果2', '苹果手机2', 'https://m1.autoimg.cn/clubdfs/g25/M08/47/99/702x1054_0_autohomecar__ChxkqWInDCaADSlbABoW0d80OOs535.jpg.webp'),
        HomeProductItem('苹果3', '苹果手机3', 'https://m1.autoimg.cn/clubdfs/g30/M06/D4/5E/702x1054_0_autohomecar__ChwFlGInDCKAIZ7zABci7bSuMBI115.jpg.webp')
      ],
    );
  }
}


class HomeProductItem extends StatelessWidget {
  final String title;
  final String desc;
  final String imageURL;


  const HomeProductItem(this.title, this.desc, this.imageURL);

  @override
  Widget build(BuildContext context) {
    // 可以放到build里面也可以放到外面
    final styleTitle = TextStyle(fontSize: 25, color: Colors.orange);
    final styleDesc = TextStyle(fontSize: 20, color: Colors.green);

    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
          border: Border.all(
            width: 5, // 设置边框高度
            color: Colors.green, // 设置边框颜色
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end, // 设置交叉轴
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(title, style: styleTitle,),
            ],
          ),
          SizedBox(height: 10,),
          Text(desc, style: styleDesc,),
          SizedBox(height: 10,),
          Image.network(imageURL),
        ],
      ),
    );
  }
}
