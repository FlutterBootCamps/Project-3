import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:project_3_alaa/data_layer/plants_data.dart';
import 'package:project_3_alaa/model/plants_model.dart';

class BookMarkWidget extends StatefulWidget {
  const BookMarkWidget({super.key, required this.plant});
  final Plants plant; 

  @override
  State<BookMarkWidget> createState() => _BookMarkWidgetState();
}

class _BookMarkWidgetState extends State<BookMarkWidget> {
bool _BookMark = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          GetIt.I.get<PlantDataLayer>().addPlantToMark(mPlant:   widget.plant);
          _BookMark = !_BookMark;
        });
      },
      child: Icon(
        Icons.bookmark_border_outlined,
        size: 30,
        color: _BookMark ?  const Color(0xff0D986A) : Colors.black38  ,
      ),
    );
  }
}