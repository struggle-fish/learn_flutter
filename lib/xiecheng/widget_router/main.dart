import 'package:flutter/material.dart';
import 'less_group_page.dart';
import 'stateful_group_page.dart';
import 'lay_out_group_page.dart';
main() {
  runApp(WidgetLayoutApp());
}

class WidgetLayoutApp extends StatefulWidget {
  const WidgetLayoutApp({Key? key}) : super(key: key);

  @override
  State<WidgetLayoutApp> createState() => _WidgetLayoutAppState();
}

class _WidgetLayoutAppState extends State<WidgetLayoutApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '路由',
      theme: ThemeData(
          primarySwatch: Colors.green,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('路由'),
        ),
        body: RouterNavigator(),
      ),
      routes: {
        'less': (context) => LessGroupPage(),
        'full': (context) => StatefulGroupPage(),
        'layout': (context) => LayOutGroupPage(),
      },
    );
  }

}

class RouterNavigator extends StatefulWidget {
  const RouterNavigator({Key? key}) : super(key: key);

  @override
  State<RouterNavigator> createState() => _RouterNavigatorState();
}

class _RouterNavigatorState extends State<RouterNavigator> {
  bool byName = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
         SwitchListTile(
           title: Text("${byName ? '通过routename' : '通过push'}路由跳转"),
             value: byName,
             onChanged: (value) {
              setState(() {
                byName = value;
              });
             }
         ),
          _item('statelesswidget与组件', LessGroupPage(), 'less'),
          _item('statefullwidget与组件', StatefulGroupPage(), 'full'),
          _item('layoutswidget与组件', LayOutGroupPage(), 'layout'),
        ],
      ),
    );
  }

  _item(String title, page, String routeName) {
    return Container(
      child: TextButton(
        onPressed: () {
          if(byName) {
            Navigator.pushNamed(context, routeName);
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page)
            );
          }
        },
        child: Text(title),
      ),
    );
  }
}
