import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_3_alaa/helper/shortcut.dart';

class TopHome extends StatelessWidget {
  const TopHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.getHeight() * 0.25,
      width: context.getWidth(),
      child: Stack(
        children: [
          Container(
            width: context.getWidth(),
            height: context.getHeight() * .30,
            padding: const EdgeInsets.only(
              left: 15,
              //  top: 20, bottom: 20, right: 80
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xffFDC7BE), // var
            ),
            child: Row(
              children: [
                SizedBox(
                  width: context.getWidth() * .5,
                  height: context.getHeight() * .20,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "There’s a Plant for everyone",
                        style: GoogleFonts.getFont(
                          'Philosopher',
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 28),
                        ),
                      ),
                      const Text(
                        "Get your 1st plant @ 40% off",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 25,
            left: 40,
            child: Container(
              width: context.getWidth() * 0.2,
              decoration: const BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Color(0xff0D986A), width: 5))),
              // child:
            ),
          ),
          Positioned(
              // right: ,
              top: 5,
              child: Image.asset(
                "asset/decoration.png",
                width: context.getWidth(),
              )),
        ],
      ),
    );
  }
}
