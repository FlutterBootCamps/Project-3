import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:plantify/data%20layer/home_data.dart';
import 'package:plantify/helpers/extensions/screen_helper.dart';
import 'package:plantify/models/Plant_model.dart';

class FavoritePlantContainer extends StatelessWidget {
  const FavoritePlantContainer({
    super.key,
    required this.plant,
    required this.notifyParent,
  });
  final Function() notifyParent;

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.getWidth(context),
      height: 74,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  SvgPicture.asset(
                    "assets/images/favorite_plant_bg.svg",
                    colorFilter: ColorFilter.mode(
                        Color(int.parse(plant.color)), BlendMode.srcIn),
                  ),
                  Positioned(
                      bottom: -5,
                      right: 0,
                      child: Image.asset(
                        plant.imagePath,
                        scale: 2.5,
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 24, left: 10),
                child: Text(
                  plant.name,
                  style: const TextStyle(
                      fontFamily: "Philosopher",
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: IconButton(
                onPressed: () {
                  GetIt.I.get<HomeData>().removeFromFavorite(plant);
                  notifyParent();
                },
                icon: Image.asset("assets/icons/heart_filled_red.png")),
          )
        ],
      ),
    );
  }
}
