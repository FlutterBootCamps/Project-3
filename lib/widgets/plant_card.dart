import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:plantify/data%20layer/home_data.dart';
import 'package:plantify/models/Plant_model.dart';
import 'package:plantify/utils/colors.dart';

class PlantCard extends StatefulWidget {
  const PlantCard({
    super.key,
    required this.plant,
  });

  final Plant plant;

  @override
  State<PlantCard> createState() => _PlantCardState();
}

class _PlantCardState extends State<PlantCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 277,
          height: 174,
          padding: const EdgeInsets.only(left: 23, bottom: 10, top: 42),
          decoration: BoxDecoration(
            color: Color(int.parse(widget.plant.color)),
            borderRadius: const BorderRadius.all(Radius.circular(18)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 145,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Air Purifier",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                    Image.asset("assets/images/paw.png")
                  ],
                ),
              ),
              SizedBox(
                  width: 221,
                  child: Text(widget.plant.name,
                      style: const TextStyle(
                          fontFamily: "Philosopher",
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis)),
              SizedBox(
                width: 181,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${widget.plant.price}",
                      style: const TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    IconButton(
                        onPressed: () {
                          if (GetIt.I
                              .get<HomeData>()
                              .checkInFavorite(widget.plant)) {
                            GetIt.I
                                .get<HomeData>()
                                .removeFromFavorite(widget.plant);
                          } else {
                            GetIt.I.get<HomeData>().addToFavorite(widget.plant);
                          }
                          setState(() {});
                        },
                        icon: Image.asset(GetIt.I
                                .get<HomeData>()
                                .checkInFavorite(widget.plant)
                            ? "assets/icons/heart_filled.png"
                            : "assets/icons/heart_empty.png")),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 54,
                        height: 54,
                        decoration: BoxDecoration(
                            color: designColors[2],
                            borderRadius: const BorderRadius.all(
                                Radius.elliptical(20, 30))),
                        child: Image.asset("assets/images/smiley.png"),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
            bottom: 20,
            left: 200,
            child: Image.asset(
              widget.plant.imagePath,
            ))
      ],
    );
  }
}
