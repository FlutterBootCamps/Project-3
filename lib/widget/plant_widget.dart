import 'package:flutter/material.dart';
import 'package:nav/models/plant.dart';
 
 /// Displays a plant's image and details with a favorite toggle button.
class PlantWidget extends StatelessWidget {
  final Plant plant;
 final VoidCallback onFavoriteTap;
  PlantWidget({required this.plant, required String name, required int price, required String imagePath, required String type, required String size, required String description, required int water, required int light, required int fertilizer, required double rating,required this.onFavoriteTap});

  @override
  Widget build(BuildContext context) {
    
    double imageHeight = 100.0;
    return Center(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
        
          Container(
            width: 490,
            
            margin: EdgeInsets.only(
              top: imageHeight / 2,
              left: 16,
              right:imageHeight / 2,
              bottom: 10,
            ),
            child: Card(
              
              color: const Color.fromRGBO(176, 234, 213, 1),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, imageHeight / 2 + 16, 16, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          plant.type,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                             color: Color(0xff002140),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Image.asset('icons/dog_icon.png'),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      plant.name,
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    
                    SizedBox(height: 20),
                    IconTheme(
                      data: IconThemeData(
                        color: Color(0xff002140),
                        size: 40,
                      ),
                      child: Row(
                        children: [
                          Text(
                      '\$${plant.price.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    SizedBox(width: 100),
                          IconButton(
                        icon: Icon(plant.isFavorite ? Icons.favorite : Icons.favorite_border_outlined),
                        color: Colors.black,
                        onPressed: onFavoriteTap, 
                     ),
                          SizedBox(width: 3),
                          Image.asset('icons/mart_icon.png',),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Image positioned on the right side.
          Positioned(
             top: 0,
             bottom: 10,
            right: 12, // Position at the top of the stack
            child: Container(
              height: 120,
              width: 250,
              child: Image.asset(
                plant.imagePath,
                //This will cover the container's area without stretching the image
              ),
            ),
          ),
        ],
      ),
    );
  }
}