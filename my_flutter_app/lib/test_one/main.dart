// 无限滚动的LIST
import 'package:flutter/material.dart';
import 'stateFulWidget.dart';

class TestRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      "RandomWordsState": (context) => new RandomWords(),
    }, title: 'Flutter Demo', home: TestOnePage());
  }
}

class TestOnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Button Page")),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("stateFulWidget.dart"),
            onPressed: () {
              Navigator.pushNamed(context, "RandomWordsState");
            },
          ),
          FlatButton(
            child: Text('FlatButton'),
            onPressed: () {},
            color: Colors.blue,
          ),
          OutlineButton(
            textColor: Colors.blue,
            child: Text("OutlineButton"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
