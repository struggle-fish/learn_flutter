
import 'package:flutter/material.dart';


class StackBasicDemo extends StatelessWidget {
  const StackBasicDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack'),
        ),
        body: ListView(
          children: [
            StackDemo(),
            StackDemo2()
          ],
        ),
      ),
    );
  }
}

class StackDemo2 extends StatefulWidget {
  const StackDemo2({
    Key? key,
  }) : super(key: key);

  @override
  State<StackDemo2> createState() => _StackDemo2State();
}

class _StackDemo2State extends State<StackDemo2> {
  bool _isfavorite = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/autohomedealer__ChwFRl_7xauAaYWPAAFcSUswvQ0960.jpeg"),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.all(8),
            color: Color.fromARGB(150, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('你好全世界', style: TextStyle(color: Colors.white),),
                IconButton(
                    onPressed: () {
                      setState(() {
                        _isfavorite = !_isfavorite;
                      });
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: _isfavorite ? Colors.red : Colors.white
                    )
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class StackDemo extends StatelessWidget {
  const StackDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*
      Stack 默认的大小是 包裹内容的
        - alignment 从什么位置开始排布所有的子widget
        - fit： expand（很少）将子元素拉伸到尽可能大
        - overflow: 超出部分如何处理

    * */
    return Stack(
      alignment: AlignmentDirectional.topCenter, // 哪个位置开始排布
      children: [
        Container(
          width: 500,
          height: 500,
          color: Colors.red,
        ),
        Image.asset("assets/images/autohomedealer__ChwFRl_7xauAaYWPAAFcSUswvQ0960.jpeg"),
        Positioned(
            right: 0,
            bottom: 0,
            child: Text(
              '你好全世界',
              style: TextStyle(
                  backgroundColor: Colors.green
              ),
            )
        )
      ],
    );
  }
}