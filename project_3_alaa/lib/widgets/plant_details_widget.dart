import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_3_alaa/data_layer/plants_data.dart';
import 'package:project_3_alaa/helper/shortcut.dart';
import 'package:project_3_alaa/model/plants_model.dart';
import 'package:project_3_alaa/widgets/favorite_widget.dart';

class PlantDetailsWidget extends StatefulWidget {
  const PlantDetailsWidget(
      {super.key,
      // required this.name, required this.price, required this.imagePath, required this.size,
      // required this.description,
      required this.water,
      required this.light,
      required this.fertilizer,
      required this.rating,
      required this.plant,
      this.favoriteTap});
  final Plants plant;
  final int water;
  final int light;
  final int fertilizer;
  final double rating;
  final Function()? favoriteTap;

  // final bool isFavourite = false;

  @override
  State<PlantDetailsWidget> createState() => _PlantDetailsWidgetState();
}

class _PlantDetailsWidgetState extends State<PlantDetailsWidget> {
  //   final String name;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.getWidth(),
      height: context.getHeight() * 0.55,
      child: Stack(
        children: [
          Container(
            height: context.getHeight() * .5,
            width: context.getWidth(),
            decoration: const BoxDecoration(
              color: Color(0xffABE8D3),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("asset/logo.png"),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            "PLANTIFY",
                            style: GoogleFonts.getFont(
                              'Philosopher',
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                          ), // style font
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.search_outlined)),
                          IconButton(
                              onPressed: () {},
                              icon: Image.asset("asset/menu.png")),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 32,
            top: 90,
            child: Row(
              children: [
                const Text(
                  " Air Purifier",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset("asset/cat_fet.png",
                    width: context.getWidth() * 0.09),
              ],
            ),
          ),

          Positioned(
            top: 90,
            right: 32,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateColor.resolveWith((states) => Colors.white)),
              child: Row(
                children: [
                  const Icon(Icons.star, color: Color(0xff0D986A)),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    widget.rating.toString(),
                    // "4.8",
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0D986A)),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            top: 120,
            left: 32,
            child: SizedBox(
              width: context.getWidth() * .65,
              child: Text(
                widget.plant.name,
                style: GoogleFonts.getFont(
                  'Philosopher',
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 40),
                ),
              ),
            ),
          ),

          Positioned(
            top: 250,
            left: 32,
            child: Column(
              children: [
                const Text(
                  "PRICE",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  "\$${widget.plant.price}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // ),

          Positioned(
            top: 310,
            left: 32,
            child: Column(
              children: [
                const Text(
                  "SIZE  ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.plant.size,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          Positioned(
            top: 340,
            left: 50,
            child: InkWell(
              onTap: () {
                setState(() {
                  GetIt.I.get<PlantDataLayer>().addPlantToCart(cPlant: widget.plant);
                });
              },
              child: Image.asset(
                "asset/cart_image.png",
                width: context.getWidth() * .15,
                height: context.getHeight() * .15,
              ),
            ),
          ),
          Positioned(
            top: 380,
            left: 130,
            child: InkWell(
              onTap: widget.favoriteTap,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                width: context.getWidth() * .14,
                height: context.getHeight() * 0.06,
                child: FavoriteWidgetIcon(
                  plant: widget.plant,
                ),
              ),
            ),
          ),

          Positioned(
            bottom: -16,
            left: 150,
            child: Image.asset(
              widget.plant.imagePath,
              width: context.getWidth() * 0.7,
              height: context.getHeight() * 0.4,
            ),
          ),
        ],
      ),
    );
  }
}
