import 'package:flutter/material.dart';



class StateFulWidgetGroupDemo extends StatelessWidget {
  const StateFulWidgetGroupDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('有状态widget'),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.ac_unit),
        ),
      ),
      body: StatefulWidgetDemo(),
    );
  }
}



class StatefulWidgetDemo extends StatefulWidget {
  const StatefulWidgetDemo({Key? key}) : super(key: key);

  @override
  State<StatefulWidgetDemo> createState() => _StatefulWidgetDemoState();
}

class _StatefulWidgetDemoState extends State<StatefulWidgetDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.network('https://img2.baidu.com/it/u=3354585195,1512541150&fm=253&app=138&size=w931&n=0&f=JPEG&fmt=auto?sec=1687194000&t=dc7fe8ac4314987bea620791961bd6c8'),
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              hintText: '请输入',
              hintStyle: TextStyle(fontSize: 20)
            ),
          ),
          Container(
            height: 100,
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
            ),
            child: PageView(
              children: [
                _item('page1', Colors.pink),
                _item('page2', Colors.black),
                _item('page3', Colors.blueGrey ),
              ],
            ),
          )
        ],
      ),
    );
  }


  _item(String title, Color color) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(color: color),
      child: Text(title, style: TextStyle(fontSize: 20, color: Colors.white),),
    );
  }
}
