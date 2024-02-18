import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:project_3_saad_alharbi/data_layer/plant_data.dart';

class CartContainer extends StatefulWidget {
  const CartContainer(
      {super.key,
      required this.imagePath,
      required this.name,
      required this.price,
      required this.index,
      this.ontap});
  final String imagePath;
  final String name;
  final String price;
  final int index;
  final VoidCallback? ontap;

  @override
  State<CartContainer> createState() => _CartContainerState();
}

class _CartContainerState extends State<CartContainer> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          Image.asset(widget.imagePath, width: 60),
          Column(
            children: [
              Text(
                widget.name,
                style: const TextStyle(
                    color: Color(0xff002140),
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Philosopher'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        final plantData = GetIt.I.get<PlantData>();
                        final cart = plantData.cart;
                        final saved = plantData.saved;
                        counter++;
                        if (cart.contains(widget.index)) {
                          cart.add(widget.index);
                        }
                        if (saved.contains(widget.index)) {
                          saved.add(widget.index);
                        }
                        
                        plantData.setData();
                        widget.ontap!();
                        setState(() {});
                      },
                      icon: const Icon(Icons.add)),
                  Text(
                    "$counter",
                    style: const TextStyle(
                        color: Color(0xff0D986A),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {
                        counter > 1 ? counter-- : counter = 1;
                        if (counter > 1) {
                          GetIt.I.get<PlantData>().cart.remove(widget.index);
                          GetIt.I.get<PlantData>().setData();
                        }
                        widget.ontap!();
                        setState(() {});
                      },
                      icon: const Icon(Icons.remove)),
                  IconButton(
                    onPressed: () {
                      final plantData = GetIt.I.get<PlantData>();
                      final cart = plantData.cart;
                      final saved = plantData.saved;

                      if (cart.contains(widget.index)) {
                        cart.removeWhere((e) => widget.index == e);
                      }
                      if (saved.contains(widget.index)) {
                        saved.removeWhere((e) => widget.index == e);
                      }

                      plantData.setData();

                      if (widget.ontap != null) {
                        widget.ontap!();
                      }

                      setState(() {});
                    },
                    icon: const Icon(
                      Icons.delete,
                      color: Color(0xff0D986A),
                    ),
                  )
                ],
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              List<int> saved = GetIt.I.get<PlantData>().saved;
              if (!saved.contains(widget.index)) {
                saved.add(widget.index);
              } else {
                saved.remove(widget.index);
              }
              GetIt.I.get<PlantData>().setData();
              widget.ontap!();

              setState(() {});
            },
            icon: Icon(
              GetIt.I.get<PlantData>().saved.contains(widget.index)
                  ? Icons.bookmark
                  : Icons.bookmark_border,
              size: 30,
              color: const Color(0xff0D986A),
            ),
          ),
          Text(
            "\$${(double.parse(widget.price) * counter).toStringAsFixed(2)}",
            style: const TextStyle(
                color: Color(0xff002140),
                fontSize: 16,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
