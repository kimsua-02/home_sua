

import 'package:flutter/material.dart';

class WhatFlutter extends StatelessWidget {
  const WhatFlutter({super.key});

  @override
  Widget build(BuildContext context) {    // UI 만드는 부분
    return new MaterialApp(               // MaterialApp Design (구글 기본 디자인)
      title: "Flutter App",
      debugShowCheckedModeBanner: false,  // 화면에 debug 표시 안 보이게 함(디버그 모드에서는 필요X)
      home: Scaffold(
        appBar: AppBar(title: Text("Title")), // 앱의 상단 타이틀
        body: Text("My Flutter App")          // 앱 화면에 표시되는 text
      ),
    );
  }
}
