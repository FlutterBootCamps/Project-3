
import 'package:nav/datasets/plant_json.dart';
import 'package:nav/models/plant.dart';

class PlantData {
  List<Plant> allProducts = [];

 
// Constructor to initialize the PlantData class.
  PlantData() {
    getAllProducts();
  }

  // Method to populate the list of all products from JSON data.
  getAllProducts() {
    plantsData.map((item) {
      allProducts.add(Plant.fromJson(item));
    }).toList();
  }

}