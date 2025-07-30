import 'package:flutter/material.dart';
import 'package:untitled/module_9/widget/city_card_ownWidget.dart';

class OwnwidgetApplied extends StatelessWidget {
  const OwnwidgetApplied({super.key});

  @override
  Widget build(BuildContext context) {

    // Gives the current device display size
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                  width: screenSize.width,
                  height: 250,
                  child: CityCard(imgURL: "assets/jamie-fenn-VZ1TWObS34s-unsplash.jpg", title: "Bali",)),
              SizedBox(width: 10,),
              SizedBox(
                  width: screenSize.width,
                  height: 250,
                  child: CityCard(imgURL: "assets/jamie-fenn-VZ1TWObS34s-unsplash.jpg", title: "Paris",)),
              SizedBox(width: 10,),
              SizedBox(
                  width: screenSize.width,
                  height: 250,
                  child: CityCard(imgURL: "assets/jamie-fenn-VZ1TWObS34s-unsplash.jpg", title: "Dubai",)),
            ],
          ),
        ),
      ),
    );
  }
}


