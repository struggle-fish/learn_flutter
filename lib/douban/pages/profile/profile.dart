import 'package:flutter/material.dart';
import 'package:learn_flutter/douban/pages/profile/profile_content.dart';

class HYProfilePage extends StatelessWidget {
  const HYProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的'),
      ),
      body: HYProfileContent(),
    );
  }
}
