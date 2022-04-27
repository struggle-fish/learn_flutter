import 'package:flutter/material.dart';

class PopupMenuButtonDemo extends StatefulWidget {
  const PopupMenuButtonDemo({Key? key}) : super(key: key);

  @override
  State<PopupMenuButtonDemo> createState() => _PopupMenuButtonDemoState();
}

class _PopupMenuButtonDemoState extends State<PopupMenuButtonDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupMenuButtonDemo'),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  PopupMenuButton(
                    onSelected: (value) {
                      // TODO: 这个函数居然不触发好奇怪啊
                      print('当前value是${value}');
                    },
                    itemBuilder: (BuildContext context) => [
                        PopupMenuItem(
                            child: Text('Home'),
                            enabled: false,
                            onTap: () {
                              print('点击了home按钮');
                            }
                        ),
                        PopupMenuItem(
                            child: Text('List')
                        ),
                        PopupMenuItem(
                            child: Text('Detail')
                        )
                  ])
              ],
            )
          ],
        ),
      ),
    );
  }
}
