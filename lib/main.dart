import 'package:flutter/material.dart';

// import 'package:learn_flutter/day01/02_helloworld.dart';
// import 'package:learn_flutter/day01/03_CheckBox.dart';
// import 'package:learn_flutter/day01/05_商品列表.dart';
// ---------------------------------------------------------------------------
// import 'package:learn_flutter/day02/01_StatefulWidget.dart';
// import 'package:learn_flutter/day02/02_生命周期.dart';
import 'package:learn_flutter/day02/03_文本widget.dart';
// ---------------------------------------------------------------------------

import 'package:learn_flutter/demo/02_ListViewDemo.dart';
import 'package:learn_flutter/demo/03_DrawerDemo.dart';
import 'package:learn_flutter/demo/04_BottonNavigationBarDemo.dart';
import 'package:learn_flutter/demo/05_BasicDemo.dart';
import 'package:learn_flutter/demo/06_LayoutDemo.dart';
import 'package:learn_flutter/demo/07_ViewDemo.dart';
import 'package:learn_flutter/demo/08_SliverViewDemo.dart';
import 'package:learn_flutter/demo/09_NavigatorDemo.dart';
import 'package:learn_flutter/demo/10_FormDemo.dart';
import 'package:learn_flutter/demo/11_ComponentViewDemo.dart';
import 'package:learn_flutter/demo/20_StateManagement.dart';


main() {
  runApp(
      // MyApp()
      // CheckBoxDemo()
      // ListImageDemo()
      // StatefulWidgetDemo()
      // LifeCycle()
      TextWidgetDemo()
  );
}







class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Home(),
      // home: NavigatorDemo(),
      initialRoute: '/stateManagement', // 初始路由
      routes: {
        '/': (context) => Home(),
        '/about': (context) => PageViewRouteDemo(title: '你好'),
        '/form': (context) => FormDemo(),
        '/button': (context) => ComponentViewDemo(),
        '/stateManagement': (contenxt) => StateManagementDemo(),
      },
      theme: ThemeData(
          // primarySwatch: Colors.yellow, // 主题颜色
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white60,
      ),
    );
  }
}

class Home extends StatelessWidget {

  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            title: Text('Flutter02'),
            // leading: IconButton(
            //   icon: Icon(
            //     Icons.menu,
            //   ),
            //   tooltip: 'Navigration',
            //   onPressed: () {
            //     debugPrint('Navigration被点击了');
            //   },
            // ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.search,
                ),
                tooltip: 'Search',
                onPressed: () {
                  debugPrint('Search被点击了');
                },
              )
            ],
            elevation: 30,
            bottom: TabBar(
              unselectedLabelColor: Colors.black12,
              indicatorColor: Colors.black54,
              indicatorSize:  TabBarIndicatorSize.label,
              tabs: [
                Tab(
                    icon: Icon(Icons.local_florist)
                ),
                Tab(
                    icon: Icon(Icons.change_history)
                ),
                Tab(
                    icon: Icon(Icons.directions_bike)
                ),
                Tab(
                  icon: Icon(Icons.view_quilt)
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListViewDemo(),
              BasicDemo(),
              LayoutDemo(),
              // ViewDemo()
              SliverDemo()
            ],
          ),
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo(),
        )
    );
  }
}






