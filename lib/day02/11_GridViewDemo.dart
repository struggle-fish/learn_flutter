import 'dart:math';

import 'package:flutter/material.dart';


class GridBasicDemo extends StatelessWidget {
  const GridBasicDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('列表'),
        ),
        body: GirdDemo3(),
      ),
    );
  }
}

class GirdDemo3 extends StatelessWidget {
  const GirdDemo3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8
        ),
        itemBuilder: (BuildContext ctx, int index) {
          return Container(
            color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256)),
          );
        }
    );
  }
}

class GridDemo2 extends StatelessWidget {
  const GridDemo2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        maxCrossAxisExtent: 120,
      ),
      children:  List.generate(
          100,
              (index) {
            return Container(
              color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256)),
            );
          }
      ),
    );
  }
}

class GrideDemo1 extends StatelessWidget {
  const GrideDemo1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.5,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        children:
        List.generate(
            100,
                (index) {
              return Container(
                color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256)),
              );
            }
        ),
      ),
    );
  }
}
