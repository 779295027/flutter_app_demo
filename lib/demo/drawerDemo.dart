import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
//                DrawerHeader(
//                  child: Text("头部"),
//                  decoration: BoxDecoration(color: Colors.grey[300]),
//                ),
          UserAccountsDrawerHeader(
            accountName: Text("帅小天"),
            accountEmail: Text("这里其实可以当作个性签名用：比如点击编辑个性签名"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://v3.3asxy.com/attachment/images/noface_boy.png"),
            ),
            decoration: BoxDecoration(
                color: Colors.yellow,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://v3.3asxy.com/attachment/images/2/2019/12/W9M3zD2DMWHPTfEZUZm3wm3ZEUTmQu.png"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.6),
                        BlendMode.srcOver))),
          ),
          ListTile(
            title: Text(
              "信息",
              textAlign: TextAlign.right,
            ),
            //leading 是在文字前面
            //trailing 是在文字后面
            leading: Icon(
              Icons.message,
              color: Colors.black54,
              size: 22,
            ),
            onTap: () => {Navigator.pop(context)},
          ),
          ListTile(
            title: Text(
              "喜欢",
              textAlign: TextAlign.right,
            ),
            leading: Icon(
              Icons.favorite,
              color: Colors.black54,
              size: 22,
            ),
            onTap: () => {Navigator.pop(context)},
          ),
          ListTile(
            title: Text(
              "设置",
            ),
            trailing: Icon(
              Icons.settings,
              color: Colors.black54,
              size: 22,
            ),
            onTap: () => {Navigator.pop(context)},
          ),
        ],
      ),
    );
  }

}
