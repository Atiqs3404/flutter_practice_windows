import 'package:flutter/material.dart';

class Module8Stack extends StatelessWidget {
  const Module8Stack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Stack"),
          centerTitle: true,
          backgroundColor: Colors.orange.withOpacity(0.75),
        ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                color: Colors.red,
                width: 200,
                height: 200,
              ),
              Positioned(
                bottom: 40,
                left: 40,
                child: Container(
                  color: Colors.green,
                  width: 200,
                  height: 200,
                ),
              ),
              Positioned(
                bottom: 80,
                left: 80,
                child: Container(
                  color: Colors.blue,
                  width: 200,
                  height: 200,
                ),
              ),
            ],
          ),

          SizedBox(height: 20,),

          Stack(
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage("asset/2.jpg"),
              ),

              Positioned(
                bottom: 20,
                right: 10,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.green.shade500,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 4)
                  ),
                ),
              )
            ],
          ),

          SizedBox(height: 20,),

          Stack(
            children: [
              Container(
                height: 5,
                width: double.infinity,
                color: Colors.orange[300],
              ),
              AnimatedContainer(duration: Duration(seconds: 10),
              height: 5,
                width: 200,
                color: Colors.blue,
              )
            ],
          ),

          SizedBox(height: 20,),

          Stack(
            children: [
              Image.asset("asset/3.jpg"),
              Positioned(
                bottom: 20,
                right: 135,
                child: Text("My Wallpaper",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                ),
              )
            ],
          )
        ],
      ),

    );
  }
}
