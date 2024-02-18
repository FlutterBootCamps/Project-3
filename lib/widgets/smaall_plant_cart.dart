import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlantCardSmall extends StatelessWidget {
  PlantCardSmall({
    super.key,
    required this.plantName,
    required this.plantPath,
    required this.plantPrice,
    required this.color,
  });
  String plantPath;
  String plantName;
  String plantPrice;
  Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, right: 40, top: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: color),
            width: MediaQuery.of(context).size.width * 0.75,
            height: 174,
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Air Purifier",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    plantName,
                    style: GoogleFonts.philosopher(
                        textStyle: const TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        plantPrice,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Icon(Icons.favorite),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset('assets/images/face.png')
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
              left: 130,
              top: 60,
              child: Image.asset(
                'assets/images/feet.png',
                width: 20,
              )),
          Positioned(
              right: 10,
              bottom: 23,
              child: Image.asset(
                plantPath,
                width: 140,
              )),
        ],
      ),
    );
  }
}
