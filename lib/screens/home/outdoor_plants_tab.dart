import 'package:flutter/material.dart';
import 'package:nav/models/plant.dart';
import 'package:nav/widget/plant_widget.dart';

class OutdoorPlantsTab extends StatefulWidget {
  @override
  State<OutdoorPlantsTab> createState() => _OutdoorPlantsTabState();
}

class _OutdoorPlantsTabState extends State<OutdoorPlantsTab> {
  @override
  Widget build(BuildContext context) {
     // List of Outdoor  plants.
    List<Plant> plants = [
      
      Plant(
        name: "Cactus",
        price: 12.99,
        imagePath: "images/plant4.png",
        type: "Air Purifier",
        size:  "8” h",
        description: "Cactus plants are low-maintenance succulents known for their unique shapes and spiky appearance. They thrive in dry environments and are perfect for beginners.",
        water: 50,
        light: 60,
        fertilizer: 2,
        rating: 4.8,
      ),
      
      Plant(
        name: "Bird's Nest Fern",
        price: 22.99,
        imagePath: "images/plant6.png",
        type: "Air Purifier",
        size: "12” h",
        description:"Bird's Nest Fern is a popular choice for outdoor gardens due to its attractive, nest-like appearance. It has delicate, arching fronds and thrives in shaded areas.",
        water: 120,
        light: 75,
        fertilizer: 4,
        rating: 4.6,
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
