import 'package:flutter/material.dart';

class Module8Class1 extends StatelessWidget {
  const Module8Class1({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.withOpacity(0.75),
        title: Text("Module 8 Class 1"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              keyboardType: TextInputType.phone,
              controller: phoneController,
              decoration: InputDecoration(
                  hintText: "Enter your number",
                  hintStyle: TextStyle(
                    color: Colors.orange.withOpacity(0.75),
                    fontSize: 18,
                  ),
                  labelText: "Phone number",
                  labelStyle: TextStyle(
                    color: Colors.orange.withOpacity(0.75),
                    fontSize: 20,
                  ),
                  prefixIcon: Icon(Icons.phone),
                  suffix: Icon(Icons.check),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  )),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                  hintText: "Enter your password",
                  hintStyle: TextStyle(
                    color: Colors.orange.withOpacity(0.75),
                    fontSize: 18,
                  ),
                  labelText: "Password",
                  labelStyle: TextStyle(
                    color: Colors.orange.withOpacity(0.75),
                    fontSize: 20,
                  ),
                  prefixIcon: Icon(Icons.phone),
                  suffix: Icon(Icons.check),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  )),
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange.withOpacity(0.75),
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    if (phoneController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Please enter your number")));
                    } else if (phoneController.text.length < 11 ||
                        phoneController.text.length > 11) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Please enter correct phone number")));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(phoneController.text)));
                      phoneController.clear();
                    }
                  },
                  child: Text("Submit"))),
          SizedBox(height: 20),
          SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange.withOpacity(0.75),
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    phoneController.clear();
                    passwordController.clear();
                  },
                  child: Text("Clear"))),
          SizedBox(height: 40),
          Container(
            alignment: Alignment(1, 0),
            // When using box decoration color must be inside it
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 2, color: Colors.black),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      offset: Offset(10, 10))
                ]),
            height: 100,
            width: 200,
            child: Text("This is a container"),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
