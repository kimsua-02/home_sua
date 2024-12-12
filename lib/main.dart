

import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const todoApp(),
    );
  }
}

class todoApp extends StatefulWidget {
  const todoApp({super.key});

  @override
  State<todoApp> createState() => _todoAppState();
}

class _todoAppState extends State<todoApp> {
  String title = "";
  String description = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/bad.jpg", fit: BoxFit.fill,),
        title: Text("todo-List"),
        actions: [IconButton(onPressed: (){
          showDialog(context: context, builder: (_){
            return AlertDialog(
              title: const Text("나의 할 일"),
              actions: [
                TextField(
                  onChanged: (value){
                    setState(() {
                      title = value;
                    });
                   },
                  decoration: InputDecoration(hintText: "제목을 입력해주세요"),
                ),
                TextField(
                  decoration: InputDecoration(hintText: "내용을 입력해주세요"),
                ),
                Center(
                  child: ElevatedButton(onPressed: (){}, child: Text("추가하기")),
                )
              ],
            );
          });
        }, icon: Icon(Icons.add))],
      ),
    );
  }
}
