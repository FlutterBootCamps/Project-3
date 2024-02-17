import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:plantify/data%20layer/home_data.dart';
import 'package:plantify/helpers/extensions/screen_helper.dart';
import 'package:plantify/models/Plant_model.dart';
import 'package:plantify/screens/plant_details.dart';
import 'package:plantify/utils/colors.dart';
import 'package:plantify/widgets/roundy_button.dart';

class PlantCard extends StatefulWidget {
  const PlantCard({
    super.key,
    required this.plant, this.isMini = false,
  });

  final Plant plant;
  final bool? isMini;

  @override
  State<PlantCard> createState() => _PlantCardState();
}

class _PlantCardState extends State<PlantCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        InkWell(
          onTap: (){
            context.push(context, PlantDetailsScreen(plant: widget.plant)).then((_) {
              setState(() {
              });
            }); 
          },
          child: Container(
            width: (widget.isMini!) ? 155 : 277,
            height: (widget.isMini!) ? 114 : 174,
            padding: (widget.isMini!) ? const EdgeInsets.only(left: 24, top: 10, bottom: 7) : const EdgeInsets.only(left: 23, bottom: 10, top: 42),
            decoration: BoxDecoration(
              color: Color(int.parse(widget.plant.color)),
              borderRadius: const BorderRadius.all(Radius.circular(18)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: (widget.isMini!) ? 94 : 145,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Air Purifier",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                      Image.asset("assets/images/paw.png", scale: (widget.isMini!) ? 1.5 : null,)
                    ],
                  ),
                ),
                SizedBox(
                    width: 221,
                    child: Text(widget.plant.name,
                        style: TextStyle(
                            fontFamily: "Philosopher",
                            fontSize: (widget.isMini!) ? 20 : 32,
                            fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis)),
                SizedBox(
                  width: 181,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${widget.plant.price}",
                        style: const TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      IconButton(
                          onPressed: () {
                            if (GetIt.I
                                .get<HomeData>()
                                .checkInFavorite(widget.plant)) {
                              GetIt.I
                                  .get<HomeData>()
                                  .removeFromFavorite(widget.plant);
                            } else {
                              GetIt.I.get<HomeData>().addToFavorite(widget.plant);
                            }
                            setState(() {});
                          },
                          icon: Image.asset(GetIt.I
                                  .get<HomeData>()
                                  .checkInFavorite(widget.plant)
                              ? "assets/icons/heart_filled.png"
                              : "assets/icons/heart_empty.png")),
                      (widget.isMini!) ? const SizedBox() : RoundyButton(
                        icon: "assets/images/smiley.png", color: designColors[2], onTap: (){}, notifyParent: (){},),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
            bottom: (widget.isMini!) ? 70 : 20,
            left: (widget.isMini!) ? 110 : 200,
            child: Image.asset(
              widget.plant.imagePath,
            scale: (widget.isMini!) ? 2 : null,))
      ],
    );
  }
}
