import 'package:flutter/material.dart';

class ScrollHorizontal extends StatelessWidget {
  const ScrollHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 8,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 18, right: 7),
            child: Stack(children: [
              Container(
                width: 150,
                height: MediaQuery.of(context).size.height / 8.7,
                decoration: BoxDecoration(
                    color: Color(0xffebd567),
                    borderRadius: BorderRadius.circular(20)),
                child:
                    Positioned(top: 0, child: Image.asset('images/image1.png')),
              ),
              Positioned(
                  top: 15, right: 35, child: Image.asset('images/Group 61.png'))
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(right: 7),
            child: Image.asset('images/image2.png'),
          ),
          Padding(
            padding: EdgeInsets.only(right: 7),
            child: Image.asset('images/image3.png'),
          ),
          Padding(
            padding: EdgeInsets.only(right: 7),
            child: Image.asset('images/image4.png'),
          )
        ],
      ),
    );
  }
}
