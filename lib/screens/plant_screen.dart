import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project3_plants_maram/controller/cart_controller.dart';
import 'package:project3_plants_maram/controller/plant_controller.dart';
import 'package:project3_plants_maram/models/plant_model.dart';
import 'package:project3_plants_maram/widgets/overview.dart';
import 'package:project3_plants_maram/widgets/plant_card.dart';
import 'package:project3_plants_maram/widgets/plant_card_small.dart';
import 'package:project3_plants_maram/widgets/similar_plants.dart';

class PlantScreen extends StatefulWidget {
  const PlantScreen({super.key, required this.plant});
  final Plant plant;

  @override
  State<PlantScreen> createState() => _PlantScreenState();
}

class _PlantScreenState extends State<PlantScreen> {
  @override
  Widget build(BuildContext context) {
    final plantContrller = GetIt.I.get<PlantContrller>();
    final cartContrller = GetIt.I.get<CartContrller>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff9CE5CB),
        title: Text("PLANTIFY",
            style: GoogleFonts.philosopher(
                textStyle: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold))),
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset('assets/images/plant.png', width: 35),
        ),
        actions: [
          const Icon(
            Icons.search,
            color: Color(0xff002140),
          ),
          const SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/images/list.png',
              width: 30,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.45,
            child: Stack(children: [
              Container(
                decoration: const BoxDecoration(
                    color: Color(0xff9CE5CB),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40))),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.4,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Air Purifier",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold)),
                        ),
                        Text(
                          widget.plant.name,
                          style: GoogleFonts.philosopher(
                              textStyle: const TextStyle(
                                  fontSize: 38, fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "PRICE",
                          style: TextStyle(fontSize: 12),
                        ),
                        Text("\$" + widget.plant.price.toString()),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Size",
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(widget.plant.size),
                      ]),
                ),
              ),
              Positioned(
                  left: 120,
                  top: 20,
                  child: Image.asset(
                    'assets/images/feet.png',
                    width: 30,
                  )),
              Positioned(
                top: 290,
                left: 30,
                child: InkWell(
                  onTap: (){
                    cartContrller.addCart(widget.plant);
                  },
                  child: Image.asset(
                    'assets/images/addicon.png',
                    width: 80,
                  ),
                ),
              ),
              Positioned(
                top: 290,
                left: 100,
                child: Stack(alignment: Alignment.center, children: [
                  Image.asset(
                    'assets/images/Rectangle.png',
                    width: 80,
                  ),
                  IconButton(icon: Icon(plantContrller.checkPlantFav(widget.plant) ? Icons.favorite : Icons.favorite_border,),
                    onPressed: (){
                    if(plantContrller.checkPlantFav(widget.plant) ){
                      plantContrller.removeFavPlant(widget.plant);
                    }else{
                      plantContrller.addFavPlant(widget.plant);
                    }
                    setState(() {

                    });
                  },),

                ]),
              ),
              Positioned(
                  left: 130,
                  top: 100,
                  child: Image.asset(
                    widget.plant.image_path,
                    width: 280,
                    height: 300,
                  ))
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Overview ",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Overview(
                      path: 'assets/images/water.png',
                      title: widget.plant.water.toString(),
                      subTitle: "Water",
                    ),
                    Overview(
                      path: 'assets/images/sun.png',
                      title: widget.plant.light.toString(),
                      subTitle: "Light",
                    ),
                    Overview(
                      path: 'assets/images/fer.png',
                      title: widget.plant.fertilizer.toString(),
                      subTitle: "Fertilizer",
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Plant Bio ",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(widget.plant.description,
                    style: GoogleFonts.philosopher(
                      textStyle:
                          const TextStyle(fontSize: 15, color: Color(0xff4C6479)),
                    )),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 120,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/vid.png',
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'assets/images/plant22.png',
                          width: 134,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'assets/images/plant33.png',
                          width: 134,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'assets/images/plant4.png',
                          width: 134,
                        ),
                      ],
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Similar Plants ",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 140,
                  width: double.infinity,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    for (Plant currentPlant in plantContrller.plantList)
                      PlantCardSmall(plant: currentPlant),
                  ]),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.2,
            color: const Color(0xffFBF8DC),
            child: Row(children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "That very plant?",
                      style: GoogleFonts.philosopher(
                          textStyle: const TextStyle(
                              fontSize: 20, color: Color(0xff002140))),
                    ),
                    Text(
                      "Just Scan and the AI\nwill know exactly",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Color(0xff4B616F), fontSize: 14)),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(const Color(0xffFBF8DC)),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Color(0xff0D986A),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Scan Now",
                        style: TextStyle(color: Color(0xff0D986A)),
                      ),
                    )
                  ],
                ),
              ),
              Image.asset(
                'assets/images/scan.png',
                width: 128,
                height: 128,
              )
            ]),
          ),
          const SizedBox(
            height: 60,
          ),
        ]),
      ),
    );
  }
}
