
import 'package:flutter/material.dart';

class StackDemo2 extends StatelessWidget {
  const StackDemo2({
    Key? key,
  }) : super(key: key);

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
            child: Text('你好全世界', style: TextStyle(color: Colors.white),),
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
            child: Text('你好全世界', style: TextStyle(backgroundColor: Colors.green),)
        )
      ],
    );
  }
}