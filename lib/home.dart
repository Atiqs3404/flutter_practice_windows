import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is an appbar title", style: TextStyle(
          color: Colors.white,
        )),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body:
      const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Column text 1", style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),),
          Text("Column text 2", style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),),
          Text("Column text 3", style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.greenAccent,
          ),),
          Text("Column text 4", style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.cyanAccent,
          ),),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Row 1", style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),),
                Text("Row 2", style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),),
                Text("Row 3", style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.greenAccent,
                ),),
                Text("Row 4", style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyanAccent,
                ),),
                Text("Row 5", style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.orangeAccent,
                ),),
              ],
            ),
          )
        ],
      ),
    );
  }
}