import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:plantify/utils/colors.dart';

class LearnMoreText extends StatelessWidget {
  const LearnMoreText({
    super.key, required this.text, this.recognizer,
  });
  final String text;
  final GestureRecognizer? recognizer;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        width: 337,
        child: RichText(
          text: TextSpan(
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: designColors[8]),
            text:
                text,
            children: [
              TextSpan(
                  recognizer: recognizer,
                  style: TextStyle(
                      color: designColors[2],
                      fontFamily: "Poppins",
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                  text: "Learn More")
            ],
          ),
        ),
      ),
      Positioned(
        left: 180,
        top: 48,
        child: Container(
          width: 36,
          height: 1,
          color: designColors[2],
        ),
      )
    ]);
  }
}
