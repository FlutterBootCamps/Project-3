import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
         const Text(
            "Maram ALharthi",
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xff0D986A)),
          ),
          Text("ALHARTHIMARAM7@GMAIL.COM",
              style: GoogleFonts.philosopher(
                textStyle: TextStyle(fontSize: 12, color: Color(0xff203901)),
              ))
        ]),
      ),
    );
  }
}
