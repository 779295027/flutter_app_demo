import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bottomNavigationDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _bottomNavigationDemoState();
  }
}

class _bottomNavigationDemoState extends State<bottomNavigationDemo> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.black,
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.explore), title: Text("探索")),
        BottomNavigationBarItem(icon: Icon(Icons.history), title: Text("历史")),
        BottomNavigationBarItem(icon: Icon(Icons.list), title: Text("列表")),
        BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("我的")),
      ],
    );
  }

  void _onTapHandler(int value) {
    setState(() {
      _currentIndex = value;
    });
  }
}
