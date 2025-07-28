import 'package:flutter/material.dart';
import 'package:untitled/class_3.dart';
import 'package:untitled/home.dart';
import 'package:untitled/module_8/class2_listview.dart';
import 'package:untitled/module_8/class3_stack.dart';
import 'package:untitled/module_8/module_8_class1.dart';
import 'package:untitled/module_8/module_8_class2.dart';
import 'package:untitled/module_8/module_8_class3.dart';
import 'package:untitled/module_9/module_9_class1.dart';
import 'package:untitled/module_9/module_9_class2.dart';
import 'package:untitled/module_9/ownWidget_applied.dart';
import 'package:untitled/module_9/travel_UI.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Atiqs flutter app",
      home: OwnwidgetApplied(),
    );
  }
}