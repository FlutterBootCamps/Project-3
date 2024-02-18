import 'dart:convert';
import 'dart:io';

import 'package:project3_plants_maram/data/plant_data.dart';
import 'package:project3_plants_maram/models/plant_model.dart';
import 'package:project3_plants_maram/utills/setup.dart';

class PlantContrller {
  PlantContrller() {
    getAllFav();
    getAllPlant();
  }
  List<Plant> plantList = [];
  List<Plant> favPlantList = [];

  addFavPlant(Plant plant) {
    for(Plant plant2 in favPlantList){
      if(plant.name == plant2.name) return;
    }

    favPlantList.add(plant);
    List<String> allFavList = favPlantList.map((plant) => json.encode(plant.toMap())).toList();
    prefs?.setStringList("fav", allFavList);
  }
  removeFavPlant(Plant plant) {
    for(Plant plant2 in favPlantList){
      if(plant.name == plant2.name) {
        favPlantList.remove(plant2);
        return;
      }
    }
    List<String> allFavList = favPlantList.map((plant) => json.encode(plant.toMap())).toList();
    prefs?.setStringList("fav", allFavList);
  }

  deleteFavPlant(Plant plant) {
    favPlantList.remove(plant);
  }

  addPlant(Plant plant) {
    plantList.add(plant);
  }

  getAllPlant() {
    for (Map plantMap in plantsData) {
      plantList.add(Plant.fromJson(plantMap));
    }
  }

  getAllFav() {
    List<String>? allFavString = prefs?.getStringList("fav");
    print(allFavString);
    if (allFavString != null) {
      print(favPlantList);

      favPlantList = [
        for (String favString in allFavString)
          Plant.fromJson(json.decode(favString))
      ];
      print(favPlantList);
    }
  }


  bool checkPlantFav(Plant plant){
    for(Plant plant2 in favPlantList){
      if(plant.name == plant2.name) {
        return true;
      }
    }
    return false;
  }

}
