import 'package:flutter/material.dart';

class LessGroupPage extends StatelessWidget {
  const LessGroupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('less'),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.ac_unit),
        ),
      ),
      body: Container(
        child: Text('less'),
      ),
    );
  }
}
