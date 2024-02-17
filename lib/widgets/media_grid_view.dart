import 'package:flutter/material.dart';
import 'package:plantify/helpers/extensions/screen_helper.dart';

class MediaGridView extends StatelessWidget {
  const MediaGridView({
    super.key, required this.media,
  });
  final List<Widget> media;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.getWidth(context),
      height: 90,
      child: GridView.count(
        mainAxisSpacing: 14,
        padding: const EdgeInsets.symmetric(horizontal: 36),
        childAspectRatio: 1 / 1.5,
        crossAxisCount: 1,
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        children: media
      ),
    );
  }
}


