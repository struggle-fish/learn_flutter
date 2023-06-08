import 'package:flutter/material.dart';

// void main() => runApp(
//     MyApp()
// );


class TextWidgetDemo extends StatelessWidget {
  const TextWidgetDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TextWidgetHomePage(),
    );
  }
}

class TextWidgetHomePage extends StatelessWidget {
  const TextWidgetHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('文本widget'),
      ),
      body: TextWidgetHomeContent(),
    );
  }
}

class TextWidgetHomeContent extends StatefulWidget {
  const TextWidgetHomeContent({Key? key}) : super(key: key);

  @override
  State<TextWidgetHomeContent> createState() => _TextWidgetHomeContent();
}

class _TextWidgetHomeContent extends State<TextWidgetHomeContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
        // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextRichDemo(),
        TextDemo()
      ],
    );
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
            text: '你找事找事找事找事找事找事儿2',
            children: [
              TextSpan(
                  text: '哈哈哈11走一个吧你去哪里呢，不知的啊，管他呢',
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
        ),
        textAlign: TextAlign.left,
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

















