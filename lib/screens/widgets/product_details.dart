import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  final Color color;
  final String imagePath;
  final String name1;
  final String name2;
  final String price;
  final String size;
  final String type;
  final String description;

  ProductDetailsPage({
    Key? key,
    required this.color,
    required this.imagePath,
    required this.name1,
    required this.name2,
    required this.price,
    required this.size,
    required this.type,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 500,
            decoration: BoxDecoration(
              color: color ?? Colors.white,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(80)),
            ),
          ),
          Positioned(
            left: 40,
            top: 30,
            child: Text(
              '$name1',
              style: const TextStyle(
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Color(0xff002140),
              ),
            ),
          ),
          Positioned(
            left: 120,
            top: 30,
            child: Image.asset("image/img_hand.png"),
          ),
          Positioned(
            left: 40,
            top: 45,
            child: Text(
              '$name2',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 38,
                fontFamily: 'Philosopher',
                color: Color(0xff002140),
              ),
            ),
          ),
          Positioned(
            left: 220,
            bottom: 20,
            child: Image.asset(
              imagePath,
              width: 227,
              height: 250,
            ),
          ),
          const Positioned(
            left: 50,
            top: 150,
            child: Text(
              'PRICE',
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Philosopher',
                color: Color(0xff002140),
              ),
            ),
          ),
          Positioned(
            left: 50,
            top: 170,
            child: Text(
              '$price',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                fontFamily: 'Philosopher',
                color: Color(0xff002140),
              ),
            ),
          ),
          const Positioned(
            left: 50,
            bottom: 150,
            child: Text(
              'SIZE',
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Philosopher',
                color: Color(0xff002140),
              ),
            ),
          ),
          Positioned(
            left: 50,
            bottom: 130,
            child: Text(
              '$size' "5\"h",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                fontFamily: 'Philosopher',
                color: Color(0xff002140),
              ),
            ),
          ),
          Positioned(
            left: 55,
            bottom: 0,
            child: Image.asset("image/img_bag.png"),
          ),
          Positioned(
            left: 115,
            bottom: -18,
            child: Image.asset("image/img_fav.png"),
          ),
        ],
      ),
      
     );
  }
}





/*Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 300,
            height: 170,
            decoration: BoxDecoration(
              color: color ?? Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Positioned(
            left: 220,
            bottom: 20,
            child: Image.asset(
              imagePath ?? "",
              width: 150,
              height: 170,
            ),
          ),
          Positioned(
            left: 20,
            top: 30,
            child: Text(
              name1 ?? "Air Purifier",
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Color(0xff002140),
              ),
            ),
          ),
          Positioned(
            left: 200,
            top: 30,
            child: Image.asset("image/img_hand.png"),
          ),
          Positioned(
            left: 170,
            bottom: 20,
            child: Image.asset("image/img_bag.png"),
          ),
          Positioned(
            left: 20,
            top: 45,
            child: Text(
              name2 ?? "",
              style: const TextStyle(
                fontSize: 32,
                fontFamily: 'Philosopher',
                color: Color(0xff002140),
              ),
            ),
          ),
          Positioned(
            left: 20,
            bottom: 30,
            child: Text(
              price ?? "",
              style: const TextStyle(
                fontSize: 16,
                fontFamily: 'Philosopher',
                color: Color(0xff002140),
              ),
            ),
          ),
        ],
      ), */

       /* appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            Container(
              height: 28,
              width: 172,
              child: Image.asset("image/Logoimg_plantify.png"),
            ),
            Spacer(),
            const Icon(
              Icons.search_outlined,
              size: 25,
            ),
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Icons.menu,
              size: 25,
            )
          ],
        ),
      ),*/