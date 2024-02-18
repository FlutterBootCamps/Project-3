import 'package:flutter/material.dart';
import 'package:project_3_alaa/helper/shortcut.dart';
import 'package:project_3_alaa/model/plants_model.dart';
import 'package:project_3_alaa/widgets/favorite_widget.dart';

class FavoriteWidget extends StatelessWidget {
  const FavoriteWidget({super.key, required this.image, required this.plantName, required this.plant});
  final String image;
  final String plantName;
  final Plants plant;
  

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Image.asset(
              image,
              width: context.getWidth() * 0.15,
            ),
          ],
        ),
        Text(plantName,
            style:const TextStyle(fontSize: 15, fontWeight: FontWeight.w900)),
        const SizedBox(
          width: 10,
        ),
        FavoriteWidgetIcon(plant: plant,),
      ],
    );
  }
}
