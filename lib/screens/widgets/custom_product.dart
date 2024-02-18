import 'package:flutter/material.dart';
import 'package:project3/screens/favorite_screen.dart';
import 'package:project3/screens/widgets/product_details.dart';

class Product extends StatefulWidget {
  final Color color;
  final String imagePath;
  final String name1;
  final String name2;
  final String price;

  Product({
    Key? key,
    required this.color,
    required this.imagePath,
    required this.name1,
    required this.name2,
    required this.price,
  }) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailsPage(
              color: widget.color,
              imagePath: widget.imagePath,
              name1: widget.name1,
              name2: widget.name2,
              price: widget.price,
              size: '',
              type: '',
              description: '',
            ),
          ),
        );
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 300,
            height: 170,
            decoration: BoxDecoration(
              color: widget.color ?? Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Positioned(
            left: 220,
            bottom: 20,
            child: Image.asset(
              widget.imagePath ?? "",
              width: 150,
              height: 170,
            ),
          ),
          Positioned(
            left: 22,
            top: 30,
            child: Text(
              widget.name1 ?? "Air Purifier",
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
              widget.name2 ?? "",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                fontFamily: 'Philosopher',
                color: Color(0xff002140),
              ),
            ),
          ),
          Positioned(
            left: 25,
            bottom: 32,
            child: Text(
              widget.price ?? "",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                fontFamily: 'Philosopher',
                color: Color(0xff002140),
              ),
            ),
          ),
          Positioned(
            left: 110,
            bottom: 25,
            child: IconButton(
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? Colors.black : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => FavoriteScreen(isFavorite: isFavorite),
                //   ),
                // );
              },
            ),
          ),
        ],
      ),
    );
  }
}


