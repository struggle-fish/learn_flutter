import 'dart:math';
import 'package:flutter/material.dart';


class CustomScrollBasicDemo extends StatelessWidget {
  const CustomScrollBasicDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('列表'),
        ),
        body: CustomScrollViewDemo2(),
      ),
    );
  }
}


class CustomScrollViewDemo2 extends StatelessWidget {
  const CustomScrollViewDemo2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 200,
          pinned: true, // 是否吸顶
          flexibleSpace: FlexibleSpaceBar(
            title: Text('你好全世界1'),
            background: Image.asset(
                'assets/images/autohomedealer__ChwFRl_7xauAaYWPAAFcSUswvQ0960.jpeg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
                (BuildContext ctx , int index) {
              return Container(
                color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256)),
              );
            },
            childCount: 10,
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
                  (BuildContext ctx, int index) {
                return ListTile(
                  leading: Icon(Icons.people),
                  title: Text('你好全世界'),
                );
              },
              childCount: 20
          ),
        )
      ],
    );
  }
}

class CustomScrollViewDemo1 extends StatelessWidget {
  const CustomScrollViewDemo1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverSafeArea(
          sliver: SliverPadding(
            padding: EdgeInsets.all(10),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext ctx , int index) {
                  return Container(
                    color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256)),
                  );
                },
                childCount: 100,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 1.5
              ),
            ),
          ),
        )
      ],
    );
  }
}
