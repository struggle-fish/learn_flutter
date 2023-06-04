import 'package:flutter/material.dart';

void main() => runApp(
    MyApp()
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ZYHomePage()
    );
  }
}

class ZYHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('第一个Flutter')
      ),
      body: ZYContentBody(),
    );
  }
}

// @override
// Widget build(BuildContext context) {
//   // TODO: implement build
//   return Center(
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Checkbox(value: true, onChanged: (value) {
//           print(value);
//         }),
//         Text('同意协议', style: TextStyle(
//             fontSize: 20
//         ))
//       ],
//     ),
//   );
// }

class ZYContentBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ZYContentBodyState();
  }
}


// widget 不能定义状态
// StatefulWidget 不能定义状态-> 创建一个单独的类，这个类扶着维护状态
class ZYContentBodyState extends State<ZYContentBody> {

  var flag = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
              value: flag,
              onChanged: (value) {
                setState(() {
                  flag = value!;
                });
              },
          ),
          Text(
              '同意协议1',
              style: TextStyle(
              fontSize: 20
          )),
        ],
      ),
    );
  }
}
