
import 'package:flutter/material.dart';
import 'package:learn_flutter/douban/pages/subject/subject_content.dart';

class HYSubjectPage extends StatelessWidget {
  const HYSubjectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('书影音'),
      ),
      body: HYSubjectContent(),
    );
  }
}
