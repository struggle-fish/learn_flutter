import 'package:flutter/material.dart';

class StatefulGroupPage extends StatefulWidget {
  const StatefulGroupPage({Key? key}) : super(key: key);

  @override
  _StatefulGroupPageState createState() => _StatefulGroupPageState();
}

class _StatefulGroupPageState extends State<StatefulGroupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StatefulGroupPage'),
      ),
      body: Container(
        child: Text('StatefulGroupPage'),
      ),
    );
  }
}
