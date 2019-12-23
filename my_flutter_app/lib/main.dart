import 'package:flutter/material.dart';
import 'package:my_flutter_app/detailpage.dart';
import 'package:my_flutter_app/page2.dart';
import 'list.dart';
import 'flexpage.dart';
import 'buttonpage.dart';
import 'animatepage.dart';
import 'animatepage2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      "ListPage": (context) => ListPage(),
      "Page2": (context) => Page2(),
      "DetailPage": (context) => DetailPage(),
      "ButtonPage": (context) => ButtonPage(),
      "FlexPage": (context) => FlexPage(),
      "AnimatePage": (context) => AnimatePage(),
      "AnimatePage2": (context) => AnimatePage2(),
    }, title: 'Flutter Demo', home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

//  Row & Column & Center 行列轴布局

//  Row(
//      children:<Widget>[]
//  )

//  Column(
//      children:<Widget>[]
//  )

//  Center(
//       child:Text("Hello")
//  ）

class MyHomePageState extends State<MyHomePage> {
  var msg = "Hello world";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我是Title"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Hello World",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0000ff))), // 提示变量值，显示文字
            Text(msg), // 提示变量值，显示文字
            RaisedButton(
              child: Text("Click to ListPage"),
              onPressed: () {
                // 根据命名路由做跳转
                Navigator.pushNamed(context, "ListPage");
              },
            ),
            FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Page2();
                }));
                // setState(() {
                //   this.msg = "you click me";
                // });
              },
              child: Text("Click Me",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            OutlineButton(
              child: Text("Button page"),
              onPressed: () {
                Navigator.pushNamed(context, 'ButtonPage');
              },
            ),
            OutlineButton(
              child: Text("Flex page"),
              onPressed: () {
                Navigator.pushNamed(context, 'FlexPage');
              },
            ),
            OutlineButton(
              child: Text("AnimatePage page"),
              onPressed: () {
                Navigator.pushNamed(context, 'AnimatePage');
              },
            ),
            OutlineButton(
              child: Text("AnimatePage2 page"),
              onPressed: () {
                Navigator.pushNamed(context, 'AnimatePage2');
              },
            ),
            // Container 实验 -》 类似于div标签
            Text("Container Position"),
            Stack(
              children: <Widget>[
                Container(
                  color: Colors.blueAccent,
                  width: 100,
                  height: 100,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Container",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 10,
                  child: Text("321"),
                )
              ],
            ),
            Text("padding"),
            Container(
              color: Colors.blueAccent,
              padding: EdgeInsets.all(30),
              child: Text(
                "Hello Container",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Text("margin"),
            Container(
              color: Colors.blueAccent,
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.only(left: 150, top: 0, right: 0, bottom: 0),
              child: Text(
                "Hello Container",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Text("transform"),
            Container(
              color: Colors.blueAccent,
              padding: EdgeInsets.all(30),
              transform: Matrix4.rotationZ(0.5),
              child: Text(
                "Hello Container",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Text("网络图片"),
            Image(
              image: NetworkImage(
                  'https://mat1.gtimg.com/pingjs/ext2020/qqindex2018/dist/img/qq_logo_2x.png'),
              width: 200.0,
            ),
            Text("本地路径"),
            Image(
              image: AssetImage("assets/images/WechatIMG695.jpeg"),
              height: 100.0,
            )
          ],
        ),
      ),
    );
  }
}
