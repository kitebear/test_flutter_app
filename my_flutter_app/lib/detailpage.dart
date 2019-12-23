import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 获取路由传参
    final Map args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page')
      ),
      body: 
        new Column(
          children: <Widget>[
            Text("我是Detail页面"),
            Text("id: ${args['id']}"),
            Text("title: ${args['title']}"),
            Text("subTitle: ${args['subtitle']}"),
          ],
        ),
    );
  }
}