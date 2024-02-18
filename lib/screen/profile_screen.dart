import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
        body: Container(
          margin: EdgeInsets.all(30),
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
              Text('Haya Mohammed',style: TextStyle( fontSize: 32,fontWeight: FontWeight.bold,color: Color(0xff0D986A),),),
            Text('Haya@email.com',style: TextStyle( fontSize: 12,fontWeight: FontWeight.bold,color: Color(0xff203901)),)],
          ),
        ),
    );
  }
}