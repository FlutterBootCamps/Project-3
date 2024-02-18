import 'package:flutter/material.dart';
import 'package:project_2/model/favorite.dart';
import 'package:project_2/screens/home.dart';
import 'package:get_it/get_it.dart';
import 'package:project_2/screens/login_screen.dart';


void main() {
  runApp(const MyApp());GetIt.I.registerSingleton<FavoriteService>(FavoriteService());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen
      (),
      
    );
  }
}
