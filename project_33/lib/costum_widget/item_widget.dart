import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      //-----coustom widget for the home screen first 
      padding: EdgeInsets.all(6),
      child: Container( width: 400, height: 250,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset( 'images/FullImage.png',fit: BoxFit.cover, ), ),
           const Positioned(  top: 20,left: 20,
              child: Text('There’s a Plant\n for everyone', style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold,
                ),),),
            const Positioned(bottom: 100,left: 20,
              child: Text('Get your 1st plant \n@ 40% off',  style: TextStyle( color: Colors.black,fontSize: 12,  fontWeight: FontWeight.bold,
              
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
