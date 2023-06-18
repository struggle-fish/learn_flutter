import 'package:flutter/material.dart';

class statelessWidgetDemo extends StatelessWidget {
  const statelessWidgetDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    TextStyle textStyle = TextStyle(fontSize: 20, color: Colors.white);

    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.orange
      ),
      child: Column(
        children: [
          Text('我是文本', style: textStyle,),
          Icon(Icons.android, size: 50, color: Colors.white,),
          CloseButton(),
          BackButton(),
          Chip(
            avatar: Icon(Icons.people),
            label: Text('啊哈哈哈'),
          ),
          Divider(
            height: 10,
            indent: 10,
            color: Colors.white,
          ),
          SizedBox(height: 10,),
          Card(
            color: Colors.blueGrey,
            elevation: 5,
            margin: EdgeInsets.all(10),
            child: Container(
              child: Text('Card', style: textStyle,),
            ),
          ),
          AlertDialog(
            title: Text('弹窗'),
            content: Text('内容'),
          )
        ],
      ),
    );
  }
}
