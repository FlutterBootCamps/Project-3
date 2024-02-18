import 'package:customizable_counter/customizable_counter.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:plant_shop/database/get_it.dart';
import 'package:plant_shop/helper/extensions/screen_helper.dart';
import 'package:plant_shop/model/plant_model.dart';

class CustomizableCounterWidget extends StatefulWidget {
  const CustomizableCounterWidget({required this.plant,Key? key}) : super(key: key);
final PlantModel plant;

  @override
  State<CustomizableCounterWidget> createState() => _CustomizableCounterWidgetState();
}

class _CustomizableCounterWidgetState extends State<CustomizableCounterWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomizableCounter(showButtonText: false,borderColor: Colors.transparent,

          textSize: 22,
          count:widget.plant.quantity,
          step: 1,
          minCount: 1,
          maxCount: 99,
          incrementIcon: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.black)),
            child: const Icon(
              Icons.add,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          decrementIcon:Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.black)),
            child: const Icon(
              Icons.remove,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          onDecrement: (value){
GetIt.I.get<HomeData>().removeItemCart(item: widget.plant);
      context.Refresh();

          // setState(() {});
          },
          onIncrement: (value){
GetIt.I.get<HomeData>().addItemCart(item: widget.plant);
      context.Refresh();


          // setState(() {});
          },
onCountChange: (c) {
  
},
    );
  }
}          