import 'package:flutter/material.dart';
import 'package:learn_flutter/douban/pages/mall/mall_content.dart';

class HYMallPage extends StatelessWidget {
  const HYMallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('市集'),
      ),
      body: HYMallContent(),
    );
  }
}
