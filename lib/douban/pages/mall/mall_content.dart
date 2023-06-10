import 'package:flutter/material.dart';

class HYMallContent extends StatefulWidget {
  const HYMallContent({Key? key}) : super(key: key);

  @override
  State<HYMallContent> createState() => _HYMallContentState();
}

class _HYMallContentState extends State<HYMallContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('市集'),
    );
  }
}
