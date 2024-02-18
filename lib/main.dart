import 'package:flutter/material.dart';
import 'package:project3_plants_maram/screens/bottom_bar.dart';
import 'package:project3_plants_maram/screens/cart_screen.dart';
import 'package:project3_plants_maram/screens/favorite_screen.dart';
import 'package:project3_plants_maram/screens/home_screen.dart';
import 'package:project3_plants_maram/screens/plant_screen.dart';
import 'package:project3_plants_maram/screens/profile_screen.dart';
import 'package:project3_plants_maram/utills/setup.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setup();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: BottomNavBar());
  }
}
