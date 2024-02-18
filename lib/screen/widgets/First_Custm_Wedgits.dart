import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstCustmWedgits extends StatelessWidget {
  const FirstCustmWedgits({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 199,
      width: 337,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25), // Rounded corners for the container
      ),
      margin: EdgeInsets.all(0),
      child: Stack(
        children: [
          // Background image
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image(
              image: AssetImage('assets/image 19.png'),
              fit: BoxFit.cover,
            ),
          ),

         
          Positioned(
            top: 45,
            left: 20,
            child: Container(
              height: 60,
              width: 180,
              child: Text(
                'There’s a Plan for everyone',
                style: GoogleFonts.philosopher(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff002140), 
                ),
              ),
            ),
          ),

          // Discount offer text
          Positioned(
            bottom: 40,
            left: 20,
            child: Container(
              height: 40,
              width: 130,
              child: Text(
                'Get your 1st plant @ 40% off',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff002140), 
                ),
              ),
            ),
          ),

          // Divider line
          Positioned(
            bottom: 35,
            left: 38,
            child: Container(
              height: 3,
              width: 50,
              color: Color(0xff0D986A), // Divider color
            ),
          ),
        ],
      ),
    );
  }
}