import 'package:flutter/material.dart';

class flutterClass3 extends StatelessWidget {
  const flutterClass3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey,
      //backgroundColor: Colors.grey.withOpacity(0.75),
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.orange.withOpacity(0.7),
        title: Text(
          "Class 3",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange.withOpacity(0.7),
                    foregroundColor: Colors.white,
                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    )),
                onPressed: () {
                  print("Clicked");
                },
                child: Text("Submit")),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              height: 30,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange.withOpacity(0.7),
                    foregroundColor: Colors.white,
                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    print("Clicked");
                  },
                  child: Text("Submit")),
            ),
            SizedBox(
              height: 10,
            ),
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.orange.withOpacity(0.7),
                    foregroundColor: Colors.white,
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
                onPressed: () {},
                child: Text("Outline Button")),
            SizedBox(
              height: 10,
            ),
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.orange.withOpacity(0.7),
                    foregroundColor: Colors.white,
                    textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
                onPressed: () {},
                child: Text("This is a text button")),
            SizedBox(
              height: 10,
            ),
            Icon(
              Icons.phone_rounded,
              size: 60,
              color: Colors.orange.withOpacity(0.7),
            ),
            IconButton(
                onPressed: () {
                  print("Item Deleted");
                },
                icon: Icon(Icons.delete_rounded,
                    size: 60, color: Colors.orange.withOpacity(0.7))),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
                onLongPress: () {
                  print("Long pressed with GestureDetector");
                },
                child: Text(
                  "Non clickable to clickable",
                  style: TextStyle(
                      color: Colors.orange.withOpacity(0.7), fontSize: 25),
                )),
            InkWell(
                onDoubleTap: () {
                  print("Double tapped with Inkwell");
                },
                child: Text(
                  "Single tap to double tap",
                  style: TextStyle(
                      color: Colors.orange.withOpacity(0.7), fontSize: 25),
                )),
            SizedBox(
              height: 10,
            ),
            Padding(
              // padding: EdgeInsets.all(20),
              // padding: EdgeInsets.only(left: 20, right: 10, top: 5, bottom: 20),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30 ),
              child: Text("This is a padding text",
                  style: TextStyle(
                      color: Colors.orange.withOpacity(0.7), fontSize: 25)),
            ),
          ],
        ),
      ),
    );
  }
}