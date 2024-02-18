import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:project_3_alaa/data_layer/plants_data.dart';
import 'package:project_3_alaa/model/plants_model.dart';

class FavoriteWidgetIcon extends StatefulWidget {
  const FavoriteWidgetIcon({super.key, required this.plant});
  final Plants plant; 

  @override
  State<FavoriteWidgetIcon> createState() => _FavoriteWidgetIconState();
}

class _FavoriteWidgetIconState extends State<FavoriteWidgetIcon> {
  bool _favorite = false;
  // bool isAddToFavorite = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          GetIt.I.get<PlantDataLayer>().addFavoritePlant(fPlant: widget.plant);
          // isAddToFavorite = true; 
          _favorite = !_favorite;
        });
      },
      child: Icon(
        Icons.favorite,
        size: 30,
        color: _favorite ? const Color(0xffC10000) : Colors.black38,
      ),
    );
  }
}
