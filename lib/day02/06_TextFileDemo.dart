import 'package:flutter/material.dart';

class TextFiledDemo extends StatelessWidget {

  final usernameTextEditController = TextEditingController();
  final passwordTextEditController = TextEditingController();

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
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.red[100]
              ),
              onChanged: (value) {
                print(value);
              },
              onSubmitted: (value) {
                print('提交密码${value}');
              },
            ),
            Container(
              width: 100,
              child: ElevatedButton(
                  onPressed: () {
                    // 获取用户名和密码
                    final username = usernameTextEditController.text;
                    final password = passwordTextEditController.text;
                    print('用户名:${username}, 密码:${password}');
                  },
                  child: Text('登录')
              ),
            )
          ],
        ),
      ),
    );
  }
}
