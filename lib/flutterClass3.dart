import 'package:flutter/foundation.dart';
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
        title: const Text(
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
                    textStyle: const TextStyle(fontWeight: FontWeight.bold),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    )),
                onPressed: () {
                  if (kDebugMode) {
                    print("Clicked");
                  }
                },
                child: const Text("Submit")),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              height: 30,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange.withOpacity(0.7),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    if (kDebugMode) {
                      print("Clicked");
                    }
                  },
                  child: const Text("Submit")),
            ),
            const SizedBox(
              height: 10,
            ),
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.orange.withOpacity(0.7),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
                onPressed: () {},
                child: const Text("Outline Button")),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.orange.withOpacity(0.7),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
                onPressed: () {},
                child: const Text("This is a text button")),
            const SizedBox(
              height: 10,
            ),
            Icon(
              Icons.phone_rounded,
              size: 60,
              color: Colors.orange.withOpacity(0.7),
            ),
            IconButton(
                onPressed: () {
                  if (kDebugMode) {
                    print("Item Deleted");
                  }
                },
                icon: Icon(Icons.delete_rounded,
                    size: 60, color: Colors.orange.withOpacity(0.7))),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
                onLongPress: () {
                  if (kDebugMode) {
                    print("Long pressed with GestureDetector");
                  }
                },
                child: Text(
                  "Non clickable to Long Clickable",
                  style: TextStyle(
                      color: Colors.orange.withOpacity(0.7), fontSize: 25),
                )),
            InkWell(
                onDoubleTap: () {
                  if (kDebugMode) {
                    print("Double tapped with Inkwell");
                  }
                },
                child: Text(
                  "Single tap to double tap",
                  style: TextStyle(
                      color: Colors.orange.withOpacity(0.7), fontSize: 25),
                )),
            const SizedBox(
              height: 10,
            ),
            Padding(
              // padding: EdgeInsets.all(20),
              // padding: EdgeInsets.only(left: 20, right: 10, top: 5, bottom: 20),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30 ),
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