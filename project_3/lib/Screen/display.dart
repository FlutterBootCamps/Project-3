import 'package:flutter/material.dart';
import 'package:project_2/component/AI_widget.dart';
import 'package:project_2/component/overview_widget.dart';
import 'package:project_2/component/product_header_widget.dart';
import 'package:project_2/component/scroll_horizontal.dart';
import 'package:project_2/helper/helper_widget.dart';
import 'package:project_2/model/plant_model.dart';

// DisplayProduct widget, which displays detailed information about a specific plant.
class DisplayProduct extends StatefulWidget {
  const DisplayProduct({super.key, required this.plant});

  // Required plant parameter for displaying plant information.
  final Plant plant;

  @override
  State<DisplayProduct> createState() => _DisplayProductState();
}

// State class for the DisplayProduct widget.
class _DisplayProductState extends State<DisplayProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar containing the logo, title, and action icons.
      appBar: AppBar(
        backgroundColor: const Color(0xff9CE5CB),
        leading: const Image(image: AssetImage('images/Logo.png')),
        title: const Text(
          "PLANTIFY",
          style: TextStyle(
              fontSize: 20,
              fontFamily: 'Philosopher',
              color: Color(0xff002140)),
        ),
        actions: [
          Image.asset(
            'images/Group 47.png',
            width: 34,
            height: 28,
          ),
          context.WBox(),
          Image.asset('images/Frame 97.png')
        ],
      ),
      // Body of the widget containing various plant-related information.
      body: ListView(
        children: [
          // Displaying the header widget with information about the plant.
          ProductHeaderWidget(plant: widget.plant),
          context.HBox(),
          // Padding and column for displaying plant overview and bio.
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Displaying the overview section with water, light, and fertilizer information.
                const Text(
                  "Overview",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Color(0xff002140),
                  ),
                ),
                context.HBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Overview(
                        Text1: '${widget.plant.water}ml',
                        Text2: "Water",
                        image: "images/Group 88.png"),
                    Overview(
                        Text1: '${widget.plant.light}%',
                        Text2: "Light",
                        image: 'images/Group 90.png'),
                    Overview(
                        Text1: '${widget.plant.fertilizer}gm',
                        Text2: "Fertilizer",
                        image: 'images/Group 91.png')
                  ],
                ),
                const SizedBox(height: 40),
                // Displaying the plant bio section.
                const Text(
                  "Plant Bio",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Color(0xff002140),
                  ),
                ),
                context.HBox(),
                Text(
                  widget.plant.description,
                  style: const TextStyle(fontFamily: 'Philosopher'),
                ),
              ],
            ),
          ),
          // Displaying a horizontal scroll view for related plants.
          const ScrollHorizontal(),
          context.HBox(),
          // Displaying the AIWidget section.
          const AIWidget(),
          context.HBox(),
        ],
      ),
    );
  }
}