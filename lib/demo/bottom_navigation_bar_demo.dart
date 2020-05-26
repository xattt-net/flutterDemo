import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  BottomNavigationBarDemo({Key key}) : super(key: key);

  @override
  _BottomNavigationbarDemoState createState() =>
      _BottomNavigationbarDemoState();
}

class _BottomNavigationbarDemoState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;
  void _onTapHandler(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.black,
      elevation: 0.0,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          title: Text('发现'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          title: Text('历史'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.work),
          title: Text('工作'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('我的'),
        ),
      ],
    );
  }
}
