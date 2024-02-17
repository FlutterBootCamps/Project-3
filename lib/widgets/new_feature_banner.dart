import 'package:flutter/material.dart';
import 'package:plantify/helpers/extensions/screen_helper.dart';
import 'package:plantify/utils/colors.dart';

class NewFeatureBanner extends StatelessWidget {
  const NewFeatureBanner({
    super.key, required this.topText, required this.bottomText, required this.buttonText, required this.image,
  });
  final String topText;
  final String bottomText;
  final String buttonText;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.getWidth(context),
      height: 176,
      color: designColors[17],
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                topText,
                style: TextStyle(
                    color: designColors[6],
                    fontFamily: "Philosopher",
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                  width: 151,
                  child: Text(
                    bottomText,
                    style: TextStyle(
                        color: designColors[18],
                        fontFamily: "Poppins",
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  )),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(designColors[4]),
                    shadowColor:
                        MaterialStatePropertyAll(designColors[4]),
                        surfaceTintColor: MaterialStatePropertyAll(designColors[4]),
                    shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(4)), side: BorderSide(color: designColors[2], width: 1)))),
                child: Text(
                  buttonText,
                  style: TextStyle(
                      color: designColors[2],
                      fontFamily: "Poppins",
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
          Image.asset(image),
        ],
      ),
    );
  }
}