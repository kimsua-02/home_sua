

import 'package:flutter/material.dart';

import 'home_study/01_what_flutter.dart';
import 'home_study/02_widget.dart';
import 'home_study/03_other_widget.dart';
import 'home_study/04_stateless_vs_statefulwidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Contact App",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("홈 화면"),),
      body:
      //WhatFlutter(),
      //FlutterWidget(),
      //ColumnTest(),
      //RowTest(),
      //StlessWidgetAddButton(),
      StfulWidgetAddButton(),
    );
  }
}
