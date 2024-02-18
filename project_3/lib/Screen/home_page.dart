import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project_2/Screen/display.dart';
import 'package:project_2/Screen/favorite.dart';
import 'package:project_2/component/product_continer_widget.dart';
import 'package:project_2/component/upper_home_widget.dart';
import 'package:project_2/data%20layer/data_palnt.dart';
import 'package:project_2/helper/helper_widget.dart';
import 'package:project_2/model/plant_model.dart';

// HomePage widget, the main screen of the application.
class HomePage extends StatefulWidget {
  // Constructor for HomePage widget, taking a Set of favorite plants as a parameter.
  HomePage({Key? key, required this.favoritePlants}) : super(key: key);

  // Set of favorite plants received from the parent widget.
  final Set<Plant> favoritePlants;

  @override
  _HomePageState createState() => _HomePageState();
}

// State class for the HomePage widget.
class _HomePageState extends State<HomePage> {
  // Instance of PlantData to manage plant-related data.
  final PlantData plantData = PlantData();

  // Local set of favorite plants, initially empty.
  Set<Plant> favoritePlants = {};

  // Function to toggle the favorite status of a plant.
  void toggleFavorite(Plant plant) {
    setState(() {
      if (favoritePlants.contains(plant)) {
        favoritePlants.remove(plant);
      } else {
        favoritePlants.add(plant);
      }
    });
  }

  // Dispose method to save the final list of favorites to storage when the widget is disposed.
  @override
  void dispose() {
    GetStorage().write('favorites', favoritePlants.map((p) => p.name).toList());
    super.dispose();
  }

  // Initialize method to retrieve favorite plants from storage when the widget initializes.
  @override
  void initState() {
    super.initState();

    // Retrieve stored favorite plant names from storage.
    List<dynamic>? storedFavorites = GetStorage().read<List<dynamic>>('favorites');
    if (storedFavorites != null) {
      // Filter out null values and cast to String.
      List<String> favoriteNames = storedFavorites
          .where((plantName) => plantName is String)
          .map<String>((plantName) => plantName as String)
          .toList();

      // Get the corresponding Plant objects and add them to the local set.
      favoritePlants.addAll(plantData.allProducts
          .where((plant) => favoriteNames.contains(plant.name))
          .toSet());
    }
  }

  // Build method to define the structure of the HomePage widget.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar containing the logo, title, and action icons.
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
        actions: [
          Image.asset(
            'images/notifo.png',
            width: 34,
            height: 28,
          ),
          context.WBox(),
          Image.asset('images/Frame 97.png'),
          // IconButton to navigate to the FavoriteScreen when pressed.
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FavoriteScreen(favoritePlants: favoritePlants)),
              );
            },
          ),
        ],
      ),
      // Body of the widget containing various plant-related information.
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            // Displaying the UpperWidget for additional content.
            UpperWidget(),
            // Using the map function to create a list of ProductWidget for each plant in the plantData.
            ...plantData.allProducts.asMap().entries.map((entry) {
              Plant plant = entry.value;
              int colorIndex = entry.key;
              return ProductWidget(
                // Passing relevant information to the ProductWidget.
                image: plant.image,
                name: plant.name,
                price: plant.price,
                onTapClick: () {
                  // Navigating to the DisplayProduct screen when a product is tapped.
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DisplayProduct(
                        plant: plant,
                      ),
                    ),
                  );
                },
                color: colorIndex,
                isFavorite: favoritePlants.contains(plant),
                onFavoriteChanged: (isFavorite) {
                  // Callback function for handling favorite changes.
                  toggleFavorite(plant);
                },
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}