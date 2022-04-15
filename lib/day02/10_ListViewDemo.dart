import 'package:flutter/material.dart';

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
      // scrollDirection: Axis.horizontal,
      // itemExtent: 300,
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
