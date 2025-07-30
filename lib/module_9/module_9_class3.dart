import 'package:flutter/material.dart';
import 'package:untitled/module_8/class3_stack.dart';
import 'package:untitled/module_9/travel_UI.dart';
import 'package:untitled/module_9/widget/city_card_ownWidget.dart';

import 'ownWidget_applied.dart';

class Module9Class3 extends StatelessWidget {
  const Module9Class3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Module 9 Class 3"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, "/"),
                child: Text("Travel UI")),

            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/class1");
                },
                child: Text("Class 1")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/class2");
                },
                child: Text("Class 2")),

            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/ownWidget");
                },
                child: Text("ownWidget_applied")),

            // Animation during page navigation
            ElevatedButton (
                onPressed: () {
                   Navigator.push(context, PageRouteBuilder(
                       pageBuilder: (context, animation, secondaryAnimation) => TravelUi(),
                     transitionsBuilder: (context, animation, secondaryAnimation, child) {
                         // Slider animation
                         const begin = Offset(-1, 0);
                         const end = Offset.zero;
                         const curve = Curves.ease;

                         var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                         return SlideTransition(position: animation.drive(tween), child: child,);
                     }
                   ));
                },
                child: Text("Travel UI 2  ")),

            // Goes directly on main page
            ElevatedButton(
                onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Module8Stack()));
                },
                child: Text("Class 3")),

            TextField(),

            Text("Headline 1",
            style: Theme.of(context).textTheme.displayLarge
            )
          ],
        ),
      ),
    );
  }
}
