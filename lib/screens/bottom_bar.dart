


import 'package:flutter/material.dart';
import 'package:project3_plants_maram/screens/cart_screen.dart';
import 'package:project3_plants_maram/screens/favorite_screen.dart';
import 'package:project3_plants_maram/screens/home_screen.dart';
import 'package:project3_plants_maram/screens/profile_screen.dart';


class BottomNavBar  extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  //current index is HomeScreen, it is first page
  int _currentIndex = 0;

  //pages for each BottomNavigationBarItem
  final List<Widget> _pages = [
    const HomeScreen(),
    const FavoriteScreen(),
    const CartScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      //here the page in the current index
      body: _pages[_currentIndex],

      bottomNavigationBar: Container(

        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          //background image for bar
          backgroundColor: const Color(0xFFE5E5E5),
          //the color for unselected item
          unselectedItemColor: Colors.grey,

          selectedItemColor: const Color(0xFFAB70DF),
          //disable show label
          showSelectedLabels: false,
          showUnselectedLabels: false,
          //when we need to change the page from bar
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          // all items in bar
          items:  [
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/home.png'),
              activeIcon:Container(
                padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Color(0xffFEE909),
                    shape: BoxShape.circle
                      
                  ),
                  child: Image.asset('assets/images/home.png')),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/fav.png'),
              activeIcon:Container( padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: Color(0xffFEE909),
                      shape: BoxShape.circle

                  ),child: Image.asset('assets/images/fav.png')),
              label: '',
            ),
            BottomNavigationBarItem(
              icon:Image.asset('assets/images/cartt.png'),
              activeIcon:Container( padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: Color(0xffFEE909),
                      shape: BoxShape.circle

                  )
                  ,child: Image.asset('assets/images/cartt.png')),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/person.png'),
              activeIcon:Container(
                padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: Color(0xffFEE909),
                      shape: BoxShape.circle ),
                      child: Image.asset('assets/images/person.png')),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
