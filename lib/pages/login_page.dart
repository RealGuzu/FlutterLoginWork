// ignore_for_file: prefer_const_constructors

import 'package:auth_homework/components/my_button.dart';
import 'package:auth_homework/components/my_textfield.dart';
import 'package:auth_homework/pages/home_page.dart';
import 'package:auth_homework/pages/signup_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              children: [
                //icon
                Icon(
                  Icons.people,
                  size: 100,
                ),
                SizedBox(width: 0.0, height: 100),
                Text(
                  'Welcome back, you\'ve been missed!',
                  style: TextStyle(fontSize: 16),
                ),

                SizedBox(width: 0.0, height: 50),

                MyTextfield(
                  icon: Icon(Icons.people),
                  controller: usernameController,
                  hintText: 'Enter Username',
                  obscureText: false,
                ),
                SizedBox(width: 0.0, height: 15),

                MyTextfield(
                  icon: Icon(Icons.lock),
                  controller: passwordController,
                  hintText: 'Enter Password',
                  obscureText: true,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignupPage(),
                      ),
                    );
                  },
                  child: Text(
                    "Not yet a member? Signup Here.",
                  ),
                ),
                SizedBox(width: 0.0, height: 15),
                MyButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
