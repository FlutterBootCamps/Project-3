import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:project_3_saad_alharbi/data_layer/plant_data.dart';
import 'package:project_3_saad_alharbi/helper/extensions/screen_handler.dart';
import 'package:project_3_saad_alharbi/model/plant_model.dart';

import '../components/cart_container.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int counter = 1;
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
                  Icon(Icons.search, size: 30),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.menu, size: 30)
                ]),
          )
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: SingleChildScrollView(
          child: Container(
            height: context.getHeight(),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                "Your Bag",
                style: TextStyle(
                    color: Color(0xff0D986A),
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: GetIt.I.get<PlantData>().cart.toSet().toList().length,
                    itemBuilder: (context, index) {
                      List<int> bagCart =
                          GetIt.I.get<PlantData>().cart.toSet().toList();
                      PlantModel plant = GetIt.I
                          .get<PlantData>()
                          .plants[bagCart[index]];

                      return CartContainer(
                        imagePath: plant.imagepath!,
                        name: plant.name!,
                        price: plant.price.toString(),
                        index: index,
                        ontap: () => setState(() {}),
                      );
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: context.getWidth(),
                height: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 185, 232, 216),
                        radius: 30,
                        child: Icon(
                          Icons.local_shipping_outlined,
                          color: Color(0xff0D986A),
                          size: 50,
                        )),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "delivery",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 60,
                              height: 5,
                              decoration:
                                  const BoxDecoration(color: Color(0xff0D986A)),
                            )
                          ],
                        ),
                        const Text("Order above ₹1200 to\n get free delivery",
                            style: TextStyle(fontSize: 20)),
                        const Text("Shop for more ₹190",
                            style: TextStyle(
                                fontSize: 20, color: Color(0xff0D986A))),
                      ],
                    ),
                    const Text("\$80",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: context.getWidth(),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 185, 232, 216),
                        radius: 30,
                        child: Icon(
                          Icons.discount_outlined,
                          color: Color(0xff0D986A),
                          size: 50,
                        )),
                    const Text("Apply Coupon",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Container(
                      width: 100,
                      height: 20,
                      decoration: const BoxDecoration(
                          border: BorderDirectional(
                              bottom: BorderSide(
                                  color: Color(0xff0D986A),
                                  width: 2,
                                  style: BorderStyle.solid))),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Total",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "\$${(GetIt.I.get<PlantData>().getTotal() + 80).toStringAsFixed(2)}",
                    style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Saved for later",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff0D986A)),
                  ),
                  Text(
                    "${GetIt.I.get<PlantData>().saved.length} items",
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff0D986A)),
                  )
                ],
              ),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: GetIt.I.get<PlantData>().saved.toSet().toList().length,
                    itemBuilder: (context, index) {
                      List<int> saveCart =
                          GetIt.I.get<PlantData>().saved.toSet().toList();
                      PlantModel plant = GetIt.I
                          .get<PlantData>()
                          .plants[saveCart[index]];

                      return CartContainer(
                        imagePath: plant.imagepath!,
                        name: plant.name!,
                        price: plant.price.toString(),
                        index: index,
                        ontap: () => setState(() {}),
                      );
                    }),
              ),
            ]),
          ),
        ),
      )),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomAppBar(
          color: const Color(0xff0B845C),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text(
              "Checkout",
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              "\$${(GetIt.I.get<PlantData>().getTotal() + 80).toStringAsFixed(2)}",
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            )
          ]),
        ),
      ),
    );
  }
}
