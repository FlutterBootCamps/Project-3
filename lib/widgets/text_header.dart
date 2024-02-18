import 'package:flutter/material.dart';
import 'package:plantify/utils/colors.dart';

class TextHeader extends StatelessWidget {
  const TextHeader({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: designColors[6],
          fontFamily: "Poppins",
          fontSize: 14,
          fontWeight: FontWeight.bold),
    );
  }
}
