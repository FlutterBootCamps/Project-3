import 'package:project_3/data/plants_data.dart';
import 'package:project_3/model/plants_model.dart';
import 'package:get_it/get_it.dart';
// Class representing data related to home screen
class HomeData {
  
  List<Plant> plants = []; // List to store Plant objects

  // Method to populate the plants list with data from plantsData
  getPlants() {
    for (var element in plantsData) {
      plants.add(Plant.fromJson(element)); // Convert JSON data to Plant objects and add them to the list
    }
  }
}

// Function to set up dependency injection using GetIt
setUp() {
  GetIt.instance; // Get the GetIt instance
  GetIt.I.registerSingleton<HomeData>(HomeData()); // Register HomeData as a singleton instance with GetIt
}