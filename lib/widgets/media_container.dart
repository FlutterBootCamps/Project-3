import 'package:flutter/material.dart';
import 'package:plantify/utils/colors.dart';
import 'package:plantify/widgets/roundy_button.dart';

class MediaContainer extends StatelessWidget {
  const MediaContainer({
    super.key,
    required this.media,
    this.isVideo = false,
    this.onTap,
  });
  final String media;
  final bool? isVideo;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: (isVideo!) ? 134 : 104,
        height: 90,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(14)),
          image: DecorationImage(image: AssetImage(media), fit: BoxFit.cover),
        ),
        child: (isVideo!)
            ? Center(
                child: RoundyButton(
                notifyParent: () {},
                onTap: () {},
                icon: "assets/icons/play.png",
                color: designColors[16],
                border: Border.all(
                  color: designColors[1],
                  width: 2,
                ),
                width: 48,
                height: 48,
              ))
            : null,
      ),
    );
  }
}
