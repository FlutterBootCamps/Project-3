import 'package:flutter/material.dart';
import 'package:plantify/helpers/extensions/screen_helper.dart';
import 'package:plantify/utils/colors.dart';

class InviteCard extends StatelessWidget {
  const InviteCard({
    super.key, required this.headerText, required this.descriptionText, required this.buttonText,
  });
  final String headerText;
  final String descriptionText;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.getWidth(context) * 0.9,
      height: 145,
      padding: const EdgeInsets.symmetric(
          horizontal: 23, vertical: 14),
      decoration: BoxDecoration(
          image: const DecorationImage(
              alignment: Alignment.centerLeft,
              image: AssetImage(
                "assets/images/invite_card_background.png",
              )),
          color: designColors[7],
          borderRadius:
              const BorderRadius.all(Radius.circular(24))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: 239,
              child: Text(
                headerText,
                style: const TextStyle(
                  fontFamily: "Philosopher",
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                  width: 157,
                  child: Text(
                    descriptionText,
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: designColors[2]),
                  )),
              TextButton(
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(designColors[2]), shape: const MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4)))), minimumSize: const MaterialStatePropertyAll(Size(60, 30))),
                  onPressed: () {},
                  child: Text(
                    buttonText,
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: designColors[1]),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
