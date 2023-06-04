import 'package:flutter/material.dart';

// void main() => runApp(
//     MyApp()
// );


class StatefulWidgetDemo extends StatelessWidget {
  const StatefulWidgetDemo({Key? key}) : super(key: key);

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
        title: Text('StatefulWidget'),
      ),
      body: HomeContent('homecontent'),
    );
  }
}

class HomeContent extends StatefulWidget {
  final message;

  // 构造函数
  const HomeContent(this.message, {Key? key}) : super(key: key);

  @override
  State<HomeContent> createState() => _HomeContentState();
}

/*
* 为什么 build 放到 State里？
* 1、build 出来的widget 是需要依赖State 中的变量（状态）
* 2、在 Flutter 在运行过程中  Widget 是不断的销毁创建的，当自己的状态发生改变时，并不希望重新创建一个新的State
*
* */
// TODO: _ 表示内部可访问 状态一般都用下划线
class _HomeContentState extends State<HomeContent> {
  var _counter = 0;

  // TODO: widget.message 获取父类的属性

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _getButtons(),
          Text('当前计数:${_counter}', style: TextStyle(fontSize: 20),),
          Text('传递过来的数据-${widget.message}')
        ],
      ),
    );
  }

  Widget _getButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: () {
              setState(() {
                _counter++;
              });
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
            ) ,
            child: Row(
              children: [
                Icon(Icons.add),
                Text('按钮')
              ],
            )
        ),
        ElevatedButton(
            onPressed: (){
              setState(() {
                _counter--;
              });
            },
            child: Row(
              children: [
                Icon(Icons.delete),
                Text('按钮')
              ],
            )
        )
      ],
    );
  }
}














