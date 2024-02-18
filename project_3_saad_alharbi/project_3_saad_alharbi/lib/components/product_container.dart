import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:page_transition/page_transition.dart';
import 'package:project_3_saad_alharbi/data_layer/plant_data.dart';
import 'package:project_3_saad_alharbi/helper/extensions/screen_handler.dart';
import 'package:project_3_saad_alharbi/screen/plant_details_screen.dart';

class ProductContainer extends StatefulWidget {
  const ProductContainer(
      {super.key,
      required this.color,
      required this.name,
      required this.price,
      required this.type,
      required this.imagePath,
      this.icon,
      this.index});
  final Color color;
  final String name;
  final String price;
  final String type;
  final String imagePath;
  final IconData? icon;
  final int? index;

  @override
  State<ProductContainer> createState() => _ProductContainerState();
}

class _ProductContainerState extends State<ProductContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      constraints: const BoxConstraints(
        minHeight: 150,
      ),
      width: context.getWidth() * 0.80,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 30, left: 25),
            width: context.getWidth() * 0.80 / 1.2,
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: const BorderRadius.all(Radius.circular(25)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.type,
                  style: const TextStyle(
                      color: Color(0xff002140),
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  widget.name,
                  style: const TextStyle(
                      color: Color(0xff002140),
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Philosopher'),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "\$${widget.price}",
                      style: const TextStyle(
                          color: Color(0xff002140),
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    IconButton(
                      onPressed: () {
                        List<int> favoriteList =
                            GetIt.I.get<PlantData>().favorite;
                        if (!favoriteList.contains(widget.index)) {
                          favoriteList.add(widget.index!);
                        } else {
                          favoriteList.remove(widget.index!);
                        }
                        GetIt.I.get<PlantData>().setData();
                        setState(() {});
                      },
                      icon: Icon(
                        GetIt.I.get<PlantData>().favorite.contains(widget.index)
                            ? Icons.favorite
                            : Icons.favorite_border_outlined,
                        size: 50,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.leftToRight,
                                child: PlantDetailsScreen(
                                  index: widget.index!,
                                )));
                      },
                      icon: Icon(
                        widget.icon,
                        size: 50,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 5,
            right: 0,
            child: Image.asset(
              widget.imagePath,
              width: 150,
            ),
          ),
        ],
      ),
    );
  }
}
