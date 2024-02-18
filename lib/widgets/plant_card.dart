import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project3_plants_maram/controller/cart_controller.dart';
import 'package:project3_plants_maram/controller/plant_controller.dart';
import 'package:project3_plants_maram/models/plant_model.dart';
import 'package:project3_plants_maram/screens/plant_screen.dart';

class PlantCard extends StatefulWidget {
  PlantCard({super.key, required this.plant});
  Plant plant;

  @override
  State<PlantCard> createState() => _PlantCardState();
}

class _PlantCardState extends State<PlantCard> {
  @override
  Widget build(BuildContext context){
  final plantContrller = GetIt.I.get<PlantContrller>();
  final cartContrller = GetIt.I.get<CartContrller>();

  return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return PlantScreen(
            plant: widget.plant,
          );
        }));
      },
      child: SizedBox(
        width: double.infinity,
        height: 200,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, right: 40, top: 30),
              decoration: BoxDecoration(
                color: Color(0xffB0EAD5),
                borderRadius: BorderRadius.circular(20),
              ),
              width: MediaQuery.of(context).size.width * 0.75,
              height: 174,
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Air Purifier",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                    ),
                    Text(
                      widget.plant.name,
                      style: GoogleFonts.philosopher(
                          textStyle: const TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          widget.plant.price.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        IconButton(icon: Icon(plantContrller.checkPlantFav(widget.plant) ? Icons.favorite : Icons.favorite_border,), onPressed: (){
                          if(plantContrller.checkPlantFav(widget.plant) ){
                            plantContrller.removeFavPlant(widget.plant);
                          }else{
                            plantContrller.addFavPlant(widget.plant);
                          }
                          setState(() {

                          });
                        },),
                        SizedBox(
                          width: 10,
                        ),
                        IconButton(padding: EdgeInsets.zero, icon: Image.asset('assets/images/face.png'), onPressed: () {
                          cartContrller.addCart(widget.plant);
                        },)
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                left: 130,
                top: 60,
                child: Image.asset(
                  'assets/images/feet.png',
                  width: 20,
                )),
            Positioned(
                right: 10,
                bottom: 23,
                child: Image.asset(
                  widget.plant.image_path,
                  width: 140,
                )),
          ],
        ),
      ),
    );
  }
}
