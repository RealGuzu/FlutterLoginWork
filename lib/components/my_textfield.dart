import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  const MyTextfield({
    super.key,
    this.controller,
    required this.hintText,
    required this.obscureText,
    this.icon,
    this.errorText,
  });

  final TextEditingController? controller; // Make it nullable and type it
  final String hintText;
  final String? errorText; // Make it nullable
  final bool obscureText;
  final Widget? icon; // Make it nullable and type it

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade100),
          borderRadius: BorderRadius.circular(25.0),
        ),
        filled: true,
        prefixIcon: icon, // Use prefixIcon for consistent placement
        hintText: hintText,
        errorText: errorText,
        fillColor: Colors.grey.shade200,
      ),
      obscureText: obscureText, // Pass the obscureText value
    );
  }
}
