import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:project_2/model/plant_model.dart';

class ProductHeaderWidget extends StatefulWidget {
  final Plant plant;

  const ProductHeaderWidget({Key? key, required this.plant}) : super(key: key);

  @override
  State<ProductHeaderWidget> createState() => _ProductHeaderWidgetState();
}

class _ProductHeaderWidgetState extends State<ProductHeaderWidget> {
  late bool isLoading;

  @override
  void initState() {
    super.initState();
    isLoading = true;

    // Simulate a delay before showing the actual data
    Future.delayed(Duration(seconds: 3), () {
      if (mounted) {
        setState(() {
          isLoading = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2.5,
          decoration: const BoxDecoration(
            color: Color(0xff9CE5CB),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35),
            ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: -70,
          child: isLoading
              ? Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    height: 350,
                    width: 280,
                    color: Colors.white,
                  ),
                )
              : Image.asset(
                  widget.plant.image,
                  height: 350,
                  width: 280,
                ),
        ),
         Positioned(
          left: 30,
          top: 10,
          child: isLoading
              ? Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Text(
                    "Air Purifier",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Color(0xff002140),
                    ),
                  ),
                )
              : Text(
                  "Air Purifier",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Color(0xff002140),
                  ),
                ),
        ),
        Positioned(
          left: 30,
          top: 30,
          child: isLoading
              ? Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Text(
                    widget.plant.name,
                    style: const TextStyle(
                      fontSize: 32,
                      fontFamily: 'Philosopher',
                      color: Color(0xff002140),
                    ),
                  ),
                )
              : Text(
                  widget.plant.name,
                  style: const TextStyle(
                    fontSize: 32,
                    fontFamily: 'Philosopher',
                    color: Color(0xff002140),
                  ),
                ),
        ),
        Positioned(
          left: 110,
          top: 10,
          child: isLoading
              ? Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Image.asset(
                    'images/Group 66.png',
                    width: 28,
                    height: 24,
                  ),
                )
              : Image.asset(
                  'images/Group 66.png',
                  width: 28,
                  height: 24,
                ),
        ),
        Positioned(
          right: 30,
          top: 10,
          child: isLoading
              ? Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    width: 72,
                    height: 26,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                )
              : Container(
                  width: 72,
                  height: 26,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('images/Star 1.png'),
                      Text(
                        '${widget.plant.rating}',
                        style: TextStyle(color: Color(0xff0D986A)),
                      ),
                    ],
                  ),
                ),
        ),
         Positioned(
          left: 30,
          top: 120,
          child: isLoading
              ? Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Text(
                    '"PRICE"',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      color: Color(0xff002140),
                    ),
                  ),
                )
              : Text(
                  '"PRICE"',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    color: Color(0xff002140),
                  ),
                ),
        ),
        Positioned(
          left: 30,
          top: 140,
          child: isLoading
              ? Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Text(
                    '\$${widget.plant.price}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Color(0xff002140),
                    ),
                  ),
                )
              : Text(
                  '\$${widget.plant.price}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Color(0xff002140),
                  ),
                ),
        ),
         Positioned(
          left: 30,
          top: 180,
          child: isLoading
              ? Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Text(
                    "SIZE",
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      color: Color(0xff002140),
                    ),
                  ),
                )
              : Text(
                  "SIZE",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    color: Color(0xff002140),
                  ),
                ),
        ),
        Positioned(
          left: 30,
          top: 200,
          child: isLoading
              ? Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Text(
                    '${widget.plant.size}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Color(0xff002140),
                    ),
                  ),
                )
              : Text(
                  '${widget.plant.size}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Color(0xff002140),
                  ),
                ),
        ),
        Positioned(
          left: 40,
          bottom: -10,
          child: isLoading
              ? Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Image.asset("images/Cart.png"),
                )
              : Image.asset("images/Cart.png"),
        ),
        Positioned(
          left: 120,
          bottom: -10,
          child: isLoading
              ? Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 253, 251, 251),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                )
              : Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 253, 251, 251),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite),
                    ),
                  ),
                ),
        ),
      ],
    );
  }
}
