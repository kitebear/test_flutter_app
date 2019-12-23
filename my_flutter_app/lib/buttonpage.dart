import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Button Page")),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("RaisedButton"),
            onPressed: () {},
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
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
