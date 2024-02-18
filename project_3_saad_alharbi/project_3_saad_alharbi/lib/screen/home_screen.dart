import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:project_3_saad_alharbi/data_layer/plant_data.dart';
import 'package:project_3_saad_alharbi/helper/extensions/screen_handler.dart';
import 'package:project_3_saad_alharbi/model/plant_model.dart';

import '../components/product_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String plantType = 'ALLPLANTS';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.asset("images/app_logo.png"),
        title: const Text(
          "PLANTIFY",
          style: TextStyle(
              fontFamily: 'Philosopher',
              fontSize: 20,
              letterSpacing: 2,
              fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.notifications_none_outlined, size: 30),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.menu, size: 30)
                ]),
          )
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            child: Column(
              children: [
                Container(
                  width: context.getWidth() * 0.80,
                  height: context.getHeight() * 0.25,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color(0xffFDC7BE)),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Image.asset(
                          "images/person_img.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Positioned(
                        top: 55,
                        left: 30,
                        child: Text(
                          "There’s a Plant\nfor everyone",
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Philosopher',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Positioned(
                        bottom: 60,
                        left: 30,
                        child: Text(
                          "Get your 1st plant \n@ 40% off",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Positioned(
                        bottom: 55,
                        left: 50,
                        child: Container(
                          width: 50,
                          height: 3,
                          decoration:
                              const BoxDecoration(color: Color(0xff0D986A)),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: context.getWidth() * 0.60,
                      height: context.getWidth() * 0.10,
                      padding: const EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 1),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Row(children: [
                        Icon(Icons.search),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        )
                      ]),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 30),
                      width: context.getWidth() * 0.10,
                      height: context.getWidth() * 0.10,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 1),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Icon(Icons.account_tree_outlined, size: 30),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              plantType = 'ALLPLANTS';
                            });
                          },
                          child: Text(
                            "All plants",
                            style: TextStyle(
                              color: plantType == 'ALLPLANTS'
                                  ? Color(0xff0D986A)
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          plantType = 'Indoor Plant';
                        });
                      },
                      child: Text(
                        "Indoor",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: plantType == 'Indoor Plant'
                              ? Color(0xff0D986A)
                              : Colors.black,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          plantType = 'Outdoor Plant';
                        });
                      },
                      child: Text(
                        "Outdoor",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: plantType == 'Outdoor Plant'
                              ? Color(0xff0D986A)
                              : Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: context.getWidth() * 0.20,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: ListView.separated(
                    itemCount: GetIt.I.get<PlantData>().plants.length + 1,
                    separatorBuilder: (context, index) {
                      if (index == 1) {
                        return inviteFriend(context);
                      } else if (index == 3) {
                        return textNote(context);
                      } else {
                        return Container();
                      }
                    },
                    itemBuilder: (context, index) {
                      if (GetIt.I
                                  .get<PlantData>()
                                  .plants[index == 0 ? 1 : (index - 1)]
                                  .type !=
                              plantType &&
                          plantType != 'ALLPLANTS') {
                        return Container();
                      }
                      List<Color> color = [
                        Color(0xffB0EAD5),
                        Color(0xffFFF3CC),
                        Color(0xffABE8D3),
                        Color(0xffC1E8A4),
                        Color(0xffE5F0A1),
                        Color(0xffF5EDA8),
                      ];
                      if (GetIt.I.get<PlantData>().plants.length == index) {
                        return endScreen();
                      }
                      PlantModel plant = GetIt.I.get<PlantData>().plants[index];
                      return ProductContainer(
                        color: color[(index % color.length)],
                        imagePath: plant.imagepath!,
                        name: plant.name!,
                        price: plant.price.toString(),
                        type: plant.type!,
                        icon: Icons.shopping_bag_outlined,
                        index: index,
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container endScreen() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 30,
            height: 3,
            decoration: const BoxDecoration(color: Color(0xff002140)),
          ),
          Text(
            "Plant a Life",
            style: TextStyle(
                color: Color(0xff002140),
                fontSize: 36,
                fontWeight: FontWeight.w700),
          ),
          Text(
            "Live amongst Living",
            style: TextStyle(
                color: Color(0xff002140).withOpacity(0.5),
                fontSize: 28,
                fontWeight: FontWeight.w700),
          ),
          Text(
            "Spread the joy",
            style: TextStyle(
                color: Color(0xff002140).withOpacity(0.8),
                fontSize: 36,
                fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }

  Container textNote(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: context.getWidth() * 0.30,
      child: Stack(
        children: [
          Column(
            children: [
              Text(
                "Caring for plants should be fun. That’s why we offer 1-on-1 virtual consultations from the comfort of your home or office. ",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 50,
            child: Row(
              children: [
                Container(
                  width: 40,
                  decoration: BoxDecoration(
                      border: BorderDirectional(
                          top: BorderSide(
                              color: Color(0xff0D986A),
                              width: 2,
                              style: BorderStyle.solid))),
                ),
                Text("  Learn More",
                    style: TextStyle(
                        color: Color(0xff0D986A),
                        fontWeight: FontWeight.bold,
                        fontSize: 13)),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container inviteFriend(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 20),
      width: context.getWidth() * 0.80,
      height: 150,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 184, 244, 183),
          borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [
          const Text(
            "Invite a Friend and earn Plantify rewards",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xff002140)),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Row(
              children: [
                const Expanded(
                    child: Text(
                  "Redeem them to get instant discounts",
                  style: TextStyle(
                      color: Color(0xff0D986A),
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                )),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff0D986A)),
                    onPressed: () {},
                    child: const Text(
                      "Invite",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                const SizedBox(
                  width: 10,
                ),
                Image.asset("images/app_logo.png"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
