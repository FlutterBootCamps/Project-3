import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:project_3_alaa/data_layer/plants_data.dart';
import 'package:project_3_alaa/widgets/favorite_plant_widget.dart';

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
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset("asset/logo.png"),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text("PLANTIFY"), // style font
                ],
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: Image.asset("asset/menu.png")),
                ],
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Favorite",
                      style: TextStyle(
                          fontSize: 38,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0D986A))),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (GetIt.I
                            .get<PlantDataLayer>()
                            .favoritePlant
                            .isNotEmpty)
                          ...GetIt.I
                              .get<PlantDataLayer>()
                              .favoritePlant
                              .map((e) => FavoriteWidget(
                                    plant: e,
                                    image: e.imagePath,
                                    plantName: e.name,
                                  ))
                              .toList(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
