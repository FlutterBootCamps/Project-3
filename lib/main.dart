import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:project_3/data_layer/home_datalayer.dart';
import 'package:project_3/screen/bottom-nav_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
SharedPreferences? prefs;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
  setUp();
  GetIt.I.get<HomeData>().getPlants();
  runApp(const MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavScreen(),
    );
  }
}