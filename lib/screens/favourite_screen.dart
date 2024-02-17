import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:plantify/data%20layer/home_data.dart';
import 'package:plantify/models/Plant_model.dart';
import 'package:plantify/utils/colors.dart';
import 'package:plantify/widgets/favorite_plant_container.dart';

// ignore: must_be_immutable
class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  void refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: designColors[4],
        leading: Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              "assets/images/logo.png",
            )),
        title: const Text(
          "PLANTFIY",
          style: TextStyle(
              fontFamily: "Philosopher",
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.5),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 28),
            child: IconButton(
                onPressed: () {}, icon: Image.asset("assets/icons/menu.png")),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 24, left: 24, right: 46),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Favorite",
              style: TextStyle(
                  color: designColors[2],
                  fontFamily: "Poppins",
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 34.7,
            ),
            (GetIt.I.get<HomeData>().favoritePlants.isEmpty)
                ? Center(
                    child: Text("You currently have no plants in your favourite list.", style: TextStyle(color: designColors[6], fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w600),),
                  )
                : SizedBox(
                    height: 560,
                    child: ListView(
                      children: List.generate(
                          GetIt.I.get<HomeData>().favoritePlants.length,
                          (index) {
                        Plant currentPlant =
                            GetIt.I.get<HomeData>().favoritePlants[index];
                        return FavoritePlantContainer(
                          plant: currentPlant,
                          notifyParent: refresh,
                        );
                      }),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
