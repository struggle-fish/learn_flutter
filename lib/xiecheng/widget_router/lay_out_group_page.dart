import 'package:flutter/material.dart';

class LayOutGroupPage extends StatelessWidget {
  const LayOutGroupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LayOutGroupPage'),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        child: Text('LayOutGroupPage'),
      ),
    );
  }
}
