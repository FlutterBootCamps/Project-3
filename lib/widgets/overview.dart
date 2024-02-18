import 'package:flutter/material.dart';

class Overview extends StatelessWidget {
  Overview({
    super.key,
    required this.path,
    required this.title,
    required this.subTitle,
  });

  final String path;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          path,
          width: 22,
          height: 22,
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0D986A)),
            ),
            Text(
              subTitle,
              style: TextStyle(fontSize: 9),
            )
          ],
        )
      ],
    );
  }
}
