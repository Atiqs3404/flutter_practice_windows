import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TravelUi extends StatelessWidget {
  const TravelUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/istockphoto-636778074-612x612.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.45),
                BlendMode.darken,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, bottom: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Explore the World",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Search destination...",
                      hintStyle: TextStyle(),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            "Top Desinations",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
              child: Transform.translate(
                offset: Offset(0, -50),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Stack(
                              children: [
                                Image.asset(
                                  "assets/jad-limcaco-NT1mJPgni6A-unsplash.jpg",
                                  fit: BoxFit.fill,
                                  width: double.infinity,
                                  height: 200,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 200,
                                  color: Colors.black
                                      .withOpacity(0.4), // Darken the image
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 10,
                            bottom: 10,
                            child: Text(
                              "Paris",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Stack(
                              children: [
                                Image.asset(
                                  "assets/aly-photography-Jjoiz-6Wgg8-unsplash.jpg",
                                  fit: BoxFit.fill,
                                  width: double.infinity,
                                  height: 200,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 200,
                                  color: Colors.black
                                      .withOpacity(0.4), // Darken the image
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 10,
                            bottom: 10,
                            child: Text(
                              "Maldives",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50.0),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Stack(
                              children: [
                                Image.asset(
                                  "assets/christoph-schulz-aEiu9nilN_c-unsplash.jpg",
                                  fit: BoxFit.fill,
                                  width: double.infinity,
                                  height: 200,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 200,
                                  color: Colors.black
                                      .withOpacity(0.4), // Darken the image
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 10,
                            bottom: 10,
                            child: Text(
                              "Dubai",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50.0),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Stack(
                              children: [
                                Image.asset(
                                  "assets/kharl-anthony-paica-7sqY83ONLMU-unsplash.jpg",
                                  fit: BoxFit.fill,
                                  width: double.infinity,
                                  height: 200,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 200,
                                  color: Colors.black
                                      .withOpacity(0.4), // Darken the image
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 10,
                            bottom: 10,
                            child: Text(
                              "Bali",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ),
        Transform.translate(
          offset: Offset(0, -70),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "Trending Packages",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        // Trending Packages
        Transform.translate(
          offset: Offset(0, -50),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3), // shadow color
                  offset: Offset(0, 4),                // x, y offset
                  blurRadius: 15,                      // blur strength
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                          ),
                          child: Stack(
                            children: [
                              Image.asset(
                                "assets/the-now-time-ljXFq4Cj9lo-unsplash.jpg",
                                width: 150,
                                height: 120,
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only( left: 12.0, top: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Romantic Paris Getaway",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(children: [
                            Icon(CupertinoIcons.stopwatch),
                            SizedBox(
                              width: 5,
                            ),
                            Text("4 nights * 5 days"),
                          ]),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [Text("\$799", style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.blue),)],
                              ),
                              SizedBox(width:50,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue,
                                          foregroundColor: Colors.white,
                                          textStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          )
                                      ),
                                      onPressed: (){}, child: Text("Book Now"))
                                ],),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        Transform.translate(
          offset: Offset(0, -50),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3), // shadow color
                  offset: Offset(0, 4),                // x, y offset
                  blurRadius: 15,                      // blur strength
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                          ),
                          child: Stack(
                            children: [
                              Image.asset(
                                "assets/jamie-fenn-VZ1TWObS34s-unsplash.jpg",
                                width: 150,
                                height: 120,
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only( left: 12.0, top: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bali Adventure Tour",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(children: [
                            Icon(CupertinoIcons.stopwatch),
                            SizedBox(
                              width: 5,
                            ),
                            Text("4 nights * 5 days"),
                          ]),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [Text("\$599", style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.blue),)],
                              ),
                              SizedBox(width:50,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue,
                                          foregroundColor: Colors.white,
                                          textStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          )
                                      ),
                                      onPressed: (){}, child: Text("Book Now"))
                                ],),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        Transform.translate(
          offset: Offset(0, -50),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3), // shadow color
                  offset: Offset(0, 4),                // x, y offset
                  blurRadius: 15,                      // blur strength
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                          ),
                          child: Stack(
                            children: [
                              Image.asset(
                                "assets/ted-bryan-yu-5mezpWin6T8-unsplash.jpg",
                                width: 150,
                                height: 120,
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only( left: 12.0, top: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nepal Tour",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(children: [
                            Icon(CupertinoIcons.stopwatch),
                            SizedBox(
                              width: 5,
                            ),
                            Text("4 nights * 5 days"),
                          ]),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [Text("\$499", style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.blue),)],
                              ),
                              SizedBox(width:50,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue,
                                          foregroundColor: Colors.white,
                                          textStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          )
                                      ),
                                      onPressed: (){}, child: Text("Book Now"))
                                ],),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        Transform.translate(
          offset: Offset(0, -50),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3), // shadow color
                  offset: Offset(0, 4),                // x, y offset
                  blurRadius: 15,                      // blur strength
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                          ),
                          child: Stack(
                            children: [
                              Image.asset(
                                "assets/mike-swigunski-k9Zeq6EH_bk-unsplash.jpg",
                                width: 150,
                                height: 120,
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only( left: 12.0, top: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Maldive Tour",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(children: [
                            Icon(CupertinoIcons.stopwatch),
                            SizedBox(
                              width: 5,
                            ),
                            Text("4 nights * 5 days"),
                          ]),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [Text("\$399", style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.blue),)],
                              ),
                              SizedBox(width:50,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue,
                                          foregroundColor: Colors.white,
                                          textStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          )
                                      ),
                                      onPressed: (){}, child: Text("Book Now"))
                                ],),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}