import 'package:flutter/material.dart';
import 'package:learn_flutter/demo/01_%E5%BF%AB%E9%80%9F%E8%B5%B7%E6%AD%A5.dart';


class StateLessWidgetGroupDemo extends StatefulWidget {
  const StateLessWidgetGroupDemo({Key? key}) : super(key: key);

  @override
  State<StateLessWidgetGroupDemo> createState() => _StateLessWidgetGroupDemoState();
}

class _StateLessWidgetGroupDemoState extends State<StateLessWidgetGroupDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('无状态widget和组件'),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.ac_unit),
        ),
      ),
      body: statelessWidgetDemo(),
    );
  }
}


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
