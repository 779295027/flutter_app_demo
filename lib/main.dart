import 'package:flutter/material.dart';
import 'package:flutter_app/demo/listviewDemo.dart';

import 'demo/basicDemo.dart';
import 'demo/bottomnavigationDemo.dart';
import 'demo/drawerDemo.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70,
        ));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
//            leading: IconButton(
//              icon: Icon(Icons.menu),
//              tooltip: "导航",
//              onPressed: () => debugPrint("导航菜单图标点击事件"),
//            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: "搜索",
                onPressed: () => debugPrint("搜索图标点击事件"),
              ),
            ],
            title: Text("NINGHO"),
            centerTitle: true,
            elevation: 2,
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
              indicatorWeight: 1,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
          ),
//      body: ListViewDemo(),
          body: TabBarView(
            children: <Widget>[
              ListViewDemo(),
//              Icon(Icons.change_history, size: 128, color: Colors.black12),
              BasicDemo(),
              Icon(Icons.directions_bike, size: 128, color: Colors.black12)
            ],
          ),
          bottomNavigationBar: bottomNavigationDemo() ,
          drawer: DrawerDemo()),
    );
  }


}
