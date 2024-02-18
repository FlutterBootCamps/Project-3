import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_3_alaa/data_layer/plants_data.dart';
import 'package:project_3_alaa/helper/shortcut.dart';
import 'package:project_3_alaa/model/plants_model.dart';
import 'package:project_3_alaa/widgets/bookmark_icon_widget.dart';

class CartPlantWidget extends StatefulWidget {
  CartPlantWidget({super.key, required this.plant,});
  late int count = 1;
  final Plants plant;

  @override
  State<CartPlantWidget> createState() => _CartPlantWidgetState();
}

class _CartPlantWidgetState extends State<CartPlantWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Image.asset(
              widget.plant.imagePath,
              width: context.getWidth() * 0.15,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.plant.name,
              style: GoogleFonts.getFont(
                'Philosopher',
                textStyle:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      widget.count++;
                    });
                  },
                  child: Container(
                    width: context.getWidth() * 0.05,
                    height: context.getHeight() * 0.03,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black)),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(" + ",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  widget.count.toString(),
                  style: const TextStyle(
                      color: Color(0xff0D986A), fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 15,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (widget.count > 0) {
                        widget.count--;
                      }
                    });
                  },
                  child: Container(
                    width: context.getWidth() * 0.05,
                    height: context.getHeight() * 0.03,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black)),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text("-",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      GetIt.I
                          .get<PlantDataLayer>()
                          .deletePlant(plant: widget.plant);
                    });
                  },
                  child: Image.asset("asset/delete_icon.png"),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: (){
                    setState(() {
                    GetIt.I.get<PlantDataLayer>().addPlantToMark(mPlant: widget.plant);
                    // GetIt.I.get<PlantDataLayer>().deletePlant(plantName: widget.plant.name);

                    });
                  },
                  child: BookMarkWidget(plant: widget.plant)
                  ),
                Text(
                  "\$${widget.plant.price * widget.count}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
