import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project3_plants_maram/models/plant_model.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key, required this.plant});
  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Image.asset(
            plant.image_path,
            width: 90,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            plant.name,
            style: GoogleFonts.philosopher(
                textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          ),
          const Spacer(),
          const Icon(
            Icons.favorite,
            color: Color(0xffC10000),
          )
        ],
      ),
    );
  }
}
