import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project3_plants_maram/controller/cart_controller.dart';
import 'package:project3_plants_maram/models/plant_model.dart';
import 'package:project3_plants_maram/widgets/item_bag.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final cartContrller = GetIt.I.get<CartContrller>();

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
          const Icon(
            Icons.search,
            color: Color(0xff002140),
          ),
          const SizedBox(
            width: 20,
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset('assets/images/list.png'),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              "Your Bag",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0D986A)),
            ),
            for (Plant plant in cartContrller.cartList)
              iItemBag(
                plant: plant,
                onAdd: () {
                  cartContrller.plusItem(plant);
                  setState(() {});
                },
                onRemove: (){
                  cartContrller.minusItem(plant);
                  setState(() {});
                },
                onDelete: (){
                  cartContrller.deleteCart(plant);
                  setState(() {});
                },
              ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset('assets/images/circle.png'),
                    Image.asset('assets/images/dilevery.png'),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.68,
                      child: Row(
                        children: [
                          Text(
                            "Delivery",
                            style: GoogleFonts.philosopher(
                                textStyle: const TextStyle(
                                    fontSize: 15, color: Color(0xff002140))),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const SizedBox(
                              width: 100,
                              child: LinearProgressIndicator(
                                value: 0.7,
                                color: Color(0xFF0D986A),
                                backgroundColor: Color(0xFFBCFAE5),
                              )),
                          const Spacer(),
                          const Text("\$80")
                        ],
                      ),
                    ),
                    const Text("Order above ₹1200 to get\nfree delivery")
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset('assets/images/circle2.png'),
                    Image.asset('assets/images/100.png'),
                  ],
                ),
                const SizedBox(
                  width: 30,
                ),
                Text(
                  "Apply Coupon",
                  style: GoogleFonts.philosopher(
                      textStyle: const TextStyle(
                          fontSize: 15, color: Color(0xff002140))),
                ),
                SizedBox(
                  width: 50,
                ),
                Expanded(
                  child: Container(
                    height: 2,
                    color: Color(0xFF0D986A),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total ",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Text("\$${cartContrller.computeTotal()}",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Saved for later ",
                  style: TextStyle(fontSize: 16, color: Color(0xff0D986A)),
                ),
                Text(
                  "items ",
                  style: TextStyle(fontSize: 16, color: Color(0xff0D986A)),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
