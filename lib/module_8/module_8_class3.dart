import 'package:flutter/material.dart';

class Module8Class3 extends StatelessWidget {
  const Module8Class3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Module 8 Class 3 Grid View"),
        centerTitle: true,
        backgroundColor: Colors.orange.withOpacity(0.75),
      ),

      body: GridView.count(
          crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: List.generate(10, (index) {
          return Card(
            elevation: 10,
            color: Colors.orange.withOpacity(0.75),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone_android, size: 60, color: Colors.white,),
                SizedBox(height: 5,),
                Text("Cash Out",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
                ),
              ],
            ),
        );
        })
      ),

      // body: GridView.builder(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 3,
      //     crossAxisSpacing: 10,
      //     mainAxisSpacing: 10,
      //   ),
      //   itemCount: 20,
      //   itemBuilder: (context, index) {
      //     return Card(
      //       elevation: 10,
      //       color: Colors.orange.withOpacity(0.75),
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Icon(
      //             Icons.phone_android,
      //             size: 60,
      //             color: Colors.white,
      //           ),
      //           SizedBox(
      //             height: 5,
      //           ),
      //           Text(
      //             index.toString(),
      //             style: TextStyle(
      //               color: Colors.white,
      //               fontSize: 25,
      //             ),
      //           ),
      //         ],
      //       ),
      //     );
      //   },
      // ),
    );
  }
}
