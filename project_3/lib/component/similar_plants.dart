import 'package:flutter/material.dart';
import 'package:project_2/model/plant_model.dart';

class SimilarPlants extends StatefulWidget {
  const SimilarPlants(
      {super.key,
      this.onTapClick,
      required this.color, required this.plant});

  final Plant plant;
  final Function()? onTapClick;
  final int color;

  @override
  State<SimilarPlants> createState() => _SimilarPlantsState();
}

class _SimilarPlantsState extends State<SimilarPlants> {
  bool isFavorite = false;

  List<Color> ListOfColor = [
    Color(0xffB0EAD5),
    Color(0xffFFF3CC),
    Color(0xffABE8D3),
    Color(0xffC1E8A4),
    Color(0xffE5F0A1),
    Color(0xffF5EDA8),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        height: 140,
        child: ListView(
          scrollDirection: Axis.horizontal, 
          children: [
          InkWell(
            onTap: widget.onTapClick,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 180,
                  height: 120,
                  decoration: BoxDecoration(
                    color: ListOfColor[widget.color % ListOfColor.length],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Positioned(
                  right: -40,
                  top: -40,
                  child: Image.asset(
                    widget.plant.image,
                    width: 100,
                    height: 120,
                  ),
                ),
                const Positioned(
                  left: 20,
                  top: 10,
                  child: Text(
                    "Air Purifier",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Color(0xff002140),
                    ),
                  ),
                ),
                Positioned(
                  left: 110,
                  top: 20,
                  child: Image.asset("images/Group 66.png"),
                ),
                Positioned(
                  left: 20,
                  top: 45,
                  child: Text(
                    widget.plant.name.toString(),
                    style: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'Philosopher',
                      color: Color(0xff002140),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 30,
                  child: Text(
                    '\$${widget.plant.price}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Color(0xff002140),
                    ),
                  ),
                ),
                Positioned(
                  left: 110,
                  bottom: 20,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                      isFavorite = !isFavorite;
                    });
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: isFavorite ? Colors.red : null,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
