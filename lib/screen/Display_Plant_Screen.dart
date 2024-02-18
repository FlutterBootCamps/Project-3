import 'package:flutter/material.dart';
import 'package:project_3/model/plants_model.dart';

class DisplayPlantScreen extends StatelessWidget {
  final Plant plant;

  // Constructor to receive the Plant object
  DisplayPlantScreen({required this.plant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(plant.name), // Displaying plant name in the app bar
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Displaying various details of the plant
            Text(
              plant.name, // Displaying plant name
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Price: \$${plant.price.toStringAsFixed(2)}', // Displaying plant price
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Type: ${plant.type}', // Displaying plant type
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Size: ${plant.size}', // Displaying plant size
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Description: ${plant.description}', // Displaying plant description
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Water: ${plant.water} ml', // Displaying water requirement
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Light: ${plant.light} lux', // Displaying light requirement
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Fertilizer: ${plant.fertilizer} g', // Displaying fertilizer requirement
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Rating: ${plant.rating}', // Displaying plant rating
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 16.0),
            Image.asset(plant.images[0]), // Displaying the first image of the plant
          ],
        ),
      ),
    );
  }
}