import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
 
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text( 'Your Name', style: TextStyle(   fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green,
            ),
          ),
          SizedBox(height: 20), 
          Text( 'Emai@Example.com',   style: TextStyle(    fontSize: 16,  color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}