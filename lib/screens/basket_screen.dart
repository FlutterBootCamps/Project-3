import 'package:flutter/material.dart';
import 'package:plantify/utils/colors.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: designColors[4],
        leading: Align(alignment: Alignment.centerRight, child: Image.asset("assets/images/logo.png",)),
        title: const Text("PLANTFIY", style: TextStyle(fontFamily: "Philosopher" ,fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 2.5),),
        actions: [
          IconButton(onPressed: (){}, icon: Image.asset("assets/icons/search.png")),
            IconButton(onPressed: (){}, icon: Image.asset("assets/icons/menu.png"))
        ],
      ),
      body: const Center(child: Text("Basket Screen")),
    );
  }
}