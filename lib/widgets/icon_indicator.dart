import 'package:flutter/material.dart';
import 'package:plantify/utils/colors.dart';

class IconIndicator extends StatelessWidget {
  const IconIndicator({
    super.key, required this.icon, required this.indicatorValue,
  });
  final String icon;
  final double indicatorValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      height: 26,
      padding: const EdgeInsets.symmetric(horizontal: 14.5),
      decoration: BoxDecoration(color: designColors[1], borderRadius: const BorderRadius.all(Radius.circular(12))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(icon),
          Text(indicatorValue.toString(), style: TextStyle(color: designColors[2], fontFamily: "Poppins", fontSize: 12, fontWeight: FontWeight.w600),)
        ],
      ),
    );
  }
}

