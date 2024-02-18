import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:AppBar(
                title: Row(
                  children: [
                    Container(
                      height: 28,
                      width: 172,
                      child: Image.asset("image/Logoimg_plantify.png"),
                    ),
                   Spacer(),
                    const Icon(
                      Icons.menu,
                      size: 25,
                    )
                  ],
                ),
              ),

    );
    
    
  }
  
}