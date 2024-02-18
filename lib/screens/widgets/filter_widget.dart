import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
   Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "All plants",
    "Indoor",
    "Outdoor",
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      width: 377,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: selectedIndex == index
                      ? Color.fromRGBO(13, 152, 106, 100)
                      : Colors.black,
                  fontSize: 15),
            ),
            Container(
              height: 2,
              width: 32,
              color: selectedIndex == index
                  ? Color.fromRGBO(13, 152, 106, 100)
                  : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
