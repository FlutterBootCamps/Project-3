import 'package:flutter/material.dart';
import 'package:project_3_saad_alharbi/screen/cart_screen.dart';
import 'package:project_3_saad_alharbi/screen/favorite_screen.dart';
import 'package:project_3_saad_alharbi/screen/home_screen.dart';
import 'package:project_3_saad_alharbi/screen/profile_screen.dart';

class ButtomNavBar extends StatefulWidget {
  const ButtomNavBar({Key? key}) : super(key: key);

  @override
  State<ButtomNavBar> createState() => _ButtomNavBarState();
}

class _ButtomNavBarState extends State<ButtomNavBar> {
  int selectedIndex = 0;
  List<Widget> pages = const [
    HomeScreen(),
    FavoriteScreen(),
    CartScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: const Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            iconSize: 30,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            currentIndex: selectedIndex,
            backgroundColor: Colors.white,
            selectedItemColor: const Color(0xff002140), // Selected icon color
            unselectedItemColor: const Color(0xff002140), // Unselected icon color
            items: [
              BottomNavigationBarItem(
                icon: selectedIndex == 0
                    ? _buildIconWithBorder(Icons.home)
                    : const Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: selectedIndex == 1
                    ? _buildIconWithBorder(Icons.favorite_outline)
                    : const Icon(Icons.favorite_outline),
                label: 'Favorite',
              ),
              BottomNavigationBarItem(
                icon: selectedIndex == 2
                    ? _buildIconWithBorder(Icons.shopping_bag_outlined)
                    : const Icon(Icons.shopping_bag_outlined),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: selectedIndex == 3
                    ? _buildIconWithBorder(Icons.person_outlined)
                    : const Icon(Icons.person_outlined),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIconWithBorder(IconData icon) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.yellow,
      ),
      child: Icon(icon),
    );
  }
}
