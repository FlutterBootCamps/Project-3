import 'package:flutter/material.dart';
import 'package:plantify/utils/colors.dart';

class IconText extends StatelessWidget {
  const IconText({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            color: designColors[6],
            fontFamily: "Poppins",
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Image.asset(
          icon,
          scale: 0.9,
        ),
      ],
    );
  }
}
