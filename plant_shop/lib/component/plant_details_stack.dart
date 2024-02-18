import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:plant_shop/component/favorite_button.dart';
import 'package:plant_shop/database/get_it.dart';
import 'package:plant_shop/helper/extensions/screen_helper.dart';
import 'package:plant_shop/model/plant_model.dart';

import '../helper/list_colors.dart';

class plantDetailsStack extends StatelessWidget {
  const plantDetailsStack({
    super.key,
    required this.plant,
    required this.color,
  });
  final int color;
  final PlantModel plant;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            decoration: BoxDecoration(
                color: listColor[color],
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            height: context.getHeight() * 0.5,
            width: context.getWidth(),
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Air Purifier",
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 130,
                    child: Text(
                      plant.name,
                      style: const TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w700,
                          height: 1.5),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "PRICE",
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        height: 1.5),
                  ),
                  Text(
                    "\$ ${plant.price}",
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w600, height: 1.5),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "SIZE",
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        height: 1.5),
                  ),
                  Text(
                    "${plant.size}",
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w600, height: 1.5),
                  )
                ],
              ),
            )),
        Positioned(
            right: 180,
            top: 40,
            child: Container(
                alignment: Alignment.center,
                width: 100,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.green,
                    ),
                    Text(plant.rating.toString(),
                        style: const TextStyle(
                            color: Colors.green,
                            fontSize: 15,
                            fontWeight: FontWeight.w500))
                  ],
                ))),
        Positioned(
            right: 180, top: 40, child: Image.asset("image/Group 66.png")),
        Positioned(
            right: -35,
            bottom: 170,
            child: SizedBox(
                height: 300, width: 300, child: Image.asset(plant.imagePath))),
        Positioned(
            left: 100,
            bottom: 225,
            child: Container(height: 50,width: 50,
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(blurStyle: BlurStyle.normal, blurRadius: 90)
                ]),
                child: InkWell(
                  onTap: () {
                    GetIt.I.get<HomeData>().addItemCart(item: plant);
                  },
                  child: Image.asset("image/Group 61.png",
                       fit: BoxFit.cover),
                ))),
        Positioned(
            left: 200,
            bottom: 225,
            child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      const BoxShadow(
                          blurStyle: BlurStyle.normal, blurRadius: 80)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                height: 50,
                width: 50,
                child: FavoriteWidget(plant: plant))),
      ],
    );
  }
}
