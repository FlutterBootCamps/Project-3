
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:plant_shop/component/counter_button.dart';
import 'package:plant_shop/database/get_it.dart';
import 'package:plant_shop/helper/extensions/screen_helper.dart';
import 'package:plant_shop/model/plant_model.dart';

import 'book_mark.dart';

class ItemRowCart extends StatelessWidget {
  const ItemRowCart(
      {super.key,
      required this.plant,
      required BookMark bookMark,
      required this.color});
  final PlantModel plant;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
            height: 60,
            width: 60,
            child: Stack(children: [
              Positioned(
                  top: 20,
                  child: Image.asset("image/Rectangle 28.png", color: color)),
              Container(
                  height: 60, width: 60, child: Image.asset(plant.imagePath))
            ]),
          ),
          const SizedBox(width: 10),
          Column(children: [
            SizedBox(
              height: 60,
              width: context.getWidth() * 0.5,
              child: Baseline(
                  baseline: 40,
                  baselineType: TextBaseline.alphabetic,
                  child: Text(
                    plant.name,
                    style: const TextStyle(fontSize: 20, color: Colors.black),
                  )),
            ),
            CustomizableCounterWidget(plant: plant),
            InkWell(
              onTap: () {
                GetIt.I.get<HomeData>().removeItemCart(item: plant);
              },
              child: Icon(Icons.delete),
            )
          ]),
          BookMark(plant: plant),
          Text(" \$ ${plant.price * plant.quantity}")
        ],
      ),
    );
  }
}
