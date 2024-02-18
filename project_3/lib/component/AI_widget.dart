import 'package:flutter/material.dart';

class AIWidget extends StatelessWidget {
  const AIWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          width: double.infinity, height: 175, color: const Color(0xffF5EDA8)),
      Positioned(
          right: 25,
          top: 25,
          child: Image.asset(
            'images/AI Scan.png',
            height: 128,
            width: 128,
          )),
      const Positioned(
        left: 30,
        top: 30,
        child: Text(
          "That Very plant?",
          style: TextStyle(
            fontSize: 25,
            fontFamily: 'Philosopher',
            color: Color(0xff002140),
          ),
        ),
      ),
      const Positioned(
        left: 30,
        bottom: 55,
        child: SizedBox(
          width: 200,
          child: Text(
            "Just Scan and the AI will know exactly",
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Poppins',
              color: Color(0xff002140),
            ),
          ),
        ),
      ),
    ]);
  }
}
