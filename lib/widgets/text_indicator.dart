import 'package:flutter/material.dart';
import 'package:plantify/utils/colors.dart';

class TextIndicator extends StatelessWidget {
  const TextIndicator({
    super.key,
    required this.label,
    required this.indicatorValue,
  });
  final String label;
  final String indicatorValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label.toUpperCase(),
          style: TextStyle(
              color: designColors[13],
              fontFamily: "Poppins",
              fontSize: 12,
              fontWeight: FontWeight.w600),
        ),
        Text(
          indicatorValue,
          style: TextStyle(
              color: designColors[6],
              fontFamily: "Poppins",
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
