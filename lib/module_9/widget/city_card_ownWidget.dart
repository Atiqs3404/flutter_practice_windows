import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final String imgURL, title;
  const CityCard({
    super.key, required this.imgURL, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Stack (
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: [
              Image.asset(
                "$imgURL",
                fit: BoxFit.fill,
                width: double.infinity,
                height: 200,
              ),
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.black.withOpacity(0.4), // Darken the image
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 10,
          left: 10,
          child: Text("$title",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}