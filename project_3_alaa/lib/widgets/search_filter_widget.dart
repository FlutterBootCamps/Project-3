import 'package:flutter/material.dart';
import 'package:project_3_alaa/helper/shortcut.dart';

class SearchFilter extends StatelessWidget {
  const SearchFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: context.getWidth() * 0.75,
          height: context.getHeight() * 0.05,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: const Color(0xff002140), width: 1),
          ),
          child: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Icon(Icons.search_sharp),
                SizedBox(
                  width: 10,
                ),
                Text(
                  " search",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: context.getWidth() * 0.12,
          height: context.getHeight() * 0.05,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: const Color(0xff002140), width: 1),
          ),
          child: Image.asset("asset/sort_icon.png"),
        ),
      ],
    );
  }
}
