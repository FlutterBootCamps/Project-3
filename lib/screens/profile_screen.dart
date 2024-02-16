import 'package:flutter/material.dart';
import 'package:plantify/utils/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
              onPressed: () {}, icon: Image.asset("assets/icons/menu.png"))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 45, horizontal: 37),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Mohammed Soqati",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: designColors[2]),
            ),
            Text("SoqatiMohammed@hotmail.com", style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: designColors[11]),),

          ],
        ),
      ),
    );
  }
}
