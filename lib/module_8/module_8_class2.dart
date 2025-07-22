import 'package:flutter/material.dart';
import 'package:untitled/module_8/class2_listview.dart';

class Module8Class2 extends StatelessWidget {
  Module8Class2({super.key});

  final _formKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Module 8 Class 2"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // Online image
            Image.network(
              "https://about.fb.com/wp-content/uploads/2018/11/fb-hero-image-001.jpeg",
              width: 400,
              height: 200,
            ),
            // Offline image
            Image.asset(
              "asset/1.jpg",
              width: 400,
              height: 200,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Login with phone and password",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      controller: phoneController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "Phone number",
                        hintStyle: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your number";
                        } else if (value.length != 11) {
                          return "Please enter correct phone number";
                        } else
                          return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "Password",
                        hintStyle: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your password";
                        } else if (value.length < 6) {
                          return "Password must be at least 6 characters";
                        } else
                          return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange.withOpacity(0.75),
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Success")));
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ListV(
                                          name: phoneController.text,
                                        )));
                          }
                        },
                        child: Text("Login")),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
