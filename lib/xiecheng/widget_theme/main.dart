import 'package:flutter/material.dart';

class WidgetThemeDemo extends StatefulWidget {
  const WidgetThemeDemo({Key? key}) : super(key: key);

  @override
  State<WidgetThemeDemo> createState() => _WidgetThemeDemoState();
}

class _WidgetThemeDemoState extends State<WidgetThemeDemo> {

  Brightness brightness = Brightness.light;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '主题修改',
      theme: ThemeData(
        brightness: brightness,
        primarySwatch: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('动态主题'),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.back_hand),
          ),
        ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (brightness == Brightness.dark) {
                      brightness = Brightness.light;
                    } else {
                      brightness = Brightness.dark;
                    }
                  });
                },
                child: Text('主题修改'))
          ],
        ),
      ),
    );
  }
}
