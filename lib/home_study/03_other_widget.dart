

import 'package:flutter/material.dart';

class ColumnTest extends StatelessWidget {
  const ColumnTest({super.key});

  // Column: 세로로 위젯 추가
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Title")),
      body: Column(
        children: [
          Text("My First Flutter App"),
          Text("Lets make our own app~!"),
          Icon(Icons.android, color: Colors.green)
        ],
      ),
    );
  }
}

class RowTest extends StatelessWidget {
  const RowTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Title")),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,  // 위젯 간격 일정하게
        children: [
          Text("My First Flutter App"),
          Text("Lets make our own app~!"),
          Icon(Icons.android, color: Colors.green)
        ],
      ),
    );
  }
}
