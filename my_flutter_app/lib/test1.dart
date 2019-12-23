import 'package:flutter/material.dart';

void test({@required int age,String name}) {
  print(name);
  print(age);
}
// 解决函数调用时候，参数不明确的问题
test(name:"hicc",age: 30)

// 这样对于组件的使用尤为方便
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(),
      body: Container(),
      floatingActionButton:FloatingActionButton()
    );
  }