import 'package:flutter/material.dart';


class ScrollListionBasicDemo extends StatelessWidget {
  const ScrollListionBasicDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('滚动监听'),
        ),
        body: HomeContentScroll(),
      ),
    );
  }
}

class HomeContentScroll extends StatefulWidget {
  const HomeContentScroll({Key? key}) : super(key: key);

  @override
  State<HomeContentScroll> createState() => _HomeContentStateScroll();
}

class _HomeContentStateScroll extends State<HomeContentScroll> {
  final imageURL = 'https://club2.autoimg.cn/a lbum/g26/M02/4C/44/userphotos/2020/07/25/10/820_ChwFkF8bniOAU_8EAJavO73o2KM848.jpg';


  final usernameTextEditController = TextEditingController();
  final passwordTextEditController = TextEditingController();

  ScrollController _controller = ScrollController(initialScrollOffset: 300);

  bool _isShowFloatingButton = false;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.addListener(() {

      setState(() {
        _isShowFloatingButton = _controller.offset >= 1000;
      });

    });
  }


  /*
    两种方式可以监听滚动
     1、controller
     2、NotificationListener
  * */

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: NotificationListener(
        onNotification: (ScrollNotification notification) {
          print('监听滚动1');
          if (notification is ScrollStartNotification) {
            print('开始滚动');
          } else if (notification is ScrollUpdateNotification) {
            print('最大距离${notification.metrics.maxScrollExtent}--正在滚动中${notification.metrics.pixels}');
          } else if (notification is ScrollEndNotification) {
            print('结束滚动');
          }

          return true;
        },
        child: ListView.builder(
            itemCount: 100,
            controller: _controller,
            itemBuilder: (BuildContext ctx, int index) {
              return ListTile(
                leading: Icon(Icons.people),
                title: Text('联系人${index}'),
              );
            }
        ),
      ),
      floatingActionButton: _isShowFloatingButton ? FloatingActionButton(
          child: Icon(Icons.arrow_upward),
          onPressed: (){
            _controller.animateTo(0, duration: Duration(seconds: 2), curve: Curves.easeIn);
          }
      ) : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
