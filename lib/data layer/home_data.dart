import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
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

class HomeData with WidgetsBindingObserver {
  final List<Widget> screens = [
    HomeScreen(),
    const FavouriteScreen(),
    const BasketScreen(),
    const ProfileScreen()
  ];
  HomeData() {
    loadData();
    WidgetsBinding.instance.addObserver(this);
  }

  int plantFilterIndex = 0;
  bool isSearching = false;

  List<Plant> favoritePlants = [];
  List<Plant> basketPlants = [];
  List<Plant> savedPlants = [];

  void addToFavorite(Plant plant) {
    if (!favoritePlants.any((element) {
      return element.name == plant.name;
    })) {
      favoritePlants.add(plant);
    }
    saveData();
  }

  bool checkInFavorite(Plant plant) {
    return favoritePlants.any((element) => element.name == plant.name);
  }

  void removeFromFavorite(Plant plant) {
    favoritePlants.removeWhere((element) => element.name == plant.name);
    saveData();
  }

  String addToBasket(Plant plant) {
    for (var element in basketPlants) {
      if (element.name == plant.name) {
        element.quantity++;
        saveData();
        return "You now have ${element.quantity} of ${plant.name} in basket";
      }
    }
    for (var element in savedPlants) {
      if (element.name == plant.name) {
        element.quantity++;
        saveData();
        return "You now have ${element.quantity} of ${plant.name} in Saved List";
      }
    }
    basketPlants.add(plant);
    saveData();
    return "${plant.name} has been added to basket";
  }

  void decreasePlantQuantity(Plant plant) {
    for (var element in basketPlants) {
      if (element.name == plant.name && element.quantity > 1) {
        element.quantity--;
      }
    }
    for (var element in savedPlants) {
      if (element.name == plant.name && element.quantity > 1) {
        element.quantity--;
      }
    }
    saveData();
  }

  void increasePlantQuantity(Plant plant) {
    for (var element in basketPlants) {
      if (element.name == plant.name) {
        element.quantity++;
      }
    }
    for (var element in savedPlants) {
      if (element.name == plant.name) {
        element.quantity++;
      }
    }
    saveData();
  }

  void removeFromBasket(Plant plant) {
    basketPlants.removeWhere((element) => element.name == plant.name);
    savedPlants.removeWhere((element) => element.name == plant.name);
    saveData();
  }

  String moveToFromSaved(Plant plant) {
    if (!plant.isSaved) {
      removeFromBasket(plant);
      plant.isSaved = true;
      savedPlants.add(plant);
      saveData();
      return "${plant.name} has been moved to saved plants";
    } else {
      savedPlants.removeWhere((element) => element.name == plant.name);
      plant.isSaved = false;
      addToBasket(plant);
      saveData();
      return "${plant.name} has been added back to basket";
    }
  }

  int getTotalPrice() {
    double total = 0;
    for (var element in basketPlants) {
      total += element.price * element.quantity;
    }
    return (total + 80).round();
  }

  SizedBox getallPlants() {
    return SizedBox(
      height: 1800,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
          ]),
    );
  }

  List<Widget> getAllButViewedPlant(Plant plant) {
    List<Widget> cleanList = [];
    for (var element in plantsData) {
      Plant currentPlant = Plant.fromJson(element);

      if (currentPlant.name != plant.name) {
        cleanList.add(PlantCard(
          plant: currentPlant,
          isMini: true,
        ));
      }
    }
    return cleanList;
  }

  SizedBox getAllIndoorPlants() {
    List<Widget> cleanList = [];
    for (var element in plantsData) {
      Plant currentPlant = Plant.fromJson(element);

      if (currentPlant.type == "Indoor Plant") {
        cleanList.add(PlantCard(
          plant: currentPlant,
        ));
      }
    }
    return SizedBox(
      height: 860,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: cleanList),
    );
  }

  SizedBox getAllOutdoorPlants() {
    List<Widget> cleanList = [];
    for (var element in plantsData) {
      Plant currentPlant = Plant.fromJson(element);

      if (currentPlant.type == "Outdoor Plant") {
        cleanList.add(PlantCard(
          plant: currentPlant,
        ));
      }
    }
    return SizedBox(
      height: 403,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: cleanList),
    );
  }

  SizedBox getPlantFilterResults() {
    if (plantFilterIndex == 0) {
      return getallPlants();
    } else if (plantFilterIndex == 1) {
      return getAllIndoorPlants();
    } else {
      return getAllOutdoorPlants();
    }
  }

  SizedBox getSearchCriteria(String searchText) {
    List<Widget> searchList = [];
    for (var element in plantsData) {
      Plant currentPlant = Plant.fromJson(element);

      if (currentPlant.name.toLowerCase().contains(searchText.toLowerCase())) {
        searchList.add(Padding(
          padding: const EdgeInsets.only(bottom: 65),
          child: PlantCard(
            plant: currentPlant,
          ),
        ));
      }
    }
    if (searchList.isEmpty) {
      return const SizedBox(
        child: Center(
          child: Text(
            "No Results Found.",
            style: TextStyle(
                fontFamily: "Philosopher",
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
      );
    }
    return SizedBox(
      height: 300 * searchList.length.toDouble(),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: searchList),
    );
  }

  void saveData() {
    var locator = GetStorage();
    locator.write("favList", favoritePlants.map((e) => e.toJson()).toList());
    locator.write("basketList", basketPlants.map((e) => e.toJson()).toList());
    locator.write("savedList", savedPlants.map((e) => e.toJson()).toList());
  }

  void loadData() {
    var locator = GetStorage();
    favoritePlants = (locator.read<List<dynamic>>("favList") ?? [])
        .map((e) => Plant.fromJson(e))
        .toList();
    basketPlants = (locator.read<List<dynamic>>("basketList") ?? [])
        .map((e) => Plant.fromJson(e))
        .toList();
    savedPlants = (locator.read<List<dynamic>>("savedList") ?? [])
        .map((e) => Plant.fromJson(e))
        .toList();
  }
}
