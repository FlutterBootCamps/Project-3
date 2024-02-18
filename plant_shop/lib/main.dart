import 'package:flutter/material.dart';
import 'package:plant_shop/database/get_it.dart';

import 'component/favorite_button.dart';
import 'component/navigation_bottom_bar.dart';
import 'screen/favoriton_page.dart';
import 'screen/home_page.dart';
import 'helper/setup.dart';

void main() async {
   setup();
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
   MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: NavigationBarApp(),
      ),
    );
  }
}


