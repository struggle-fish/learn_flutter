import 'package:flutter/material.dart';


class ListBasicDemo extends StatelessWidget {
  const ListBasicDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('列表'),
        ),
        body: ListViewSeparatedDemo(),
      ),
    );
  }
}


class ListViewSeparatedDemo extends StatelessWidget {
  const ListViewSeparatedDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder:  (BuildContext ctx, int index) {
          return Text('${index}你好全世界');
        },
        separatorBuilder:  (BuildContext ctx, int index) {
          return Divider(
            color: Colors.red,
            indent: 10,
            endIndent: 10,
            thickness: 3,
          );
        } ,
        itemCount: 100);
  }
}

class ListBuilderDemo extends StatelessWidget {
  const ListBuilderDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 100,
        itemExtent: 60,
        itemBuilder:  (BuildContext ctx, int index) {
          return Text('${index}你好全世界');
        }
    );
  }
}

class ListViewDemo1 extends StatelessWidget {
  const ListViewDemo1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      // scrollDirection: Axis.horizontal, // 水平滚动
      // itemExtent: 300,
      padding: EdgeInsets.all(20),
      children: List.generate(100, (index) {
        return ListTile(
          leading: Icon(Icons.people),
          trailing: Icon(Icons.delete),
          title: Text('${index}你好全世界'),
          subtitle: Text('联系人电话18510006974'),
        );
      }),
    );
  }
}
