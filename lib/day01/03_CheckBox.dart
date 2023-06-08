import 'package:flutter/material.dart';

// void main() => runApp(
//     MyApp()
// );

class CheckBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: CheckBoxHomePage()
    );
  }
}

class CheckBoxHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('第一个Flutter')
      ),
      body: CheckBoxContentBody(),
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


class CheckBoxContentBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ZYContentBodyState();
  }
}


// TODO: widget 不能定义状态
// StatefulWidget 不能定义状态-> 创建一个单独的类，这个类负责维护状态
// 在 Flutter 开发中所有的 Widget 都不能定义状态
class ZYContentBodyState extends State<CheckBoxContentBody> {


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
              }
          ),
          Text(
              '同意协议',
              style: TextStyle(
              fontSize: 20
          )),
        ],
      ),
    );
  }
}
