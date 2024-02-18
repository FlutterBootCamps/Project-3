import 'package:flutter/material.dart';
import 'package:project_3/screen/Favorite_screen.dart';
import 'package:project_3/screen/cart_screen.dart';
import 'package:project_3/screen/home_screen.dart';
import 'package:project_3/screen/profile_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectIndex = 0;
  List screen = [
    HomeScreen(),
    FavoriteScreen(),
    CartScreen(),
    ProfileScreen(),
   // Placeholder for future screen
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectIndex], // Display the selected screen
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              spreadRadius: 0,
              blurRadius: 10,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            onTap: (index) {
              // Update the selected index when a tab is tapped
              selectIndex = index;
              setState(() {});
            },
            currentIndex: selectIndex, // Highlight the current tab
            items: [
              // Define the tabs with icons
              BottomNavigationBarItem(
                icon: Image(image: AssetImage('assets/Group 58.png',)),
                label: "", 
              ),
              BottomNavigationBarItem(
                icon: Image(image: AssetImage('assets/Vector2 1.png',)),
                label: "", 
              ),
              BottomNavigationBarItem(
                icon: Image(image: AssetImage('assets/Group 57.png',)),
                label: "", 
              ),
              BottomNavigationBarItem(
                icon: Image(image: AssetImage('assets/Group 143.png',)),
                label: "",
              ),
            ],
          ),
        ),
      ),
    );
  }
}