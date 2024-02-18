import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_3_alaa/data_layer/plants_data.dart';
import 'package:project_3_alaa/helper/shortcut.dart';
import 'package:project_3_alaa/model/plants_model.dart';
import 'package:project_3_alaa/widgets/favorite_widget.dart';

class PlantsWidget extends StatefulWidget {
  const PlantsWidget(
      {super.key,
      // required this.name, required this.price, required this.imagePath,
      this.displayPlant,
      this.cartPlant,
      this.favoritePlant,
      required this.color,
      required this.plant});
  final Plants plant;
  // final String name;
  // final double price;
  // final String imagePath;
  final Color color;
  final Function()? displayPlant;
  final Function()? cartPlant;
  final Function()? favoritePlant;

  @override
  State<PlantsWidget> createState() => _PlantsWidgetState();
}

class _PlantsWidgetState extends State<PlantsWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.getWidth() * 0.85,
      height: context.getHeight() * .25,
      child: Center(
        child: Stack(
          alignment: Alignment.centerLeft,
          fit: StackFit.expand,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          children: [
            Positioned(
              left: 0,
              child: Container(
                width: context.getWidth() * .75,
                height: context.getHeight() * .20,
                padding: const EdgeInsets.only(
                    left: 25, top: 10, bottom: 8, right: 80),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: widget.color,
                ),
                child: Column(
                  // var

                  children: [
                    Row(
                      children: [
                        const Text(
                          " Air Purifier",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Image.asset("asset/cat_fet.png")
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: InkWell(
                        onTap: widget.displayPlant,
                        child: Text(
                          widget.plant.name,
                          style: GoogleFonts.getFont(
                            'Philosopher',
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 28),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " \$ ${widget.plant.price}",
                            style: const TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                FavoriteWidgetIcon(plant: widget.plant),

                                // InkWell(
                                //   onTap: () {
                                //     GetIt.I
                                //         .get<PlantDataLayer>()
                                //         .addFavoritePlant(fPlant: widget.plant);
                                //   },
                                //   child: const Icon(Icons.favorite_border),
                                // ),
                                const SizedBox(
                                  width: 5,
                                ),
                                InkWell(
                                  onTap: () {
                                    GetIt.I
                                        .get<PlantDataLayer>()
                                        .addPlantToCart(cPlant: widget.plant);
                                  },
                                  child: SizedBox(
                                    width: context.getWidth() * .12,
                                    child: Image.asset(
                                      "asset/cart_image.png",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              left: 140,
              child: Image.asset(
                widget.plant.imagePath,
                width: context.getWidth() * 0.7,
                height: context.getHeight() * 0.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
