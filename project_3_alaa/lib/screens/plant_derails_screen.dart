import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_3_alaa/data_layer/plants_data.dart';
import 'package:project_3_alaa/dataset/plants_data.dart';
import 'package:project_3_alaa/helper/shortcut.dart';
import 'package:project_3_alaa/model/plants_model.dart';
import 'package:project_3_alaa/widgets/overview_widget.dart';
import 'package:project_3_alaa/widgets/plant_details_widget.dart';
import 'package:project_3_alaa/widgets/similar_plant_widget.dart';

class PlantDetailsScreen extends StatefulWidget {
  const PlantDetailsScreen({super.key, required this.plant});
  final Plants plant;

  @override
  State<PlantDetailsScreen> createState() => _PlantDetailsScreenState();
}

class _PlantDetailsScreenState extends State<PlantDetailsScreen> {
  List<Color> color = [
    const Color(0xffB0EAD5),
    const Color(0xffFFF3CC),
    const Color(0xffABE8D3),
    const Color(0xffC1E8A4),
    const Color(0xffE5F0A1),
    const Color(0xffF5EDA8),
  ];

  bool isAddToFavorite = false;
  bool isAddToCart = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                PlantDetailsWidget(
                  plant: widget.plant,
                  rating: widget.plant.rating,
                  water: widget.plant.water,
                  light: widget.plant.light,
                  fertilizer: widget.plant.fertilizer,
                  // favoriteTap: GetIt.I.get<PlantDataLayer>().addFavoritePlant(fPlant:   widget.plant),
                  // cartTap: GetIt.I.get<PlantDataLayer>().addPlantToCart(cPlant:   widget.plant)
                ),
                OverviewWidget(
                  water: widget.plant.water.toDouble(),
                  light: widget.plant.light.toDouble(),
                  fertilizer: widget.plant.fertilizer.toDouble(),
                ),
                const SizedBox(
                  height: 40,
                ),

                SizedBox(
                  width: context.getWidth() * .85,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Plant Bio",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          widget.plant.description,
                          style: GoogleFonts.getFont(
                            'Philosopher',
                            textStyle: const TextStyle(
                                color: Color(0xffA3B0BA),
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),

// other care of plant
                SizedBox(
                  height: context.getHeight() * .2,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 30,
                          ),
                          Container(
                            height: context.getHeight() * .18,
                            width: context.getWidth() * .35,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(
                              "asset/plantBio4.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: context.getHeight() * .18,
                            width: context.getWidth() * .35,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(
                              "asset/plantBio3.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: context.getHeight() * .18,
                            width: context.getWidth() * .35,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(
                              "asset/plantBio2.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: context.getHeight() * .18,
                            width: context.getWidth() * .35,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(
                              "asset/plantBio1.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                SizedBox(
                  width: context.getWidth() * .85,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Similar Plants",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: context.getHeight() * .2,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 30,
                          ),
                          ...List.generate(
                            plantsData.length,
                            (index) => SimilarPLant(
                              name: Plants.fromJson(plantsData[index]).name,
                              imagePath:
                                  Plants.fromJson(plantsData[index]).imagePath,
                              price: Plants.fromJson(plantsData[index]).price,
                              color: color[index],
                              displayPlant: () {
                                context.pushTo(
                                  view: PlantDetailsScreen(
                                      plant:
                                          Plants.fromJson(plantsData[index])),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                Container(
                  color: const Color(0xffFBF8DC),
                  padding: const EdgeInsets.all(20),
                  height: context.getHeight() * .2,
                  width: context.getWidth(),
                  child: Row(
                    children: [
                      SizedBox(
                        width: context.getWidth() * 0.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "That very plant?",
                              style: GoogleFonts.getFont(
                                'Philosopher',
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 24),
                              ),
                            ),
                            const Flexible(
                              child: Text(
                                "Just Scan and the AI will know exactly",
                                style: TextStyle(
                                    color: Color(0xffA3B0BA),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: context.getWidth() * 0.3,
                              height: context.getHeight() * 0.04,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: const Color(0xff0D986A))),
                              child: const Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Scan Now",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff0D986A)),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Image.asset(
                            "asset/AI Scan.png",
                            fit: BoxFit.contain,
                            width: context.getWidth() * 0.3,
                            height: context.getHeight() * 0.3,
                          ))
                    ],
                  ),
                ),

                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xff0D986A),
          items: [
            BottomNavigationBarItem(
              icon: Text(
                "View ${GetIt.I.get<PlantDataLayer>().favoritePlant.length.toString()} items",
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              label: "favorite plane",
            ),
            const BottomNavigationBarItem(
              label: "total",
              icon: Text(
                "\$ 1090",
                // ${GetIt.I.get<PlantDataLayer>().totalPrice}",
                style:  TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
