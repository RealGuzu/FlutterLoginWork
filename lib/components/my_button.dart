import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, this.onPressed, required this.text});

  final onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: onPressed,
            child: Text(text),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
            ),
          ),
        ],
      ),
    );
  }
}
