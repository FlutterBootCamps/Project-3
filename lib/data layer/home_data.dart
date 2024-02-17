import 'package:flutter/material.dart';
import 'package:plantify/data/plants_data.dart';
import 'package:plantify/models/Plant_model.dart';
import 'package:plantify/screens/basket_screen.dart';
import 'package:plantify/screens/favourite_screen.dart';
import 'package:plantify/screens/home_screen.dart';
import 'package:plantify/screens/profile_screen.dart';
import 'package:plantify/widgets/invite_card.dart';
import 'package:plantify/widgets/learn_more_text.dart';
import 'package:plantify/widgets/motto_text.dart';
import 'package:plantify/widgets/plant_card.dart';

class HomeData {
  final List<Widget> screens = [
    const HomeScreen(),
    FavouriteScreen(),
    const BasketScreen(),
    const ProfileScreen()
  ];

  int plantFilterIndex = 0;

  List<Plant> favoritePlants = [];

  void addToFavorite(Plant plant) {
    if (!favoritePlants.any((element) {
      return element.name == plant.name;
    })) {
      favoritePlants.add(plant);
    }
  }
  bool checkInFavorite(Plant plant) {
    return favoritePlants.any((element) => element.name == plant.name);
  }
  void removeFromFavorite(Plant plant){
    favoritePlants.removeWhere((element) => element.name == plant.name);
  }

  List<Widget> getallPlants() {
    return [
      ...List<Widget>.generate(plantsData.length, (index) {
        Plant currentPlant = Plant.fromJson(plantsData[index]);
        if (index == 1) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PlantCard(plant: currentPlant),
              const SizedBox(height: 28),
              const InviteCard(
                headerText: "Invite a Friend and earn Plantify rewards",
                descriptionText: "Redeem them to get instant discounts",
                buttonText: "Invite",
              ),
            ],
          );
        } else if (index == 3) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PlantCard(plant: currentPlant),
              const SizedBox(height: 62),
              const LearnMoreText(
                text:
                    "Caring for plants should be fun. That’s why we offer 1-on-1 virtual consultations from the comfort of your home or office.                            ",
              ),
            ],
          );
        } else if (index == 5) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PlantCard(plant: currentPlant),
              const SizedBox(height: 47),
              const MottoLines(
                topText: "Plant a Life",
                centerText: "Live amongst Living",
                bottomText: "Spread the joy",
              )
            ],
          );
        }
        return PlantCard(plant: currentPlant);
      }),
    ];
  }
  List<Widget> getAllButViewedPlant(Plant plant){
    List<Widget> cleanList = [];
    for (var element in plantsData){
      Plant currentPlant = Plant.fromJson(element);

      if (currentPlant.name != plant.name){
        cleanList.add(PlantCard(plant: currentPlant, isMini: true,));
      }
    }
    return cleanList;
  }
}
