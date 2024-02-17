import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:plantify/data%20layer/home_data.dart';
import 'package:plantify/helpers/extensions/screen_helper.dart';
import 'package:plantify/models/Plant_model.dart';
import 'package:plantify/utils/colors.dart';
import 'package:plantify/widgets/checkout_bar.dart';
import 'package:plantify/widgets/icon_indicator.dart';
import 'package:plantify/widgets/icon_text.dart';
import 'package:plantify/widgets/icon_text_indicator.dart';
import 'package:plantify/widgets/media_container.dart';
import 'package:plantify/widgets/media_grid_view.dart';
import 'package:plantify/widgets/new_feature_banner.dart';
import 'package:plantify/widgets/roundy_button.dart';
import 'package:plantify/widgets/text_header.dart';
import 'package:plantify/widgets/text_indicator.dart';

class PlantDetailsScreen extends StatefulWidget {
  const PlantDetailsScreen({super.key, required this.plant});

  final Plant plant;

  @override
  State<PlantDetailsScreen> createState() => _PlantDetailsScreenState();
}

class _PlantDetailsScreenState extends State<PlantDetailsScreen> {
  void refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(int.parse(widget.plant.color)),
        leading: Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              "assets/images/logo.png",
            )),
        title: const Text(
          "PLANTFIY",
          style: TextStyle(
              fontFamily: "Philosopher",
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.5),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: Image.asset("assets/icons/search.png")),
          Padding(
            padding: const EdgeInsets.only(right: 28),
            child: IconButton(
                onPressed: () {}, icon: Image.asset("assets/icons/menu.png")),
          )
        ],
      ),
      bottomNavigationBar: const CheckoutBar(
        totalPrice: 1090,
        isEnabled: true,
        noOfPlants: 3,
      ),
      body: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: context.getWidth(context),
                height: 346,
                padding: const EdgeInsets.only(left: 26, right: 36),
                decoration: BoxDecoration(
                    color: Color(int.parse(widget.plant.color)),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const IconText(
                            text: "Air Purifier",
                            icon: "assets/images/paw.png"),
                        IconIndicator(
                          icon: "assets/icons/star.png",
                          indicatorValue: widget.plant.rating,
                        ),
                      ],
                    ),
                    Text(
                      widget.plant.name,
                      style: TextStyle(
                        color: designColors[6],
                        fontFamily: "Philosopher",
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 34,
                    ),
                    TextIndicator(
                      label: "Price",
                      indicatorValue: "\$${widget.plant.price}",
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    TextIndicator(
                      label: "Size",
                      indicatorValue: widget.plant.size,
                    ),
                    const SizedBox(
                      height: 74,
                    ),
                  ],
                ),
              ),
              Positioned(
                  left: context.getWidth(context) * 0.3,
                  top: 70,
                  child: Image.asset(
                    "assets/images/plant1.png",
                    scale: 0.60,
                  )),
              Positioned(
                top: 300,
                left: 35,
                child: SizedBox(
                  width: 136,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RoundyButton(
                        onTap: () {},
                        notifyParent: () {},
                        icon: "assets/images/smiley.png",
                        color: designColors[2],
                        boxShadow: [
                          BoxShadow(
                            color: designColors[14],
                            blurRadius: 14,
                            offset: const Offset(0, 5),
                          )
                        ],
                      ),
                      RoundyButton(
                          onTap: () {
                            if (GetIt.I
                                .get<HomeData>()
                                .checkInFavorite(widget.plant)) {
                              GetIt.I
                                  .get<HomeData>()
                                  .removeFromFavorite(widget.plant);
                            } else {
                              GetIt.I
                                  .get<HomeData>()
                                  .addToFavorite(widget.plant);
                            }
                          },
                          notifyParent: refresh,
                          icon: (GetIt.I
                                  .get<HomeData>()
                                  .checkInFavorite(widget.plant))
                              ? "assets/icons/heart_filled_red.png"
                              : "assets/icons/heart_filled.png",
                          color: designColors[1],
                          boxShadow: [
                            BoxShadow(
                              color: designColors[14],
                              blurRadius: 14,
                              offset: const Offset(0, 5),
                            )
                          ]),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextHeader(text: "Overview"),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconTextIndicator(
                      label: "Water",
                      indicatorValue: "${widget.plant.water}ml",
                      icon: "assets/icons/water_drop.png",
                      width: 68.21,
                    ),
                    IconTextIndicator(
                      label: "Light",
                      indicatorValue: "${widget.plant.light}%",
                      icon: "assets/icons/sun_light.png",
                      width: 84.25,
                    ),
                    IconTextIndicator(
                      label: "Fertilizer",
                      indicatorValue: "${widget.plant.fertilizer}gm",
                      icon: "assets/icons/soil_dots.png",
                      width: 79.08,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 44,
                ),
                const TextHeader(text: "Plant Bio"),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  widget.plant.description,
                  style: const TextStyle(
                    fontFamily: "Philosopher",
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 33.62,
          ),
          const MediaGridView(
            media: [
              MediaContainer(
                media: "assets/images/plant_1_bg1.png",
                isVideo: true,
              ),
              MediaContainer(
                media: "assets/images/plant_1_bg2.png",
                isVideo: false,
              ),
              MediaContainer(
                media: "assets/images/plant_1_bg3.png",
                isVideo: false,
              ),
              MediaContainer(
                media: "assets/images/plant_1_bg4.png",
                isVideo: false,
              ),
            ],
          ),
          const SizedBox(
            height: 44,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 36),
            child: TextHeader(text: "Similar Plants"),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: context.getWidth(context),
            height: 137,
            child: GridView.count(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              clipBehavior: Clip.none,
              crossAxisCount: 1,
              scrollDirection: Axis.horizontal,
              childAspectRatio: 1 / 1.3,
              mainAxisSpacing: 14,
              children:
                  GetIt.I.get<HomeData>().getAllButViewedPlant(widget.plant),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          const NewFeatureBanner(
            image: "assets/images/scan_plant.png",
            topText: "That very plant?",
            bottomText: "Just Scan and the AI will know exactly",
            buttonText: "Scan Now",
          ),
          const SizedBox(
            height: 74,
          )
        ],
      ),
    );
  }
}

