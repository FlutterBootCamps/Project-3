import 'package:flutter/material.dart';
import 'package:project_2/costum_widget/item_list_widget.dart';

class PlantList extends StatefulWidget {
  final List<Map<String, dynamic>> plants;
  final String? type;

  const PlantList({Key? key, required this.plants, this.type}) : super(key: key);

  @override
  _PlantListState createState() => _PlantListState();
}

class _PlantListState extends State<PlantList> {
  List<Map<String, dynamic>> filteredPlants = [];
  List<Map<String, dynamic>> favoritePlants = [];

  @override
  void initState() {
    super.initState();
    // Filter plants based on type
    filteredPlants = widget.type != null
        ? widget.plants.where((plant) => plant['type'] == widget.type).toList()
        : widget.plants;
  }

  void toggleFavorite(int index) {
    setState(() {
      final plant = filteredPlants[index];
      if (favoritePlants.contains(plant)) {
        favoritePlants.remove(plant);
      } else {
        favoritePlants.add(plant);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: filteredPlants.length,
      itemBuilder: (context, index) {
        final plant = filteredPlants[index];
        return ItemList(
          name: plant['name'],
          price: plant['price'],
          imagePath: plant['image_path'],
          onFavoritePressed: () => toggleFavorite(index),
        );
      },
    );
  }
}
