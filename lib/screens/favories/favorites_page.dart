import 'package:flutter/material.dart';
import 'package:nav/models/plant.dart';
import 'package:nav/widget/plant_widget.dart';

class FavoritesPage extends StatelessWidget {
 
  
 final List<Plant> favoritePlants;
FavoritesPage({required this.favoritePlants});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          title: Row(
            children: [
              Container(
                width: 172,
                height: 28,
                child: Image.asset('images/logo.png', fit: BoxFit.contain),
              ),
              Spacer(),
              
              SizedBox(width: 16),
              Icon(Icons.menu_sharp),
            ],
          ),
        ),
      
       body: ListView.builder(
        itemCount: favoritePlants.length,
        itemBuilder: (context, index) {
          return PlantWidget(
            plant: favoritePlants[index],
            onFavoriteTap: () {
             
            }, name: '', price: 22, imagePath: '', type: '', size: '', description: '', water: 80, light: 3, fertilizer: 4, rating: 5,
          );
        },
      ),
    );
  }
}