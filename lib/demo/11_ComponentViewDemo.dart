import 'package:flutter/material.dart';
import 'package:learn_flutter/demo/10_FormDemo.dart';
import 'dart:ui';

import 'package:learn_flutter/demo/12_ButtonDemo.dart';
import 'package:learn_flutter/demo/13_PopupMenuButton.dart';
import 'package:learn_flutter/demo/14_CheckBoxDemo.dart';
import 'package:learn_flutter/demo/15_DialogDemo.dart';
import 'package:learn_flutter/demo/16_ChipDemo.dart';
import 'package:learn_flutter/demo/17_DataTableDemo.dart';
import 'package:learn_flutter/demo/18_CardDemo.dart';
import 'package:learn_flutter/demo/19_StepperDemo.dart';


class ComponentViewDemo extends StatelessWidget {
  const ComponentViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('展示组件'),
        elevation: 0,
      ),
      body: ListView(
        children: [
            ListItem(
              title: 'Button',
              page: ButtonDemo(),
            ),
            ListItem(
              title: 'FloatingActionButtonDemo',
              page: FloatingActionButtonDemo(),
            ),
            ListItem(
              title: 'PopupMenuButton',
              page: PopupMenuButtonDemo(),
            ),
            ListItem(
              title: 'FormDemo',
              page: FormDemo(),
            ),
            ListItem(
              title: 'CheckBoxDemo',
              page: CheckBoxDemo(),
            ),
            ListItem(
              title: 'DialogDemo',
              page: DialogDemo(),
            ),
          ListItem(
            title: 'ChipDemo',
            page: ChipDemo(),
          ),
          ListItem(
            title: 'DataTableDemo',
            page: DataTableDemo(),
          ),
          ListItem(
            title: 'CardDemo',
            page: CardDemo(),
          ),
          ListItem(
            title: 'StepDemo',
            page: StepDemo(),
          ),
        ],
      ),
    );
  }
}

class _WidgetDemo extends StatelessWidget {
  const _WidgetDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_WidgetDemo'),
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

              ],
            )
          ],
        ),
      ),
    );
  }
}


class ListItem extends StatelessWidget {
  final String title;
  final page;

  ListItem({
    this.title = '',
    this.page = ''
});



  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page)
        );
      },
    );
  }
}
