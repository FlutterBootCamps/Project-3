import 'package:flutter/material.dart';
import 'package:project_3_alaa/screens/bottom_van_bar_screen.dart';
import 'package:project_3_alaa/utils/setup.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized;
  await setup();
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(     
     debugShowCheckedModeBanner: false, 
      home: BottomNavBarScreenState(),
    );
  }
}
