import 'package:auth_homework/components/my_button.dart';
import 'package:auth_homework/components/my_number.dart';
import 'package:auth_homework/components/my_textfield.dart';
import 'package:auth_homework/pages/login_page.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Icon(
                    Icons.create,
                    size: 50,
                  ),
                  const SizedBox(width: 0.0, height: 100),
                  const MyTextfield(
                    hintText: 'Enter Username',
                    obscureText: false,
                    icon: Icon(Icons.person_2),
                  ),
                  const SizedBox(width: 0.0, height: 15),
                  const MyTextfield(
                    hintText: 'Enter Email',
                    obscureText: false,
                    icon: Icon(Icons.email),
                  ),
                  const SizedBox(width: 0.0, height: 15),

                  // PhoneNumberInput(),
                  const MyTextfield(
                    hintText: 'Enter Phone Number',
                    obscureText: false,
                    icon: Icon(Icons.numbers),
                  ),
                  const SizedBox(width: 0.0, height: 50),
                  MyButton(
                    text: 'SignUp',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
