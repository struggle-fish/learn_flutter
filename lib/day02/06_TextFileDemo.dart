import 'package:flutter/material.dart';


class TextFileBasicDemo extends StatelessWidget {
  const TextFileBasicDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('输入框'),
        ),
        body: TextFiledDemo(),
      ),
    );
  }
}

class TextFiledDemo extends StatefulWidget {
  const TextFiledDemo({Key? key}) : super(key: key);

  @override
  State<TextFiledDemo> createState() => _TextFiledDemoState();
}

class _TextFiledDemoState extends State<TextFiledDemo> {

  final usernameTextEditController = TextEditingController();
  final passwordTextEditController = TextEditingController();


  var username;
  var password;
  
  
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primaryColor: Colors.green,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: usernameTextEditController,
              decoration: InputDecoration(
                  labelText: 'username',
                  icon: Icon(Icons.people),
                  hintText: '请输入用户名',
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.red[100]
              ),
              onChanged: (value) {
                setState(() {
                  username = value;
                });

                print(value);
              },
              onSubmitted: (value) {
                print('提交${value}');
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: passwordTextEditController,
              decoration: InputDecoration(
                  labelText: 'password',
                  icon: Icon(Icons.lock),
                  hintText: '请输入密码',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.red[100]
              ),
              onChanged: (value) {
                setState(() {
                  password = value;
                });
                print(value);
              },
              onSubmitted: (value) {
                print('提交密码${value}');
              },
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {

                    // 获取用户名和密码
                    final usernameText = usernameTextEditController.text;
                    final passwordText = passwordTextEditController.text;

                    print('用户名:${usernameText}, 密码:${passwordText}');
                  },
                  child: Text('登录')
              ),
            ),
            Text('输入的用户名是${ username}, 密码是${password}')
          ],
        ),
      ),
    );
  }
}


