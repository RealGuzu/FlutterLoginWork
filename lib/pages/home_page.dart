import 'package:auth_homework/components/my_button.dart';
import 'package:auth_homework/pages/login_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/background.jpg'), // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.home,
                  size: 120,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Welcome Home!',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 40),
                MyButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  text: 'Login',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Placeholder for your LoginPage (replace with your actual login page)


