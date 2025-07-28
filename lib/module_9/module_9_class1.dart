import 'package:flutter/material.dart';

class Module9Class1Alert extends StatelessWidget {
  const Module9Class1Alert({super.key});

  @override
  Widget build(BuildContext context) {
    // Gives the current device display size
    Size screenSize = MediaQuery.of(context).size;

    void showDialogue() {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => AlertDialog(
                title: Text("Alert"),
                content: Text("Are you sure..?"),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Cancel")),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white),
                      onPressed: () {},
                      child: Text("Submit"))
                ],
              ));
    }

    void showDialogueWithIcon() {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text("Alert"),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.warning,
                          color: Colors.red,
                          size: 40,
                        ),
                        Text("Warning")
                      ],
                    ),
                    Row(
                      children: [Text("Atiq hasan new error with icon")],
                    )
                  ],
                ),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("OK"))
                ],
              ));
    }

    void showSimpleDialogue() {
      showDialog(
          context: context,
          builder: (context) => SimpleDialog(
                title: Text("Simple Dialogue"),
                children: [
                  SimpleDialogOption(
                    child: Text("Option -1"),
                  ),
                  SimpleDialogOption(
                    child: Text("Option -2"),
                  )
                ],
              ));
    }

    void showBottomSheetAlert() {
      showModalBottomSheet(
          context: context,
          builder: (context) => Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 15.0),
                  child: Column(
                    children: [
                      Text(
                        "Choose option",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      ListTile(
                        onTap: () {},
                        onLongPress: () {},
                        title: Text("Car"),
                      ),
                      ListTile(
                        onTap: () {},
                        onLongPress: () {},
                        title: Text("Honda"),
                      ),
                      ListTile(
                        onTap: () {},
                        onLongPress: () {},
                        title: Text("Cycle"),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Colors.orange.withOpacity(0.75),
                                foregroundColor: Colors.black),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Save")),
                      ),
                    ],
                  ),
                ),
              ));
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.withOpacity(0.7),
        title: Text("Alert"),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Non screen size container
              Container(
                color: Colors.green,
                width: 200,
                height: 200,
              ),

              // Screen size container and text
              Container(
                color: Colors.red,
                // width: screenSize.width / 2,
                width: screenSize.width * 0.5,
                height: screenSize.height * 0.5,
              ),
              Text(
                "This a screensize text",
                style: TextStyle(
                  fontSize: screenSize.width > 600 ? 32 : 18,
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white),
                  onPressed: () {
                    showDialogue();
                  },
                  child: Text("Alert dialogue")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white),
                  onPressed: () {
                    showDialogueWithIcon();
                  },
                  child: Text("Alert dialogue with icon")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white),
                  onPressed: () {
                    showSimpleDialogue();
                  },
                  child: Text("Simple Dialogue")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white),
                  onPressed: () {
                    showBottomSheetAlert();
                  },
                  child: Text("Bottom Sheet")),
            ],
          ),
        ),
      ),
    );
  }
}
