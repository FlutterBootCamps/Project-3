


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project3_plants_maram/models/plant_model.dart';

class PlantCardSmall extends StatelessWidget {
  const PlantCardSmall({
    super.key,
    required this.plant,
  });

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      height: 200,
      width: 200,
      child: Stack(children: [
        Container(
          margin: EdgeInsets.only(top: 30),
          width: 155,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Color(0xff9CE5CB),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, top: 10),
            child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    "Air\nPurifier",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    plant.name,
                    style: GoogleFonts.philosopher(
                        textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                  Row(
                    children: [
                      Text(
                        "\$" + plant.price.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Icon(Icons.favorite),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ]),
          ),
        ),
        Positioned(
            left: 120,
            bottom: 50,
            child: Image.asset(
              plant.image_path,
              height: 80,
              width: 62.28,
            )),
        Positioned(
            right: 80,
            top: 50,
            child: Image.asset(
              'assets/images/feet.png',
              width: 20,
            )),
      ]),
    );
  }
}
