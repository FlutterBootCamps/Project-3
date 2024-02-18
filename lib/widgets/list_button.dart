import 'package:flutter/material.dart';
import 'package:plantify/utils/colors.dart';

class ListButton extends StatelessWidget {
  const ListButton({
    super.key,
    required this.text,
    required this.isActive,
  });
  final String text;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 3,
      ),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: (isActive) ? designColors[2] : designColors[4],
                  width: 2))),
      child: Text(
        text,
        style: TextStyle(
          color: (isActive) ? designColors[2] : designColors[6],
          fontWeight: (isActive) ? FontWeight.bold : FontWeight.normal,
          fontSize: 14,
        ),
      ),
    );
  }
}
