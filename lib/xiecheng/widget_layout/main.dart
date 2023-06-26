import 'package:flutter/material.dart';

main() {
  runApp(WidgetLayoutApp());
}





class WidgetLayoutApp extends StatefulWidget {
  const WidgetLayoutApp({Key? key}) : super(key: key);

  @override
  State<WidgetLayoutApp> createState() => _WidgetLayoutAppState();
}

class _WidgetLayoutAppState extends State<WidgetLayoutApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '布局类组件',
      theme: ThemeData(
          primarySwatch: Colors.green,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('布局类组件'),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.ac_unit),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Row(
                children: [

                  ClipOval(
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blueGrey
                          ),
                          child: Image.network(
                              'https://img0.baidu.com/it/u=3794430030,3426009381&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=750',
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.pink
                        ),
                        child: Image.network(
                          'https://img0.baidu.com/it/u=3794430030,3426009381&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=750',
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 100,
                margin: EdgeInsets.all(10),
                // decoration: BoxDecoration(
                //   color: Colors.lightBlueAccent,
                // ),
                child: PhysicalModel(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                  clipBehavior: Clip.antiAlias,
                  child:  PageView(
                    children: [
                      _item('page1', Colors.pink),
                      _item('page2', Colors.black),
                      _item('page3', Colors.blueGrey ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  FractionallySizedBox(
                    widthFactor: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blueGrey
                      ),
                      child: Text('模块1'),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Image.network(
                      'https://img0.baidu.com/it/u=3673910398,1309627678&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=736',

                    width: 100,
                    height: 100,
                  ),
                  Positioned(
                      left: 0,
                      bottom: 0,
                      child: Image.network(
                          'https://img0.baidu.com/it/u=630899170,2086123604&fm=253&fmt=auto&app=138&f=JPEG?w=333&h=500',
                        width: 50,
                        height: 50,
                      ),
                  )

                ],
              ),
              Wrap(
                spacing: 9,
                runSpacing: 6,
                children: [
                  _clip('Flutter'),
                  _clip('进阶'),
                  _clip('实战'),
                  _clip('写成'),
                  _clip('App')
                ],
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue
                  ),
                  child: Text('模块'),
                ),
              )
            ],
          ),
        ),
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

  _clip(String label) {
    return Chip(
      label: Text(label),
      avatar: CircleAvatar(
        backgroundColor: Colors.blue,
        child: Text(
          label.substring(0, 1),
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}