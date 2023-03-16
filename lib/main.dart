// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int? num1 = 2;
  int? num2 = 3;
  @override
  Widget build(BuildContext context) {
    int onpp() {
      return Random().nextInt(6) + 1;
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dice"),
          backgroundColor: Colors.red,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Center(
                  child: Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'images/dice$num1.png',
                        ),
                      )),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'images/dice$num2.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SafeArea(
                  child: ElevatedButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.all(70),
                        minimumSize: Size(170, 20),
                        foregroundColor: Colors.yellow,
                        primary: Colors.yellow),
                    onPressed: () {
                      setState(() {
                        num1 = onpp();
                        num2 = onpp();
                      });
                    },
                    child: Text(
                      "Draw",
                      style: TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
