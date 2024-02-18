import 'package:flutter/material.dart';
import 'package:project_3_alaa/helper/shortcut.dart';

class OverviewWidget extends StatelessWidget {
  const OverviewWidget({super.key,
   required this.water, required this.light, required this.fertilizer
   });
  final double water;
  final double light;
  final double fertilizer;
  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.getWidth() * .85,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Overview",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    child: Row(
                  children: [
                    Image.asset("asset/water.png"),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          water.toString(),
                          style: const TextStyle(
                              color: Color(0xff0D986A),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "WATER",
                          style: TextStyle(
                              color: Color(0xffA3B0BA),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                )),
                Row(
                                  children: [
                Image.asset("asset/light.png"),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      light.toString(),
                      style: const TextStyle(
                          color: Color(0xff0D986A),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Light",
                      style: TextStyle(
                          color: Color(0xffA3B0BA),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                                  ],
                                ),
                Container(
                    child: Row(
                  children: [
                    Image.asset("asset/water.png"),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                         Text(
                          fertilizer.toString(),
                          style: const TextStyle(
                              color: Color(0xff0D986A),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "FERTILIZER",
                          style: TextStyle(
                              color: Color(0xffA3B0BA),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
