import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:plant_shop/database/get_it.dart';
import 'package:plant_shop/model/plant_model.dart';

class BookMark extends StatefulWidget {
  BookMark({required this.plant, Key? key}) : super(key: key);

  final PlantModel plant;

  @override
  State<BookMark> createState() => _BookMarkState();
}

class _BookMarkState extends State<BookMark> {
  @override
  Widget build(BuildContext context) {
    HomeData homeData = GetIt.I.get<HomeData>();
    Color color = GetIt.I.get<HomeData>().buyLater.contains(widget.plant)
        ? Colors.green
        : Colors.black;
    return SizedBox(
        child: IconButton(
      icon: Icon(
        Icons.bookmark,
        color: color,
      ),
      onPressed: () {
        context.findAncestorStateOfType();
        setState(() {
          homeData.toggleItemBuylater(item: widget.plant);
        });
      },
    ));
  }
}
