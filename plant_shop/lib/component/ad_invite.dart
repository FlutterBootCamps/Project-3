import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AdInvite extends StatelessWidget {
  const AdInvite({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            color: const Color.fromARGB(158, 140, 236, 138),
            borderRadius: BorderRadius.circular(20)),
        width: MediaQuery.of(context).size.width * 0.9,
        height: 200,
        child: Stack(children: [
          Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset("image/Artboard 1.png",
                  width: 400, fit: BoxFit.fitWidth)),
          Positioned(
              top: 0,
              left: 0,
              child: Image.asset("image/Artboard 2.png",
                  width: 400, fit: BoxFit.fitWidth)),
          const Positioned(
              left: 30,
              top: 20,
              child: SizedBox(
                  height: 100,
                  width: 240,
                  child: Text("Invite a Friend and earn Plantify rewards",
                      style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.w700)))),
          const Positioned(
              left: 30,
              top: 120,
              child: SizedBox(
                  height: 50,
                  width: 150,
                  child: Text("Redeem them to get instant discounts",
                      style: TextStyle(
                          color: Color.fromRGBO(13, 152, 106, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w600)))),
          Positioned(
            right: 75,
            top: 120,
            child: Container(decoration: BoxDecoration(color: Colors.green.shade600,borderRadius: const BorderRadius.all(Radius.circular(5))),
                height: 35,
                width: 70,
                child: TextButton(
                  child: const Text("Invite",
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w600)),
                  onPressed: () {},
                )),
          )
        ]));
  }
}
