import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar:  AppBar(
        
         leading:
         Image(image: AssetImage('assets/Group 46.png'),), 
         title: Text('PLANTIFY',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, ), ),
         actions: [
          
          Padding(padding: EdgeInsets.zero),
          
             IconButton(onPressed: (){}, icon: Image(image: AssetImage('assets/Menu.png'),),),
         SizedBox(
              width: 15,
            ),],
        ),
    );
  }
}