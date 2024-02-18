import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:plant_shop/database/get_it.dart';
import 'package:plant_shop/model/plant_model.dart';

class FavoriteWidget extends StatefulWidget {
  FavoriteWidget({required this.plant, Key? key}) : super(key: key);

  final PlantModel plant;

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  @override
  Widget build(BuildContext context) {
    HomeData homeData = GetIt.I.get<HomeData>();
    Color color = GetIt.I.get<HomeData>().favorite.contains(widget.plant)
        ? Colors.red
        : Colors.black;
    print(widget.plant.isFavorite);
    return SizedBox(
        child: IconButton(
      icon: Icon(
        Icons.favorite,
        color: color,
      ),
      onPressed: () {
        context.findAncestorStateOfType();
        setState(() {
          homeData.toggleItemFavorite(item: widget.plant);
        });
      },
    ));
  }
}
