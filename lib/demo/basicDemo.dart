import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichTextDemo();
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
