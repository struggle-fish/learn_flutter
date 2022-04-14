import 'package:flutter/material.dart';
class ContainerDemo extends StatelessWidget {
  const ContainerDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      width: 200,
      height: 200,
      alignment: Alignment.center,
      margin: EdgeInsets.all(10), // 外边距
      decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(
              width: 0.5,
              color: Colors.green
          ),
          borderRadius: BorderRadius.circular(20), // 设置圆角
          boxShadow: [
            BoxShadow(
              color: Colors.orange,
              offset: Offset(10, 10),
              spreadRadius: 2, // 延伸
              blurRadius: 10,
            ),
            BoxShadow(
              color: Colors.green,
              offset: Offset(-10, 10),
              spreadRadius: 2, // 延伸
              blurRadius: 10,
            )
          ]
      ),
      // transform: Matrix4.skew(0.1, 0), // 形变
      child: Text('你好全世界', style: TextStyle(color: Colors.white),),
    );
  }
}

class PaddingDemo extends StatelessWidget {
  const PaddingDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
          child: Text(
            '你好全世界',
            style: TextStyle(
              fontSize: 20,
              backgroundColor: Colors.red,
            ),
          ),
        ),
        Text(
          '你好全世界',
          style: TextStyle(
            fontSize: 20,
            backgroundColor: Colors.red,
          ),
        ),
        Text(
          '你好全世界',
          style: TextStyle(
            fontSize: 20,
            backgroundColor: Colors.red,
          ),
        )
      ],
    );
  }
}

class AlignDemo extends StatelessWidget {
  const AlignDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.red,
      child: Align(
          alignment: Alignment(1, 1), // 默认居中
          child: Icon(
            Icons.pets,
            size: 50,
          )
      ),
    );
  }
}
