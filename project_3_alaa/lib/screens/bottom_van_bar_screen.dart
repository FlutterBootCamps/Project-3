import 'package:flutter/material.dart';
import 'package:project_3_alaa/screens/cart_screen.dart';
import 'package:project_3_alaa/screens/favorite_screen.dart';
import 'package:project_3_alaa/screens/home_screen.dart';
import 'package:project_3_alaa/screens/profile_screen.dart';

class BottomNavBarScreenState extends StatefulWidget {
  const BottomNavBarScreenState({super.key});

  @override
  State<BottomNavBarScreenState> createState() =>
      _BottomNavBarScreenStateState();
}

class _BottomNavBarScreenStateState extends State<BottomNavBarScreenState> {
  int currentScreen = 0;

  // to switch between screen by bottom nav Bar
  List<Widget> screen = [       
    HomeScreen(),
    const FavoriteScreen(),
    const CartScreen(),
    const ProfileScreen(),
 ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentScreen],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.7),
                blurRadius: 75,
                spreadRadius: 3,
                offset: const Offset(0, 4)),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: const Color(0xff002140),
            unselectedItemColor: const Color(0xff002140),
            items: [
              BottomNavigationBarItem(
                icon: Image.asset("asset/home_icon.png"),
                label: "Home",
                activeIcon: Container(
                  decoration: const BoxDecoration(
                      color: Color(0xffFEF26B), shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Image.asset("asset/home_icon.png"),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.favorite_border_sharp),
                label: "Favorite",
                activeIcon: Container(
                  decoration: const BoxDecoration(
                      color: Color(0xffFEF26B), shape: BoxShape.circle),
                  child: const Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(Icons.favorite_border_sharp)),
                ),
              ),
              BottomNavigationBarItem(
                icon: Image.asset("asset/cart_icon.png"),
                label: "Cart",
                activeIcon: Container(
                  decoration: const BoxDecoration(
                      color: Color(0xffFEF26B), shape: BoxShape.circle),
                  child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset("asset/cart_icon.png")),
                ),
              ),
              BottomNavigationBarItem(
                icon: Image.asset("asset/profile_icon.png"),
                label: "Profile",
                activeIcon: Container(
                  decoration: const BoxDecoration(
                      color: Color(0xffFEF26B), shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Image.asset("asset/profile_icon.png"),
                  ),
                ),
              ),
            ],
            currentIndex: currentScreen,
            onTap: (int index) {
              currentScreen = index;
              setState(() {});
            },
          ),
        ),
      ),
    );
  }
}
