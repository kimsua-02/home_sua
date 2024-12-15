

import 'package:flutter/material.dart';

// 화면은 니오지만 아무리 버튼을 눌러도 값이 올라가지 않음.
// Stateless Widget 을 사용했기 때문.
// 위젯이 변하는 경우에는 Stateful Widget 를 사용해야 함.
class StlessWidgetAddButton extends StatelessWidget {

  int counter = 0;

  void increaseCounter(){
    counter++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Title")),
      body: Container(  // Container 에 넣어서 마진이나 패딩을 주도록 함.
        child: Column(  // 새로로 위젯 배열
          children: [
            Text("$counter"),
            TextButton(
                child: Text(
                    "Add $counter",
                    style: TextStyle(color: Colors.black),
                ),
                onPressed: (){  // 클릭 시 counter 변수가 변하도록.
                  increaseCounter();
                }
            )
          ],
        ),
      ),
    );
  }
}

class StfulWidgetAddButton extends StatefulWidget {
  const StfulWidgetAddButton({super.key});

  @override
  State<StfulWidgetAddButton> createState() => _StfulWidgetAddButtonState();
}

class _StfulWidgetAddButtonState extends State<StfulWidgetAddButton> {

  int counter  = 0;

  void increaseCounter() {
    setState(() {
      counter++;
    });
  }

  void decreaseCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My StatefulWidget"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),

        child: Column(
          children: [
            Text("$counter",
            style: TextStyle(fontSize: 160.0),
            ),
            Row( // 가로로 위젯 배치
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(child: Text(
                  "Add",
                  style: TextStyle(color: Colors.black),
                ),
                  onPressed: (){
                    increaseCounter();
                  },
                ),
                TextButton(child: Text(
                    "Subtract",
                    style: TextStyle(color: Colors.brown),
                ),
                onPressed: (){
                  decreaseCounter();
                },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
