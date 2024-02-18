import 'package:flutter/material.dart';
import 'package:plantify/utils/colors.dart';

class AdBanner extends StatelessWidget {
  const AdBanner({
    super.key,
    required this.headerText,
    required this.productText,
    required this.offerPrecntage,
    required this.image,
  });

  final String headerText;
  final String productText;
  final int offerPrecntage;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 199,
        decoration: BoxDecoration(
            color: designColors[5],
            borderRadius: const BorderRadius.all(Radius.circular(14))),
        child: Padding(
          padding: const EdgeInsets.only(left: 19, right: 12),
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              Positioned(
                left: 0,
                top: 36,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: 162,
                        child: Text(
                          headerText,
                          style: TextStyle(
                              fontFamily: "Philosopher",
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: designColors[6]),
                        )),
                    const SizedBox(
                      height: 27,
                    ),
                    SizedBox(
                      width: 126,
                      child: RichText(
                        text: TextSpan(
                            text: "Get your 1st $productText @ ",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: designColors[6]),
                            children: [
                              TextSpan(
                                text: "$offerPrecntage% off",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: designColors[6],
                                ),
                              )
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
              // obviusly I could've used a text underline, put its position won't align with the design itself, so this positioned box was made.
              Positioned(
                top: 165,
                left: 15,
                child: Container(
                  decoration: BoxDecoration(color: designColors[2]),
                  height: 3,
                  width: 50,
                ),
              ),
              Image.asset(
                image,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
