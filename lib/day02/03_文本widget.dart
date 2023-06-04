import 'package:flutter/material.dart';

// void main() => runApp(
//     MyApp()
// );


class TextWidgetDemo extends StatelessWidget {
  const TextWidgetDemo({Key? key}) : super(key: key);

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
  @override
  Widget build(BuildContext context) {
    return TextRichDemo();
  }
}

class TextRichDemo extends StatelessWidget {
  const TextRichDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
        TextSpan(
            text: '你找事儿',
            children: [
              TextSpan(
                  text: '哈哈哈',
                  style: TextStyle(color: Colors.red)
              ),
              TextSpan(
                  text: '哈哈哈2',
                  style: TextStyle(color: Colors.yellow)
              ),
              WidgetSpan(
                  child: Icon(Icons.favorite, color: Colors.red)
              ),
              TextSpan(
                  text: '哈哈哈3',
                  style: TextStyle(color: Colors.green)
              )
            ]
        )
    );
  }
}

// Text Widget
class TextDemo extends StatelessWidget {
  const TextDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '你好，全世界你好，全世界你好，全世界你好，全世界你好，全世界你好，全世界你好，全世界你好，全世界你好，全世界你好，全世界你好，全世界你好，全世界',
      textAlign: TextAlign.center,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: 20,
        color: Colors.red,
      ),
    );
  }
}

















