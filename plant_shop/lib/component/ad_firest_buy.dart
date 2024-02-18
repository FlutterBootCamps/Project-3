import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AdFirestBuy extends StatelessWidget {
  const AdFirestBuy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 253, 200, 188),
            borderRadius: BorderRadius.circular(20)),
        child: Stack(children: [
          Image.asset("image/image 19.png"),
          const Positioned(
              left: 20,
              top: 40,
              child: SizedBox(
                  height: 100,
                  width: 180,
                  child: Text("there's a plant for everyone",
                      style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.w700)))),
          const Positioned(
              left: 20,
              top: 120,
              child: SizedBox(
                  height: 50,
                  width: 120,
                  child: Text("get your 1st plant @ 40% off",
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w600)))),
          Positioned(
              left: 38,
              top: 155,
              child: Container(
                height: 10,
                width: 45,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: 3, color: Colors.green.shade800))),
              ))
        ]));
  }
}
