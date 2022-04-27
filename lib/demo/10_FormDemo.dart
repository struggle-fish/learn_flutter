import 'package:flutter/material.dart';


class FormDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单组件'),
      ),
        body: Theme(
          data: Theme.of(context).copyWith(
            primaryColor: Colors.black
          ),
          child: Container(
            padding:EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RegisterFormDemo()
              ],
            ),
          ),
        ),
    );
  }
}


class RegisterFormDemo extends StatefulWidget {
  const RegisterFormDemo({Key? key}) : super(key: key);

  @override
  State<RegisterFormDemo> createState() => _RegisterFormDemoState();
}

class _RegisterFormDemoState extends State<RegisterFormDemo> {

  final _registerFormKey = GlobalKey<FormState>();
  var _userName;
  var _passWord;
  bool autoValidate = false;

  String _validatorUserName(value) {
    if (value.isEmpty) {
      return '不能为空';
    }
    return '';
  }

  String _validatorPassWord(value) {
    if (value.isEmpty) {
      return '不能为空';
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _registerFormKey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: '用户名',
                helperText: ''
              ),
              onSaved: (value) {
                _userName = value;
              },
              validator: _validatorUserName,
              // autovalidateMode: AutovalidateMode.onUserInteraction,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: '密码',
              ),
              onSaved: (value) {
                _passWord = value;
              },
              validator: _validatorPassWord,
            ),
            SizedBox(height: 32),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.indigoAccent),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                child: Text('登录'),
                onPressed: () {
                  print(!_registerFormKey.currentState!.validate());
                  _registerFormKey.currentState!.validate();
                  _registerFormKey.currentState!.save();
                  print('用户名-${_userName}---密码${_passWord}');
                  // TODO:不知道。。
                  // Scaffold.of(context).showBottomSheet((context) => SnackBar(content: Text('注册中---')));
                },
              ),
            )
          ],
        )
    );
  }
}


class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({Key? key}) : super(key: key);

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {

  final _textEditingController = TextEditingController();


  @override
  void dispose() {
    // TODO: implement dispose
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _textEditingController.text = '啊哈哈哈---';

    // 类似onChanged
    _textEditingController.addListener(() {
      print('input-控制器监听--${_textEditingController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: _textEditingController,
        // onChanged: (value) {
        //   print(value);
        // },
        onSubmitted: (value){
          print('submit-${value}');
        },
        decoration: InputDecoration(
          icon: Icon(Icons.subject),
          labelText: 'Title',
          hintText: '我是提示文字',
          border: OutlineInputBorder(),
          // filled: true
        ),
    );
  }
}






class ThemeDemo extends StatelessWidget {
  const ThemeDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
    );
  }
}
