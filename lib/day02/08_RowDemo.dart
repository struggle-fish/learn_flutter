import 'package:flutter/material.dart';



class RowBasicDemo extends StatelessWidget {
  const RowBasicDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('弹性布局'),
        ),
        body: ListView(
          children: [
            FlexDemo(),
            RowDemo(),
            RowDemo2(),
          ],
        ),
      ),
    );
  }
}

class FlexDemo extends StatelessWidget {
  const FlexDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 80,
            height: 80,
            color: Colors.red,
            child: Text('模块1', style: TextStyle(fontSize: 30),),
          ),
          Container(
            width: 80,
            height: 80,
            color: Colors.red,
            child: Text('模块2', style: TextStyle(fontSize: 30),),
          ),
          Container(
            width: 80,
            height: 80,
            color: Colors.red,
            child: Text('模块3', style: TextStyle(fontSize: 30),),
          )
        ],
    );
  }
}


class RowDemo extends StatelessWidget {
  const RowDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          // 空间分配z
          fit: FlexFit.loose,
          flex: 1,
          child: Container(
            width: 80,
            height: 80,
            color: Colors.red,
            child: Text('哈哈哈'),
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          flex: 2,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            width: 1,
            height: 60,
            color: Colors.blue,
          ),
        ),
        Container(
          width: 50,
          height: 120,
          color: Colors.orange,
        )
      ],
    );
  }
}



class RowDemo2 extends StatelessWidget {
  const RowDemo2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      // mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 80,
          height: 80,
          color: Colors.red,
          child: Text(
            '你好全世界',
            style: TextStyle(
                fontSize: 30
            ),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.green,
          child: Text(
            '你好全世界',
            style: TextStyle(
                fontSize: 30
            ),
          ),
        ),
        Container(
          width: 120,
          height: 60,
          color: Colors.blue,
          child: Text(
            '你好全世界',
            style: TextStyle(
                fontSize: 30
            ),
          ),
        ),
        Container(
          width: 50,
          height: 120,
          color: Colors.orange,
          child: Text(
            '你好全世界',
            style: TextStyle(
                fontSize: 20
            ),
          ),
        )
      ],
    );
  }
}