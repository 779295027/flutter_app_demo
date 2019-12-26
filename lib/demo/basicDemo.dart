import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.grey[100],
      child: Row(
        // 主轴，对齐方式
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(
              Icons.pool,
              size: 32,
              color: Colors.white,
            ),
//            color: Color.fromRGBO(3, 54, 255, 1),
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 8),
            width: 90,
            height: 90,
            // 装饰 ：装饰盒子0
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1),
              // 设置边框，四边可以设置不同的样式
//                border: Border(
//                  // 设置顶部边框的样式
//                  top: BorderSide()
//                ),
              // 设置边框,四条边框统一样式
              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 3,
                style: BorderStyle.solid,
              ),
              // 设置四个角的圆角角度
//              borderRadius: BorderRadius.circular(16),
//              borderRadius: BorderRadius.only(
//                topLeft: Radius.circular(32),
//                bottomLeft: Radius.circular(32),
//              ),
              // 设置阴影
              boxShadow: [
                BoxShadow(
                  // 阴影偏移量 X轴和Y轴
                  offset: Offset(0, 16.0),
                  color: Color.fromRGBO(16, 20, 188, 1),
                  // 模糊程度
                  blurRadius: 25,
                  // 阴影扩散程度 ，正数扩大，负数缩小
                  spreadRadius: -9,
                ),
              ],
              // 设置形状 当圆形时，不可使用圆角效果
              shape: BoxShape.circle,

            ),
          )
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
      text: TextSpan(
          text: "帅小天",
          style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 34,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w100),
          children: [
            TextSpan(
              text: ".sxt",
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontStyle: FontStyle.italic,
              ),
            ),
          ]),
    );
  }
}

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      "《$_title》---- $_author 山不在高，有仙则名。水不在深，有龙则灵。斯是陋室，惟吾德馨。苔痕上阶绿，草色入帘青。谈笑有鸿儒，往来无白丁。可以调素琴，阅金经。无丝竹之乱耳，无案牍之劳形。南阳诸葛庐，西蜀子云亭。孔子云：何陋之有？",
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }

  var _textStyle = TextStyle(fontSize: 16);

  var _author = "刘禹锡";

  var _title = "陋室铭";
}
