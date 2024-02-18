import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_3_alaa/helper/shortcut.dart';
import 'package:project_3_alaa/model/plants_model.dart';

class SimilarPLant extends StatelessWidget {
  const SimilarPLant(
      {super.key,
      this.plant,
      required this.name,
      required this.price,
      required this.imagePath,
      required this.color,
      this.displayPlant,
      this.cartPlant,
      this.favoritePlant});
  final Plants? plant;
  final String name;
  final double price;
  final String imagePath;
  final Color color;
  final Function()? displayPlant;
  final Function()? cartPlant;
  final Function()? favoritePlant;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: displayPlant,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: context.getWidth() * 0.62,
          height: context.getHeight() * .30,
          child: Center(
            child: Stack(
              alignment: Alignment.centerLeft,
              fit: StackFit.expand,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              children: [
                Positioned(
                  left: 0,
                  child: Container(
                    width: context.getWidth() * .55,
                    height: context.getHeight() * 0.15,
                    padding: const EdgeInsets.only(
                        left: 25, top: 20, bottom: 20, right: 80),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: color,
                    ),
                    child: Column(
                      // var

                      children: [
                        Row(
                          children: [
                            const Text(
                              " Air Purifier",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            Image.asset("asset/cat_fet.png")
                          ],
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            name,
                            style: GoogleFonts.getFont(
                              'Philosopher',
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                " \$ $price",
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 12),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: favoritePlant,
                                      child: const Icon(Icons.favorite_border),
                                    ),
                                    const SizedBox(
                                      width: 5,
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
                  bottom: 30,
                  left: 90,
                  child: Image.asset(
                    imagePath,
                    width: context.getWidth() * 0.6,
                    height: context.getHeight() * 0.15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
