import 'package:flutter/material.dart';
import 'package:plantify/utils/colors.dart';

class MottoLines extends StatelessWidget {
  const MottoLines({
    super.key,
    required this.topText,
    required this.centerText,
    required this.bottomText,
  });
  final String topText;
  final String centerText;
  final String bottomText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(
          thickness: 3,
          color: designColors[6],
          endIndent: 322,
          indent: 3,
        ),
        Text(
          topText,
          style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 36,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              color: designColors[6]),
        ),
        Text(
          centerText,
          style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 28,
              fontWeight: FontWeight.bold,
              letterSpacing: 0,
              color: designColors[9]),
        ),
        Text(
          bottomText,
          style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              color: designColors[10]),
        ),
      ],
    );
  }
}
