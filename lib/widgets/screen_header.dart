import 'package:flutter/material.dart';
import 'package:plantify/utils/colors.dart';

class ScreenHeader extends StatelessWidget {
  const ScreenHeader({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: designColors[2],
          fontFamily: "Poppins",
          fontSize: 32,
          fontWeight: FontWeight.bold),
    );
  }
}
