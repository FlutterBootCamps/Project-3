import 'package:flutter/material.dart';
import 'package:project_2/component/search_text_button.dart';
import 'package:project_2/helper/helper_widget.dart';

class UpperWidget extends StatefulWidget {
  @override
  State<UpperWidget> createState() => _UpperWidgetState();
}

class _UpperWidgetState extends State<UpperWidget> {
  bool isClicked  = false;
  bool isClicked1 = false;
  bool isClicked2 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            width: 387,
            height: 200,
            decoration: BoxDecoration(
              color: const Color(0xffFDC7BE),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Stack(
              children: [
                Image.asset('images/Ad.png', width: 387),
                const Positioned(
                  left: 30,
                  top: 40,
                  child: SizedBox(
                    width: 180,
                    height: 70,
                    child: Text(
                      "There's a Plant for everyone",
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Philosopher',
                        color: Color(0xff002140),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 30,
                  bottom: 38,
                  child: SizedBox(
                    width: 140,
                    height: 40,
                    child: Text(
                      "Get your 1st plant @ 40% off",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        color: Color(0xff002140),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        context.HBox(), // Use the extension directly
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 310,
              height: 46,
              child: TextField(
                decoration: InputDecoration(
                  prefix: Image.asset('images/Group 47.png'),
                  hintText: "Search",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Color(0xff002140),
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
            Image.asset('images/filter.png'),
          ],
        ),
        context.HBox(),
        Row(
          children: [
            ClickableTextButton1(
              onPressed: () {
                setState(() {
                  isClicked = !isClicked;
                });
              },
              isClicked: isClicked,
              text: 'All plants',
            ),
            context.WBox(),
          ClickableTextButton1(
              onPressed: () {
                setState(() {
                  isClicked1 = !isClicked1;
                });
              },
              isClicked: isClicked1,
              text: 'Indoor',
            ),
            context.WBox(),
            ClickableTextButton1(
              onPressed: () {
                setState(() {
                  isClicked2 = !isClicked2;
                });
              },
              isClicked: isClicked2,
              text: 'Outdoor',
            ),
          ],
        ),
        context.HBox(),
      ],
    );
  }
}
