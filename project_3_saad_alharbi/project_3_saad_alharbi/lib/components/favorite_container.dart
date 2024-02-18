import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:project_3_saad_alharbi/data_layer/plant_data.dart';
import 'package:project_3_saad_alharbi/helper/extensions/screen_handler.dart';

class FavoriteContainer extends StatefulWidget {
  const FavoriteContainer({
    super.key,
    required this.imagePath,
    required this.name,
    required this.index, required this.onTapFunction,
  });
  final String imagePath;
  final String name;
  final int index;
  final VoidCallback onTapFunction;

  @override
  State<FavoriteContainer> createState() => _FavoriteContainerState();
}

class _FavoriteContainerState extends State<FavoriteContainer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.getWidth(),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(widget.imagePath),
          Text(
            widget.name,
            style: const TextStyle(
                color: Color(0xff002140),
                fontSize: 15,
                fontWeight: FontWeight.w700,
                fontFamily: 'Philosopher'),
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
              onPressed: () {
                List<int> favoriteList =
                    GetIt.I.get<PlantData>().favorite;
                favoriteList.remove(widget.index);
                GetIt.I.get<PlantData>().setData();
                widget.onTapFunction();
              },
              icon: const Icon(
                Icons.favorite,
                color: Colors.red,
                size: 30,
              ))
        ],
      ),
    );
  }
}
