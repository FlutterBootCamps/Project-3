import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:project_3_saad_alharbi/data_layer/plant_data.dart';
import 'package:project_3_saad_alharbi/model/plant_model.dart';

import '../components/favorite_container.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.asset("images/app_logo.png"),
        title: const Text(
          "PLANTIFY",
          style: TextStyle(
              fontFamily: 'Philosopher',
              fontSize: 20,
              letterSpacing: 2,
              fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.menu, size: 30),
          )
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Favorite",
              style: TextStyle(
                  color: Color(0xff0D986A),
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: GetIt.I.get<PlantData>().favorite.length,
                  itemBuilder: (context, index) {
                    int favoriteIndex =
                        GetIt.I.get<PlantData>().favorite[index];
                    PlantModel plant =
                        GetIt.I.get<PlantData>().plants[favoriteIndex];
                    return FavoriteContainer(
                      name: plant.name!,
                      imagePath: plant.imagepath!,
                      index: index,
                      onTapFunction: () => setState(() {}),
                    );
                  }),
            ),
          ],
        ),
      )),
    );
  }
}
