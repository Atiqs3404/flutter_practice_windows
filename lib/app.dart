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
import 'package:untitled/module_9/module_9_class3.dart';
import 'package:untitled/module_9/ownWidget_applied.dart';
import 'package:untitled/module_9/travel_UI.dart';

import 'module_9/widget/city_card_ownWidget.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Atiqs flutter app",

      // ThemeData
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.purple,
        primarySwatch: Colors.purple,
        scaffoldBackgroundColor: Colors.teal .shade400,
        appBarTheme: AppBarTheme(
          color: Colors.orange.shade400,
          titleTextStyle: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange.shade400,
            foregroundColor: Colors.black,
            textStyle: TextStyle(
              fontSize: 20,
              color: Colors.black
            )
          )
        ),
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple
          )
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Colors.deepPurple, width: 1,
            )
          ),
          hintStyle: TextStyle(
            color: Colors.deepPurple
          ),
          labelStyle: TextStyle(
            color: Colors.deepPurple
          )
        )
      ),

      // Module 9 Class 3 topics (Navigation)
      initialRoute: "/class3",
      routes: {
        "/" : (context) => TravelUi(),
        "/class1" : (context) => Module9Class1Alert(),
        "/class2" : (context) => Module9Class2(),
        "/class3" : (context) => Module9Class3(),
        "/ownWidget" : (context) => OwnwidgetApplied(),
      },

      // home: Module9Class3(),
    );
  }
}