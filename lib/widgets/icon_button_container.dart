import 'package:flutter/material.dart';
import 'package:plantify/utils/colors.dart';

class IconButtonContainer extends StatelessWidget {
  const IconButtonContainer({
    super.key,
    required this.icon,
  });

  final String icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 42,
        height: 46,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(14)),
            border: Border.all(
                color: designColors[6],
                width: 1,
                strokeAlign: BorderSide.strokeAlignInside)),
        child: Image.asset(icon),
      ),
    );
  }
}