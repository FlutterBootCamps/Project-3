import 'package:project_2/datasets/plants_data.dart';
import 'package:project_2/model/plant_model.dart';

class PlantData {
  List<Plant> allProducts = [];

  // List<Plant> carts = [];

  PlantData() {
    getAllProducts();
  }
  getAllProducts() {
   // print(plantsData);
    plantsData.map((item) {
      allProducts.add(Plant.fromJson(item));
    }).toList();
  }

}

