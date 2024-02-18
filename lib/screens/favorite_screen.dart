import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project3_plants_maram/controller/plant_controller.dart';
import 'package:project3_plants_maram/models/plant_model.dart';
import 'package:project3_plants_maram/widgets/favorite.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  final plantContrller = GetIt.I.get<PlantContrller>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PLANTIFY",
            style: GoogleFonts.philosopher(
                textStyle: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold))),
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset('assets/images/plant.png', width: 35),
        ),
        actions: [
          const SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/images/list.png',
              width: 30,
            ),
          )
        ],
      ),
      body:  SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Favorite ",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0D986A)),
              ),
              SizedBox(
                height: 20,
              ),
              for(Plant plant in plantContrller.favPlantList)
                Favorite(plant: plant)
            ],
          ),
        ),
      )),
    );
  }
}
