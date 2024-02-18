import 'package:flutter/material.dart';
import 'package:plantify/utils/colors.dart';

class IconTextIndicator extends StatelessWidget {
  const IconTextIndicator({
    super.key,
    required this.label,
    required this.indicatorValue,
    required this.icon,
    required this.width,
  });

  final String label;
  final String indicatorValue;
  final String icon;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(icon),
          Column(
            children: [
              Text(
                indicatorValue,
                style: TextStyle(
                    color: designColors[2],
                    fontFamily: "Poppins",
                    fontSize: 13,
                    fontWeight: FontWeight.w600),
              ),
              Text(label.toUpperCase(),
                  style: TextStyle(
                      color: designColors[15],
                      fontFamily: "Poppins",
                      fontSize: 9,
                      fontWeight: FontWeight.w600))
            ],
          )
        ],
      ),
    );
  }
}
