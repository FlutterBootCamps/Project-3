import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerCustmWidgets extends StatelessWidget {
  const ContainerCustmWidgets({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.containerColor,
    this.onTapCard,
  });

  // Properties of the custom container widget
  final String imagePath;
  final String title;
  final String subtitle;
  final int price;
  final Color containerColor;
  final Function()? onTapCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 200,
      child: Stack(
        children: [
          // Background container
          Center(
            child: Container(
              height: 174,
              width: 277,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: containerColor, // Background color
              ),
            ),
          ),

          // Subtitle 
          Positioned(
            top: 35,
            left: 80,
            child: Text(
              subtitle,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color(0xff002140), // Subtitle text color
              ),
            ),
          ),

          // Favorite icon
          Positioned(
            top: 20,
            left: 160,
            child: InkWell(
              onTap: onTapCard,
              child: IconButton(
                onPressed: () {},
                icon: Image(
                  image: AssetImage('assets/Group 68.png'),
                ),
              ),
            ),
          ),

          // Title 
          Positioned(
            top: 55,
            left: 80,
            child: Text(
              title,
              style: GoogleFonts.philosopher(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: Color(0xff002140), // Title text color
              ),
            ),
          ),

          // Price 
          Positioned(
            bottom: 40,
            left: 90,
            child: Text(
              '\$$price ',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xff002140), // Price text color
              ),
            ),
          ),

          // Favorite button
          Positioned(
            bottom: 40,
            left: 160,
            child: FavoriteButton(
              isFavorite: true,
              iconColor: Color(0xff002140), // Favorite icon color
              iconSize: 50,
              valueChanged: (_isFavorite) {
                print('Is Favorite : $_isFavorite');
              },
            ),
          ),

          //  icons
          Positioned(
            bottom: 20,
            left: 200,
            child: IconButton(
              onPressed: () {},
              icon: Image(
                image: AssetImage('assets/Group 60.png'),
              ),
            ),
          ),

          // Plant image
          Positioned(
            bottom: 10,
            left: 250,
            child: IconButton(
              onPressed: () {},
              icon: Image(
                height: 200,
                width: 150,
                image: AssetImage(imagePath),
              ),
            ),
          ),
        ],
      ),
    );
  }
}