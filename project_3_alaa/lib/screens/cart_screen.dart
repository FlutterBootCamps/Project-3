import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_3_alaa/data_layer/plants_data.dart';
import 'package:project_3_alaa/helper/shortcut.dart';
import 'package:project_3_alaa/widgets/cart_palnt_widget.dart';
import 'package:project_3_alaa/widgets/mark_plant_widget.dart';
import 'package:shimmer/shimmer.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});
  // final count = 1;

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  const Text("PLANTIFY"), // style font
                ],
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search_outlined)),
                  IconButton(
                      onPressed: () {}, icon: Image.asset("asset/menu.png")),
                ],
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Your Bag",
                      style: TextStyle(
                          fontSize: 38,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0D986A))),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Column(
                      children: [
                        if (GetIt.I.get<PlantDataLayer>().cartPlant.isNotEmpty)
                          ...GetIt.I.get<PlantDataLayer>().cartPlant.map(
                                (item) => CartPlantWidget(
                                  plant: item,
                                ),
                              ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: context.getWidth(),
                    height: context.getHeight() * 0.1,
                    child: Stack(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: context.getWidth() * 0.12,
                              height: context.getHeight() * 0.09,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(54),
                                  color: const Color(0xffE3FDF4)),
                              child: Image.asset(
                                "asset/track_icon.png",
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Delivery",
                                      style: GoogleFonts.getFont(
                                        'Philosopher',
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.all(3),
                                      height: context.getHeight() * 0.01,
                                      width: context.getWidth() * 0.3,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 206, 247, 233),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: FractionallySizedBox(
                                        alignment: Alignment.centerLeft,
                                        widthFactor: 0.8,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0xff0D986A),
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: context.getWidth() * 0.45,
                                  child: const Text(
                                    "Order above ₹1200 to get free delivery",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              "\$ 80",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const Positioned(
                          right: 45,
                          top: 44,
                          child: Text(
                            "Shop for more ₹190",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff0D986A)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: context.getWidth(),
                    height: context.getHeight() * 0.06,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: context.getWidth() * 0.10,
                          height: context.getHeight() * 0.07,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(54),
                              color: const Color(0xffE3FDF4)),
                          // ),
                          child: Image.asset("asset/coupon_icon.png"),
                        ),
                        Text(
                          "Apply Coupon",
                          style: GoogleFonts.getFont(
                            'Philosopher',
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          height: context.getHeight() * 0.01,
                          width: context.getWidth() * 0.25,
                          child: Container(
                            width: context.getWidth() * 0.3,

                            decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Color(0xff0D986A), width: 2)),
                            ),
                            // child:
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 32),
                      ),
                      Text(
                        "\$139 ",
                        // GetIt.I.get<PlantDataLayer>().totalPrice},
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 32),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Saved for later",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff0D986A),
                            fontSize: 16),
                      ),
                      Text(
                        "${GetIt.I.get<PlantDataLayer>().markPlant.length} items",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff0D986A),
                            fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  if (GetIt.I.get<PlantDataLayer>().markPlant.isNotEmpty)
                    ...GetIt.I.get<PlantDataLayer>().markPlant.map(
                          (item) => MarkPlant(
                            plant: item,
                          ),
                        ),
                ],
              ),
            ],
          ),
        ),
      ),

      //  bottomNavigationBar
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
              label: "total",
              icon: Shimmer.fromColors(
                baseColor: const Color.fromARGB(255, 95, 190, 159),
                highlightColor: Colors.yellow,
                child: const Text(
                  "Checkout",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
              ),
            ),
            const BottomNavigationBarItem(
              label: "total",
              icon: Text(
                "\$ 139",
                style: TextStyle(
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
