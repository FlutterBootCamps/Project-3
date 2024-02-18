import 'package:flutter/material.dart';

class ClickableTextButton1 extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isClicked;
  final String text;

  const ClickableTextButton1({
    required this.onPressed,
    required this.isClicked,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        primary: isClicked ? Color(0xff0D986A) : Color(0xff002140),
        textStyle: TextStyle(
          decoration: isClicked ? TextDecoration.underline : TextDecoration.none,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: Color(0xff002140)),
             ),
    );
  }
}
