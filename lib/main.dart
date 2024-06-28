import 'package:auth_homework/pages/home_page.dart';
import 'package:auth_homework/pages/login_page.dart'; // Assuming you have the login page
import 'package:auth_homework/pages/signup_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Removed unnecessary null check

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login App', // More descriptive title
      theme: ThemeData(
        useMaterial3: true, // Enable Material 3
        colorScheme: ColorScheme.fromSeed(
          // More flexible color scheme
          seedColor: Colors.blue,
          brightness: Brightness.light, // Optional: Specify brightness
        ),
      ),
      home: LoginPage(),
      routes: {
        '/signup': (context) => const SignupPage(),
        '/home': (context) => const HomePage(),
      }, // Added const for efficiency
    );
  }
}
