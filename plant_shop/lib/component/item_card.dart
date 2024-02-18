import 'package:flutter/material.dart';
import 'package:plant_shop/component/favorite_button.dart';
import 'package:plant_shop/helper/extensions/screen_helper.dart';
import 'package:plant_shop/model/plant_model.dart';

import '../screen/plant_details_page.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    required this.plant,
    required this.color,
    super.key,
  });
  final PlantModel plant;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.getHeight() * 0.30,
      width: context.getWidth(),
      child: Stack(
        children: <Widget>[
          Container(
              margin: const EdgeInsets.only(top: 20, right: 65),
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              height: context.getHeight() * 0.25,
              width: context.getWidth() * 0.95,
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Air Purifier",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      plant.name,
                      style: const TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w700,
                          height: 1.2),
                    ),
                    Text(
                      "\$ ${plant.price}",
                      style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          height: 4.5),
                    )
                  ],
                ),
              )),
          Positioned(
              right: 180, top: 40, child: Image.asset("image/Group 66.png")),
          Positioned(
              right: -35,
              bottom: 30,
              child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.asset(plant.imagePath))),
          Positioned(
              right: 130,
              top: 130,
              child: SizedBox(
                  height: 50,
                  width: 50,
                  child: InkWell(
                    child: Image.asset("image/Group 61.png",height: 200,fit: BoxFit.contain,),
                    onTap: () {
                      context.pushTo(view: plantDetails(plant: plant));
                    },
                  ))),
          Positioned(right: 190, top: 140, child: FavoriteWidget(plant: plant)),
        ],
      ),
    );
  }
}
