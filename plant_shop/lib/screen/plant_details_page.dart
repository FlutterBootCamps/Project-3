import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:plant_shop/component/ad_invite.dart';
import 'package:plant_shop/component/plant_details_stack.dart';
import 'package:plant_shop/helper/extensions/screen_helper.dart';
import 'package:plant_shop/helper/list_colors.dart';
import 'package:plant_shop/model/plant_model.dart';

import '../component/features_plant.dart';
import '../component/list_home_generate.dart';

class plantDetails extends StatelessWidget {
  plantDetails({required this.plant, super.key});
  final int _random = Random().nextInt(6);
  PlantModel plant;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("image/Group 46.png"),
        title: const Text("Plantify"),
        actions: [
          const Icon(Icons.search),
          Image.asset("image/Frame 97.png", height: 30, width: 30),
        ],
        backgroundColor: listColor[_random],
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: [
              SizedBox(
                  height: context.getHeight() * 0.80,
                  width: context.getWidth(),
                  child: plantDetailsStack(plant: plant, color: _random)),
              const Positioned(
                  bottom: 160,
                  left: 50,
                  child: Text(
                    "Overview",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                    ),
                  )),
              Positioned(
                bottom: 40,
                left: 80,
                child: SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      featuresPlant(
                          plant: "${plant.water}ml",
                          image: "image/Group 88.png",
                          title: "WATER"),
                      featuresPlant(
                          plant: "${plant.light}%",
                          image: "image/Vector.png",
                          title: "LIGHT"),
                      featuresPlant(
                          plant: "${plant.fertilizer}gm",
                          image: "image/Group 88.png",
                          title: "FERTILIZER"),
                    ],
                  ),
                ),
              ),
              const Positioned(
                  bottom: 45,
                  left: 55,
                  child: Text(
                    "plant bio",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                    ),
                  )),
              Positioned(
                  bottom: -195,
                  left: 40,
                  child: SizedBox(
                    width: context.getWidth() * 0.90,
                    height: 230,
                    child: Text(
                      plant.description,
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  )),
            ],
          ),
          CarouselSlider(
            items: [
              Image.asset("image/image 27.png",
                  fit: BoxFit.fitHeight, isAntiAlias: true),
              Image.asset("image/image 28.png",
                  fit: BoxFit.fitHeight, isAntiAlias: true),
              Image.asset("image/image 29.png",
                  fit: BoxFit.fitHeight, isAntiAlias: true),
              Image.asset("image/image 30.png",
                  fit: BoxFit.fitHeight, isAntiAlias: true),
            ],
            options: CarouselOptions(padEnds: false, height: 200),
          ),
          const Positioned(
            left: 40,
            child: Text(
              "Similar Plants",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...generateItemList(false),
                ],
              ),
            ),
          ),
          const AdInvite()
        ]),
      ),
    );
  }
}
