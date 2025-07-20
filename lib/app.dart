import 'package:flutter/material.dart';
import 'package:untitled/class_3.dart';
import 'package:untitled/home.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Atiqs flutter app",
      home: flutterClass3(),
    );
  }
}