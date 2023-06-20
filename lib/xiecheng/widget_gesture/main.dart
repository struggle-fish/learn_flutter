import 'package:flutter/material.dart';

main() {
  runApp(WidgetGestureApp());
}

class WidgetGestureApp extends StatefulWidget {
  const WidgetGestureApp({Key? key}) : super(key: key);

  @override
  State<WidgetGestureApp> createState() => _WidgetLayoutAppState();
}

class _WidgetLayoutAppState extends State<WidgetGestureApp> {

  String printStr = '';
  double moveX = 0, moveY = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '手势',
      theme: ThemeData(
          primarySwatch: Colors.green,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('手势'),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context); // 返回到上一页
            },
            child: Icon(Icons.back_hand),
          ),
        ),
        body: FractionallySizedBox(
          widthFactor: 1,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => _printMsg('点击'),
                    onDoubleTap: () => _printMsg('双击'),
                    onLongPress: () => _printMsg('长按'),
                    onTapCancel: () => _printMsg('取消'),
                    onTapUp: (e) => _printMsg('松开'),
                    onTapDown: (e) => _printMsg('按下去'),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.pink,
                      ),
                      child: Text('点击我'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(printStr),
                  )
                ],
              ),
              Positioned(
                left: moveX,
                top: moveY,
                child: GestureDetector(
                  onPanUpdate: (e) => _doMove(e),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(50)
                    ),
                  ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }


  _printMsg(String msg) {
    setState(() {
      printStr += ', ${msg}';
    });
    print(printStr);
  }

  _doMove(DragUpdateDetails e) {
    setState(() {
      moveY += e.delta.dy;
      moveX += e.delta.dx;
    });
  }
}