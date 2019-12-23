import 'package:flutter/material.dart';

class AnimatePage extends StatefulWidget {
  _AnimatePage  createState()=> _AnimatePage();
} 

class _AnimatePage extends State<AnimatePage> {
  bool _visible=true;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Animate Page"),
      ),
      body: 
          Center(

            child: Column(
                  children: <Widget>[
                      AnimatedOpacity(
                        opacity: _visible ? 1.0:0.0,
                        duration: Duration(milliseconds: 1000),
                        child: Image.asset("assets/images/WechatIMG695.jpeg"),
                      ),

                      RaisedButton(
                        child: Text("显示隐藏"),
                        onPressed: (){
                          setState(() {
                            _visible=!_visible;
                          });
                         },
                      ),

                  ],
                ),
          )    
      );

  }
}