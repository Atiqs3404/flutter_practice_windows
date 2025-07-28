import 'package:flutter/material.dart';
import 'package:untitled/module_8/class2_listview.dart';
import 'package:untitled/module_8/class3_stack.dart';
import 'package:untitled/module_8/module_8_class1.dart';
import 'package:untitled/module_8/module_8_class3.dart';

class Module9Class2 extends StatelessWidget {
  const Module9Class2({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Tab count
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange.withOpacity(0.75),
          foregroundColor: Colors.grey.shade800,
          title: Text(
            "Navigation drawer",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: "Home",
            ),
            Tab(
              icon: Icon(Icons.settings),
              text: "Settings",
            ),
            Tab(
              icon: Icon(Icons.person),
              text: "Profile",
            ),
            Tab(
              icon: Icon(Icons.search),
              text: "Search ",
            ),
          ]),
        ),

        body: TabBarView(children: [
          // Serially by container for tab

          // // Home
          // Container(
          //   color: Colors.red,
          //   child: Center(
          //       child: Text(
          //     "HOME",
          //     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          //   )),
          // ),
          // // Settings
          // Container(
          //   color: Colors.blue,
          //   child: Center(
          //       child: Text(
          //     "SETTINGS",
          //     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          //   )),
          // ),
          // // Profile
          // Container(
          //   color: Colors.yellow,
          //   child: Center(
          //       child: Text(
          //     "Profile",
          //     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          //   )),
          // ),
          // // Search
          // Container(
          //   color: Colors.cyan,
          //   child: Center(
          //       child: Text(
          //     "SEARCH",
          //     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          //   )),
          // ),

          Module8Class1(),
          Module8Class3(),
          Module8Stack(),
          ListV(number: "01795554080"),
        ]),

        // Drawer
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  child: Column(
                children: [
                  CircleAvatar(
                    radius: 42,
                    backgroundImage: AssetImage(
                      "assets/2.jpg",
                    ),
                  ),
                  Text(
                    "Atiq Hasan Sani",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "atiq.tmu.cse49@gmail.com",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                ],
              )),
              ListTile(
                // Removes the spacing between items
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                dense: true,
                title: Text("Home"),
                onTap: () {},
                onLongPress: () {},
              ),
              Divider(
                thickness: 5,
                color: Colors.orange.withOpacity(0.75),
              ),
              ListTile(
                title: Text("Item 1"),
                onTap: () {},
                onLongPress: () {},
              ),
              Divider(),
              ListTile(
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                dense: true,
                title: Text("Item 2"),
                onTap: () {},
                onLongPress: () {},
              ),
              Divider(),
              ListTile(
                title: Text("Item 3"),
                onTap: () {},
                onLongPress: () {},
              ),
              Divider(),
              ListTile(
                title: Text("Item 4"),
                onTap: () {},
                onLongPress: () {},
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
