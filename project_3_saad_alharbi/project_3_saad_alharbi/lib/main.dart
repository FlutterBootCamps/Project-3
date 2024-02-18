import 'package:flutter/material.dart';
import 'package:project_3_saad_alharbi/components/buttom_nav_bar.dart';
import 'package:project_3_saad_alharbi/utils/setup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ButtomNavBar(),
    );
  }
}
