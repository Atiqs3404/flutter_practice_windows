import 'package:flutter/material.dart';
import 'package:untitled/module_9/widget/city_card_ownWidget.dart';

class OwnwidgetApplied extends StatelessWidget {
  const OwnwidgetApplied({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Column(
            children: [
              CityCard(imgURL: "assets/jad-limcaco-NT1mJPgni6A-unsplash.jpg", title: "Paris",),
              SizedBox(height: 10,),
              CityCard(imgURL: "assets/ted-bryan-yu-5mezpWin6T8-unsplash.jpg", title: "Dubai",),
              SizedBox(height: 10,),
              CityCard(imgURL: "assets/kharl-anthony-paica-7sqY83ONLMU-unsplash.jpg", title: "Bali",),
            ],
          )
        ),
      ),
    );
  }
}


