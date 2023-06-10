import 'package:flutter/material.dart';
import 'package:learn_flutter/douban/pages/group/group_content.dart';

class HYGroupPage extends StatelessWidget {
  const HYGroupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('小组'),
      ),
      body: HYGroupContent(),
    );
  }
}
