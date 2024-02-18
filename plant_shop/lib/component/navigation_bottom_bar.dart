
import 'package:flutter/material.dart';
import 'package:plant_shop/screen/cart_page.dart';

import '../screen/favoriton_page.dart';
import '../screen/home_page.dart';

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const NavigationExample(),
    );
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.yellow,
        indicatorShape: CircleBorder(eccentricity: 0.2 ,side: BorderSide(width: 1,color: Colors.transparent,style: BorderStyle.none)),
        selectedIndex: currentPageIndex,
        destinations: <Widget>[
          NavigationDestination(
            icon: Image.asset("image/Group 56.png"), // Replace with your actual image path
            label: ""
          ),
          NavigationDestination(
            icon: Image.asset("image/Vector 1.png"), // Replace with your actual image path
            label: "",
          ),
          NavigationDestination(
            icon: Image.asset("image/Group 57.png"), // Replace with your actual image path
            label: "",
          ),
          NavigationDestination(
            icon: Image.asset("image/Group 143.png"), // Replace with your actual image path
            label: "",
          ),
        ],
      ),
      //////////////////////////////////////////
      body:<Widget>[
    HomePage(),
    FavoritePage(),
    CartPage(),
    HomePage(),][currentPageIndex],
    );
  }
}
