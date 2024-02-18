import 'package:flutter/material.dart';
import 'package:project_2/helper/helper_widget.dart';

class Overview extends StatelessWidget {
  const Overview({super.key, required this.Text1, required this.Text2, required this.image});

  final String Text1;
  final String Text2;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Row(
            children: [
              Image.asset(image),
              context.WBox(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Text1,
                    style: TextStyle(
                        color: Color(0xff0D986A), fontWeight: FontWeight.bold),
                  ),
                  Text(
                    Text2,
                    style: TextStyle(
                      fontSize: 9,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
