import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:plantify/data%20layer/home_data.dart';
import 'package:plantify/utils/colors.dart';
import 'package:plantify/widgets/basket_plant_container.dart';
import 'package:plantify/widgets/checkout_bar.dart';
import 'package:plantify/widgets/coupon_container.dart';
import 'package:plantify/widgets/delivery_container.dart';
import 'package:plantify/widgets/screen_header.dart';

class BasketScreen extends StatefulWidget {
  const BasketScreen({super.key});

  @override
  State<BasketScreen> createState() => _BasketScreenState();
}

class _BasketScreenState extends State<BasketScreen> {
  void refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: designColors[4],
        leading: Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              "assets/images/logo.png",
            )),
        title: const Text(
          "PLANTFIY",
          style: TextStyle(
              fontFamily: "Philosopher",
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.5),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: Image.asset("assets/icons/search.png")),
          IconButton(
              onPressed: () {}, icon: Image.asset("assets/icons/menu.png"))
        ],
      ),
      bottomNavigationBar: (GetIt.I.get<HomeData>().basketPlants.isEmpty &&
              GetIt.I.get<HomeData>().savedPlants.isEmpty)
          ? null
          : CheckoutBar(
              onTap: () {},
              isEnabled: false,
              totalPrice: GetIt.I.get<HomeData>().getTotalPrice(),
            ),
      body: (GetIt.I.get<HomeData>().basketPlants.isEmpty &&
              GetIt.I.get<HomeData>().savedPlants.isEmpty)
          ? const Center(
              child: Text(
                "Your basket is empty.",
                style: TextStyle(
                    fontFamily: "Philosopher",
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            )
          : Padding(
              padding: const EdgeInsets.only(left: 24, right: 35),
              child: ListView(
                children: [
                  const SizedBox(
                    height: 42,
                  ),
                  const ScreenHeader(text: "Your Bag"),
                  const SizedBox(
                    height: 34.7,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                        GetIt.I.get<HomeData>().basketPlants.length, (index) {
                      return BasketPlantContainer(
                        plant: GetIt.I.get<HomeData>().basketPlants[index],
                        notfiyParent: refresh,
                      );
                    }),
                  ),
                  const DeliveryContainer(
                    indicatorValue: 0.8,
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  const CouponContainer(),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 304,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(
                              color: designColors[6],
                              fontFamily: "Poppins",
                              fontSize: 28,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "\$${GetIt.I.get<HomeData>().getTotalPrice()}",
                          style: TextStyle(
                              color: designColors[6],
                              fontFamily: "Poppins",
                              fontSize: 28,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 54,
                  ),
                  SizedBox(
                    width: 304,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Saved for later",
                          style: TextStyle(
                              color: designColors[2],
                              fontFamily: "Poppins",
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "${GetIt.I.get<HomeData>().savedPlants.length} items",
                          style: TextStyle(
                              color: designColors[2],
                              fontFamily: "Poppins",
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                        GetIt.I.get<HomeData>().savedPlants.length, (index) {
                      return BasketPlantContainer(
                        plant: GetIt.I.get<HomeData>().savedPlants[index],
                        notfiyParent: refresh,
                      );
                    }),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                ],
              ),
            ),
    );
  }
}
