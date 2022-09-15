import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int randNum = Random().nextInt(5)+1;

  void changeRandomNum(){
    randNum = Random().nextInt(5)+1;
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: const Text("Ask Me Anything"),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: TextButton(
              onPressed: (){
                setState(() {
                  changeRandomNum();
                });
              },
              child: Image.asset("images/ball$randNum.png"),
            ),
          )
        ),
      ),
    );
  }
}


