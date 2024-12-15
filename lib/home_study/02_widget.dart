
import 'package:flutter/material.dart';

/*
* Widget
*  - Flutter 앱에 있는 모든 것들은 위젯임.
*   ex) text, button, layout, MaterialApp, Scaffold 등등 모두.
*  - 가장 바깥의 위젯 -> 안쪽으로 넣는 위젯 넣는 방식으로 앱을 제작.
*  - MaterialApp -> Home -> Scaffold -> AppBar -> Body -> text ... 순서로!
*
* 따라서,
*  - 위젯은 UI 를 만드는 기본 단위이고, 안에서 밖으로 하나씩 더해주는 형태.
*  - MaterialApp: Google 의 material design 사용. 전체 앱의 테마, 색을 등을 정할 수 있음.
*  - Scaffold: 기본적인 Material design 구조를 잡아줌. (뼈대)
*  - Icon: 원하는 icon 과 색 지정 가능.
* */

class FlutterWidget extends StatelessWidget {
  const FlutterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Test")),
      body: Image.asset("assets/good.jpg"),
    );
  }
}
