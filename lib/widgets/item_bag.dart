import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project3_plants_maram/controller/cart_controller.dart';
import 'package:project3_plants_maram/models/plant_model.dart';

class iItemBag extends StatefulWidget {
  const iItemBag({
    super.key,
    required this.plant,
    required this.onAdd,
    required this.onRemove,
    required this.onDelete,
  });

  final Plant plant;
  final Function() onAdd;
  final Function() onRemove;
  final Function() onDelete;

  @override
  State<iItemBag> createState() => _iItemBagState();
}

class _iItemBagState extends State<iItemBag> {
  @override
  Widget build(BuildContext context) {
    final cartContrller = GetIt.I.get<CartContrller>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 100,
          child: Stack(
            children: [
              Positioned(
                top: 30,
                left: 10,
                child: Image.asset(
                  'assets/images/backgroundcart.png',
                  width: 90,
                ),
              ),
              Image.asset(
                widget.plant.image_path,
                height: 100,
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    widget.plant.name,
                    style: GoogleFonts.philosopher(
                        textStyle:
                        TextStyle(color: Color(0xff002140), fontSize: 15)),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.turned_in_not_sharp,
                      color: Color(0xff0D986A),
                    ),
                  ),
                  Text("\$${widget.plant.price}")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed:(){
                      widget.onAdd();
                    },
                    icon: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0xff002140))),
                      child: Icon(Icons.add),
                    ),
                  ),
                  Text(
                    widget.plant.quantity.toString(),
                    style:
                    TextStyle(fontSize: 14, color: Color(0xff0D986A)),
                  ),
                  IconButton(
                    onPressed: () {
                      widget.onRemove();
                    },
                    icon: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0xff002140))),
                      child: Icon(Icons.remove),
                    ),
                  ),

                  IconButton(onPressed: () {
                    widget.onDelete();
                  }, icon: Image.asset('assets/images/delete.png'))
                ],
              ),
            ],
          ),
        ),

      ],
    );
  }
}
