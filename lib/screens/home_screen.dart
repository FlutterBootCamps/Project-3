import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project3_plants_maram/controller/cart_controller.dart';
import 'package:project3_plants_maram/controller/plant_controller.dart';
import 'package:project3_plants_maram/models/plant_model.dart';
import 'package:project3_plants_maram/widgets/plant_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final plantContrller = GetIt.I.get<PlantContrller>();
    final cartContrller = GetIt.I.get<CartContrller>();

    print(plantContrller.favPlantList);
    print("yews");
    return Scaffold(
      appBar: AppBar(
        title: Text("PLANTIFY",
            style: GoogleFonts.philosopher(
                textStyle: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold))),
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset('assets/images/plant.png', width: 35),
        ),
        actions: [
          Image.asset(
            'assets/images/notification.png',
            width: 25,
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
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.24,
                decoration: BoxDecoration(
                    color: const Color(0xffFDC7BE),
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(children: [
                  Positioned(
                      left: 155,
                      child: Image.asset(
                        'assets/images/girl.png',
                        width: 180,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 40),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "There’s a Plant \nfor everyone",
                            style: GoogleFonts.philosopher(
                                textStyle: const TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Get your 1st plant \n@ 40% off",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(fontSize: 14)),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 14),
                            width: 70,
                            child: const Divider(
                              thickness: 4,
                              color: Colors.green,
                            ),
                          ),
                        ]),
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                      onPressed: () {
                        setState(() {
                          index = 0;
                        });
                      },
                      child: Text(
                        "All plants",
                        style: TextStyle(
                            decoration: index == 0
                                ? TextDecoration.underline //if index = 0
                                : TextDecoration.none, //if index =! 0
                            decorationColor: Color(0xff0D986A),
                            color:
                                index == 0 ? Color(0xff0D986A) : Colors.black),
                      )),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          index = 1;
                        });
                      },
                      child: Text(
                        "Indoor",
                        style: TextStyle(
                            decoration: index == 1
                                ? TextDecoration.underline //if index = 1
                                : TextDecoration.none, //if index =! 1
                            decorationColor: Color(0xff0D986A),
                            color:
                                index == 1 ? Color(0xff0D986A) : Colors.black),
                      )),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          index = 2;
                        });
                      },
                      child: Text(
                        "Outdoor",
                        style: TextStyle(
                            decoration: index == 2
                                ? TextDecoration.underline //if index = 2
                                : TextDecoration.none, //if index =! 2
                            decorationColor: Color(0xff0D986A),
                            color:
                                index == 2 ? Color(0xff0D986A) : Colors.black),
                      ))
                ],
              ),
            ),
            for (Plant plant in plantContrller.plantList)
              ...[
                if(index == 0)
                  PlantCard(
                      plant:plant
                  ),
                if(index == 1 && plant.type == "Indoor Plant")
                  PlantCard(
                      plant:plant
                  ),
                if(index == 2 && plant.type == "Outdoor Plant")
                  PlantCard(
                      plant:plant
                  )
              ],

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Caring for plants should be fun. That’s why we offer \n1-on-1 virtual consultations from the comfort of \nyour home or office. ",
                style: TextStyle(fontSize: 13),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: 30,
                child: Divider(
                  color: Color(0xff002140),
                  thickness: 2,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Plant a Life",
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff002140)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Live amongst Living",
                style: TextStyle(
                    fontSize: 28,
                    color: Color(0xff334D66),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Spread the joy",
                style: TextStyle(
                    fontSize: 24,
                    color: Color(0xff80909E),
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        )),
      ),
    );
  }
}
