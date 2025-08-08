import 'package:flutter/material.dart';

import '../module_9/travel_UI.dart';

// 1st to run after loading (Constructor)
class Module11Class1 extends StatefulWidget {
  Module11Class1({super.key}) {
    print("1 constructor");
  }

// 2nd to run after loading (Create State)
  @override
  State<Module11Class1> createState() {
    print("2 create state");
    return _Module11Class1State();
  }
}

class _Module11Class1State extends State<Module11Class1> {
  int number = 0;

  // 3rd to run after loading (Initial State)
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("3 init state");
  }

  // 1st to run after page deletion (deactivate)
  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print("4 deactivate state");
  }

  // 2nd to run after page deletion (dispose)
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("5 dispose state");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Class 1 Module 11"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            number.toString(),
            style: TextStyle(fontSize: 60),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    // To rebuild the screen
                    setState(() {
                      number--;
                      print(number);
                    });
                  },
                  child: Text(
                    "-",
                    style: TextStyle(fontSize: 40),
                  )),
              ElevatedButton(
                  onPressed: () {
                    // To rebuild the screen
                    setState(() {
                      number++;
                      print(number);
                    });
                  },
                  child: Text(
                    "+",
                    style: TextStyle(fontSize: 30),
                  )),
              ElevatedButton(
                  onPressed: () {
                    // Navigator.pushReplacement deleting all previous page history, dispose and deactivate will work after this
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TravelUi()));
                  },
                  child: Text(
                    "TravelUI",
                    style: TextStyle(fontSize: 30),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
