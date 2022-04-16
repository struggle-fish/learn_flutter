import 'package:flutter/material.dart';



class BottomNavigationBarDemo extends StatefulWidget {
  const BottomNavigationBarDemo({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarDemo> createState() => _BottomNavigationBarDemoState();
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;

  _onTapHandler(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.black,
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'history'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'List'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'My'
        ),
      ],
    );
  }
}
