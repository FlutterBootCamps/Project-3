import 'package:flutter/material.dart';
import 'package:nav/models/plant.dart';
import 'package:nav/widget/plant_widget.dart';

class IndoorPlantsTab extends StatefulWidget {
  @override
  State<IndoorPlantsTab> createState() => _IndoorPlantsTabState();
}

class _IndoorPlantsTabState extends State<IndoorPlantsTab> {
  @override
  Widget build(BuildContext context) {
     // List of Indoor  plants.
    List<Plant> plants = [
      Plant(
        name: "Peperomia",
        price: 400,
        imagePath: "images/plant1.png", 
        type: "Air Purifier",
        size: "6” h",
        description: "Great for indoor air purification.",
        water: 2,
        light: 3,
        fertilizer: 1,
        rating: 4.7,
      ),
     
      Plant(
        name: "Watermelon",
        price: 19.99,
        imagePath: "images/plant2.png", 
        type: "Air Purifier",
        size:  "4” h",
        description: "Great for indoor air purification.",
        water: 100,
        light: 70,
        fertilizer: 3,
        rating: 4.0,
      ),
      
      Plant(
        name: "Croton Petra",
        price: 29.99,
        imagePath: "images/plant5.png", 
        type: "Air Purifier",
        size: "10” h",
        description: "Croton Petra is a colorful foliage plant with vibrant, variegated leaves in shades of green, yellow, orange, and red. It adds a tropical touch to any indoor space.",
        water: 200,
        light: 90,
        fertilizer: 6,
        rating: 4.3,
      ),
      
      Plant(
        name: "Aloe Vera",
        price: 15.99,
        imagePath: "images/plant7.png", 
        type: "Air Purifier",
        size: "7” h",
        description:  "Aloe Vera is a versatile succulent known for its medicinal properties and soothing gel. It requires bright, indirect light and minimal watering to thrive.",
        water: 80,
        light: 85,
        fertilizer: 3,
        rating: 4.2,
      ),
    ];

    // Function to toggle the favorite status of a plant.
    void toggleFavoriteStatus(int index) {
    setState(() {
      plants[index].isFavorite = !plants[index].isFavorite;
    });
  }
    return Scaffold(
      
      body: ListView.builder(
        itemCount: plants.length,
        itemBuilder: (context, index) {
          return PlantWidget(plant: plants[index], name: 'all', price: 400, imagePath: '', type: '', size: '', description: '', water: 150, light: 80, fertilizer: 5, rating: 4.5, onFavoriteTap: () => toggleFavoriteStatus(index),);
        },
      ),
    );
  }
}
