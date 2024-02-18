import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_3_alaa/data_layer/plants_data.dart';
import 'package:project_3_alaa/dataset/plants_data.dart';
import 'package:project_3_alaa/helper/shortcut.dart';
import 'package:project_3_alaa/model/plants_model.dart';
import 'package:project_3_alaa/screens/plant_derails_screen.dart';
import 'package:project_3_alaa/widgets/circle_widget.dart';
import 'package:project_3_alaa/widgets/plant_type_widget.dart';
import 'package:project_3_alaa/widgets/plant_widget.dart';
import 'package:project_3_alaa/widgets/search_filter_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tapController;

  List<Color> color = [
    const Color(0xffB0EAD5),
    const Color(0xffFFF3CC),
    const Color(0xffABE8D3),
    const Color(0xffC1E8A4),
    const Color(0xffE5F0A1),
    const Color(0xffF5EDA8),
  ];

  @override
  void initState() {
    super.initState();
    tapController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          // AppBarWidget
          AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
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
                  Stack(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset("asset/subtract.png")),
                      const Positioned(
                        top: 15,
                        right: 10,
                        child: CircleWidget(
                          radius: 3,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {}, icon: Image.asset("asset/menu.png")),
                ],
              )
            ],
          ),
        ),
        // bottom: TabBar(
        //   controller: tapController,
        //   tabs: const [
        //     Tab( text: 'All Plants'),
        //     Tab( text: 'Indoor'),
        //     Tab( text: 'Outdoor'),

        // ],
        // ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: context.getHeight() * 0.25,
                    width: context.getWidth(),
                    child: Stack(
                      children: [
                        Container(
                          width: context.getWidth(),
                          height: context.getHeight() * .30,
                          padding: const EdgeInsets.only(
                            left: 15,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xffFDC7BE), // var
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: context.getWidth() * .5,
                                height: context.getHeight() * .20,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "There’s a Plant for everyone",
                                      style: GoogleFonts.getFont(
                                        'Philosopher',
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 28),
                                      ),
                                    ),
                                    const Text(
                                      "Get your 1st plant @ 40% off",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 25,
                          left: 40,
                          child: Container(
                            width: context.getWidth() * 0.2,
                            decoration: const BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                        color: Color(0xff0D986A), width: 5))),
                            // child:
                          ),
                        ),
                        Positioned(
                            // right: ,
                            top: 5,
                            child: Image.asset(
                              "asset/decoration.png",
                              width: context.getWidth(),
                            )),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  // top container

                  // search and filter section
                  const SearchFilter(),
                  const PlantType(),

                  ...List.generate(
                    GetIt.I.get<PlantDataLayer>().allPlants.length,
                    (index) => PlantsWidget(
                      plant: Plants.fromJson(plantsData[index]),
                      color: color[index],
                      displayPlant: () {
                        context.pushTo(
                          view: PlantDetailsScreen(
                              plant: Plants.fromJson(plantsData[index])),
                        );
                      },
                    ),
                  ),

                  // card between plants
                  SizedBox(
                    width: context.getWidth() * .9,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xffE8FBE8), // var
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: context.getWidth() *
                                      0.6, // context.getWidth() * .9,
                                  child: Text(
                                    "Invite a Friend and earn Plantify rewards",
                                    style: GoogleFonts.getFont(
                                      'Philosopher',
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: context.getWidth() * 0.6,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: context.getWidth() * 0.5,
                                        child: const Text(
                                          "Redeem them to get instant discounts",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff0D986A)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Positioned(
                            top: 70,
                            right: 25,
                            child: CircleWidget(
                              radius: 8,
                            ),
                          ),
                          const Positioned(
                            top: 25,
                            right: 25,
                            child: CircleWidget(
                              radius: 8,
                            ),
                          ),
                          const Positioned(
                            top: 70,
                            right: 75,
                            child: CircleWidget(
                              radius: 6,
                            ),
                          ),
                          const Positioned(
                            top: 40,
                            right: 50,
                            child: CircleWidget(
                              radius: 10,
                            ),
                          ),
                          const Positioned(
                            top: 10,
                            right: 55,
                            child: CircleWidget(
                              radius: 4,
                            ),
                          ),
                          const Positioned(
                            top: 5,
                            left: 20,
                            child: CircleWidget(
                              radius: 8,
                            ),
                          ),
                          const Positioned(
                            top: 40,
                            left: 5,
                            child: CircleWidget(
                              radius: 4,
                            ),
                          ),
                          Positioned(
                            bottom: 20,
                            right: 95,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateColor.resolveWith(
                                          (states) => const Color(0xff0D986A))),
                              child: const Text(
                                "Invite",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 35,
                            right: 10,
                            child: Image.asset(
                              "asset/logo1.png",
                              height: context.getHeight() * .2,
                              width: context.getWidth() * .2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  // Text between plant
                  SizedBox(
                    width: context.getWidth() * .9,
                    child: Stack(children: [
                      const Row(
                        children: [
                          Expanded(
                              child: Text(
                                  "Caring for plants should be fun. That’s why we offer 1-on-1 virtual consultations from the comfort of your home or office.",
                                  style: TextStyle(
                                    color: Color(0xff333333),
                                    fontSize: 16,
                                  ),
                                  softWrap: true)),
                        ],
                      ),
                      Positioned(
                        bottom: 12,
                        right: 90,
                        child: Container(
                          width: context.getWidth() * 0.05,
                          decoration: const BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Color(0xff0D986A), width: 2))),
                          // child:                   const Text("Learn More", style: TextStyle(color: Color(0xff0D986A), fontSize: 13, fontWeight: FontWeight.w700)),
                        ),
                      ),
                      const Positioned(
                          bottom: 4,
                          right: 20,
                          child: Text("Learn More",
                              style: TextStyle(
                                  color: Color(0xff0D986A),
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold))),
                    ]),
                  ),

                  // bottom home page
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: context.getWidth() * .1,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.black, width: 3))),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text("Plant a Life",
                                style: TextStyle(
                                    color: Color(0xff002140),
                                    fontSize: 36,
                                    fontWeight: FontWeight.w700)),
                            const Text("Live amongst Living",
                                style: TextStyle(
                                    color: Color(0xff334D66),
                                    fontSize: 28,
                                    fontWeight: FontWeight.w700)),
                            const Text("Spread the joy",
                                style: TextStyle(
                                    color: Color(0xff80909F),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
