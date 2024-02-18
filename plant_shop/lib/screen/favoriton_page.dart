import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:plant_shop/database/get_it.dart';
import 'package:plant_shop/helper/list_colors.dart';

import '../component/favorite_button.dart';
import '../component/item_row.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Image.asset("image/Group 46.png"),
          title: const Text(
            "Plantify",
          ),
          actions: [
            Image.asset("image/Frame 97.png", height: 30, width: 30),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Favorite",
                style: TextStyle(
                    color: Colors.green.shade700,
                    fontSize: 30,
                    fontWeight: FontWeight.w700)),
            if (GetIt.I.get<HomeData>().favorite.isEmpty) ...[
              const Text("No favorite item")
            ] else
              ...GetIt.I
                  .get<HomeData>()
                  .favorite
                  .map((e) => ItemRow(
                        plant: e,
                        favoriteButton: FavoriteWidget(plant: e),
                        color: listColor[Random().nextInt(6)],
                      ))
                  .toList()
          ]),
        ));
  }
}
