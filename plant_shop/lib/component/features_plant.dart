import 'package:flutter/material.dart';

class featuresPlant extends StatelessWidget {
  featuresPlant({
    super.key,
    required this.plant,
    required this.title,
    required this.image,
  });

  final String plant;
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
        width: 90,
        child: Row(
          children: [
            Image.asset(image),
            Column(children: [
              Text(
                "${plant.toString()}ml",
                style: TextStyle(
                    color: Colors.green.shade400,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 1.5),
              ),
              Text(
                title,
                style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    height: 1.5),
              )
            ])
          ],
        ));
  }
}

