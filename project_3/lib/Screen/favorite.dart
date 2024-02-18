// favorite_screen.dart
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project_2/data%20layer/data_palnt.dart';
import 'package:project_2/helper/helper_widget.dart';
import 'package:project_2/model/plant_model.dart';

class FavoriteScreen extends StatefulWidget {
  final Set<Plant> favoritePlants;

  FavoriteScreen({Key? key, required this.favoritePlants}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  final PlantData plantData = GetIt.I<PlantData>();
  final GetIt getIt = GetIt.instance;
  final GetStorage box = GetStorage();

  Set<Plant> favoritePlants = {};

  @override
void initState() {
  super.initState();
  // Retrieve favorite plants from storage when the widget initializes
  List<dynamic>? storedFavorites = box.read<List<dynamic>>('favorites');
  if (storedFavorites != null) {
    // Filter out null values and cast to String
    List<String> favoriteNames = storedFavorites
        .where((plantName) => plantName is String)
        .map<String>((plantName) => plantName as String)
        .toList();

    // Get the corresponding Plant objects
    favoritePlants = plantData.allProducts
        .where((plant) => favoriteNames.contains(plant.name))
        .toSet();
  }
  // Update with the passed favoritePlants from the widget
  favoritePlants = widget.favoritePlants;
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Image(image: AssetImage('images/Logo.png')),
        title: const Text(
          "PLANTIFY",
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Philosopher',
            color: Color(0xff002140),
          ),
        ),
        actions: [Image.asset('images/Frame 97.png')],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Favorite",
              style: TextStyle(
                fontSize: 32,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Color(0xff0D986A),
              ),
            ),
            context.HBox(),
            ListView.builder(
              shrinkWrap: true,
              itemCount: favoritePlants.length,
              itemBuilder: (context, index) {
                Plant plant = favoritePlants.elementAt(index);
                return Row(
                  children: [
                    Image.asset(
                      plant.image,
                      width: 55,
                      height: 60,
                    ),
                    Container(
                      width: 250,
                      child: Text(
                        plant.name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontFamily: 'Philosopher',
                          color: Color(0xff002140),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          favoritePlants.remove(plant);
                          // Save the updated list of favorites to storage
                          box.write('favorites',
                              favoritePlants.map((p) => p.name).toList());
                        });
                      },
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}