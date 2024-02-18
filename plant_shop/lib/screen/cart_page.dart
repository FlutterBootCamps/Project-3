import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:plant_shop/database/get_it.dart';
import 'package:plant_shop/helper/list_colors.dart';

import '../component/book_mark.dart';
import '../component/item_row_cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Image.asset("image/Group 46.png"),
          title: const Text("Plantify"),
          actions: [
            const Icon(Icons.search),
            Image.asset("image/Frame 97.png", height: 30, width: 30),
          ],
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("cart",
                style: TextStyle(
                    color: Colors.green.shade700,
                    fontSize: 30,
                    fontWeight: FontWeight.w700)),
            if (GetIt.I.get<HomeData>().carts.isEmpty) ...[
              const Text("No item in the cart")
            ] else
              ...GetIt.I
                  .get<HomeData>()
                  .carts
                  .map((e) => ItemRowCart(
                        plant: e,
                        color: listColor[Random().nextInt(6)],
                        bookMark: BookMark(plant: e),
                      ))
                  .toList()
          ]),
        ));
  }
}
