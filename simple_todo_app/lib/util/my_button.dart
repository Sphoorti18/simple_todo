import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  MyButton({
    super.key,
    required this.text,
    required this.onPressed,
    });
  
  
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Color.fromRGBO(12, 129, 123, 1.0),
      child: Text(text),
      textColor: Color.fromRGBO(255, 255, 255, 1.0),
    );
  }
}
