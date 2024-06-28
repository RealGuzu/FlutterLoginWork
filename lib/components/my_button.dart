import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, this.onPressed});

  final onPressed;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [ElevatedButton(onPressed: onPressed, child: Text('Login'))],
    ));
  }
}
