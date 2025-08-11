import 'package:flutter/material.dart';

import 'addWaterBtn.dart';

class WaterTrackerApp extends StatefulWidget {
  const WaterTrackerApp({super.key});

  @override
  State<WaterTrackerApp> createState() => _WaterTrackerAppState();
}

class _WaterTrackerAppState extends State<WaterTrackerApp> {

  int currentIntake = 0;
  final int goal = 5000;

  void waterAdd(int amount){
    setState(() {
      // Very important
      currentIntake = (currentIntake + amount).clamp(0, goal);
    });
  }

  void resetTank(){
    setState(() {
      currentIntake = 0;
    });
  }


  @override
  Widget build(BuildContext context) {
    double progress = (currentIntake/goal).clamp(0, 1);

    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text("Water Tracker",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        )
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(80),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  // Box Shadow
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.shade200,
                      blurRadius: 10,
                      spreadRadius: 2
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Text("Today's Intank",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text("${currentIntake} LTR",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent
                      ),
                    )
                  ],
                ),
              ),
          
              SizedBox(height: 30,),
          
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.grey.shade500,
                      color: Colors.blueAccent,
                      strokeWidth: 10,
                      value: progress, // (0.1 - 1) as percentage of the progress bar
                    ),
                  ),
                  Text("${(progress * 100).toInt()}%",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                  )
                ]
              ),
              Wrap(
                // spacing: 10, // Horizontal spacing
                // runSpacing: 10, // Vertical spacing
                children: [
                  addWaterBtn(amount: 200, onClick: () => waterAdd(200),),
                  addWaterBtn(amount: 500, onClick: () => waterAdd(500), icon: Icons.water,),
                  addWaterBtn(amount: 1000, onClick: () => waterAdd(1000), icon: Icons.dangerous_outlined,),
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ElevatedButton(onPressed: () => resetTank(), child: Text("reset")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


