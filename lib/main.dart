import 'package:flutter/material.dart';
import 'package:learn_flutter/demo/02_listViewDemo.dart';
import 'package:learn_flutter/demo/03_DrawerDemo.dart';
import 'package:learn_flutter/demo/04_BottonNavigationBarDemo.dart';

main() {
  runApp(
    App()
  );
}





class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
          primarySwatch: Colors.yellow, // 主题颜色
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
        length: 3,
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
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListViewDemo(),
              Icon(Icons.change_history, size: 128, color: Colors.black12,),
              Icon(Icons.directions_bike, size: 128, color: Colors.black12,)
            ],
          ),
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo(),
        )
    );
  }
}






