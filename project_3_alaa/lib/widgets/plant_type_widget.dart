import 'package:flutter/material.dart';
import 'package:project_3_alaa/helper/shortcut.dart';

class PlantType extends StatefulWidget {
  const PlantType({super.key});

  @override
  State<PlantType> createState() => _PlantTypeState();
}

class _PlantTypeState extends State<PlantType> {
  List<String> plantType = ["All Plant", "Indoor", "Outdoor"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.getHeight() * 0.06,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: plantType.length,
        itemBuilder: (context, index) => TypeOfPlant(index),
      ),
    );
  }

  Widget TypeOfPlant(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
          if(selectedIndex > 0){
            // ...GetIt.I.get<PlantDataLayer>().allIndoorPlants.map((e){

            // })
          }
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              plantType[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index
                    ? const Color(0xff0D986A)
                    : Colors.black,
              ),
            ),
            Container(
              // margin: EdgeInsets.only(top: 3),
              height: 2,
              width: 30,
              color: selectedIndex == index
                  ? const Color(0xff0D986A)
                  : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
