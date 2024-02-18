import 'package:flutter/material.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({
    Key? key,
    this.onTapClick,
    required this.color,
    required this.image,
    this.name,
    this.price,
    this.isFavorite = false,
    this.onFavoriteChanged,
  }) : super(key: key);

  final String image;
  final String? name;
  final double? price;
  final Function()? onTapClick;
  final int color;
  final bool isFavorite;
  final Function(bool isFavorite)? onFavoriteChanged;

 
  static List<Color> ListOfColor = [
    Color(0xffB0EAD5),
    Color(0xffFFF3CC),
    Color(0xffABE8D3),
    Color(0xffC1E8A4),
    Color(0xffE5F0A1),
    Color(0xffF5EDA8),
  ];

  @override
  _ProductWidgetState createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: widget.onTapClick,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 300,
              height: 170,
              decoration: BoxDecoration(
                color: ProductWidget.ListOfColor[widget.color % ProductWidget.ListOfColor.length],
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 20,
              child: Image.asset(
                widget.image,
                width: 150,
                height: 170,
              ),
            ),
            Positioned(
              left: 20,
              top: 30,
              child: Text(
                widget.name ?? "Air Purifier",
                style: TextStyle(
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
              child: Image.asset("images/Group 66.png"),
            ),
            Positioned(
              left: 20,
              top: 45,
              child: Text(
                widget.name ?? "",
                style: const TextStyle(
                  fontSize: 32,
                  fontFamily: 'Philosopher',
                  color: Color(0xff002140),
                ),
              ),
            ),
            Positioned(
              left: 20,
              bottom: 20,
              child: Text(
                '\$${widget.price}',
                style: const TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: Color(0xff002140),
                ),
              ),
            ),
            Positioned(
              right: 160,
              bottom: 10,
              child: Image.asset("images/Cart.png"),
            ),
            Positioned(
              left: 110,
              bottom: 10,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    widget.onFavoriteChanged?.call(!widget.isFavorite);

                    

                  });
                },
                icon: Icon(
                  Icons.favorite,
                  color: widget.isFavorite ? Colors.red : null,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
