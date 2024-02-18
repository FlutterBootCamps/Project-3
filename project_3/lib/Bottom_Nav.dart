import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_2/Screen/favorite.dart';
import 'package:project_2/Screen/home_page.dart';
import 'package:project_2/Screen/profile.dart';
import 'package:project_2/model/plant_model.dart';

class HomeWrapper extends StatefulWidget {
  @override
  _HomeWrapperState createState() => _HomeWrapperState();
}

class _HomeWrapperState extends State<HomeWrapper> {
  int currentIndex = 0;

  // Initialize an empty set of favorite plants
  Set<Plant> favoritePlants = {};

  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();

    // Initialize _pages after initState to have access to favoritePlants
    _pages = [
      HomePage(favoritePlants: favoritePlants),
      FavoriteScreen(favoritePlants: favoritePlants),
      const MyProfile()
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
            bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber,
        // Set the type of BottomNavigationBar
        type: BottomNavigationBarType.fixed,
        // Set the background color of the BottomNavigationBar
        backgroundColor: Color(0xffE5E5E5),
        // Set the color of unselected items
        unselectedItemColor: Color(0xffb1b1b1),
        // Define the onTap callback to update the currentIndex
        onTap: (index) => setState(() => currentIndex = index),
        // Set the current index to highlight the active tab
        currentIndex: currentIndex,
        // Define the BottomNavigationBar items
        items: [
          BottomNavigationBarItem(
            // Define the active and inactive icons for the first tab
            activeIcon: SvgPicture.asset('icons/Group 58.svg'),
            icon: SvgPicture.asset('icons/Group 58.svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            // Define the active and inactive icons for the second tab
            activeIcon: SvgPicture.asset('icons/Vector 1.svg'),
            icon: SvgPicture.asset('icons/Vector 1.svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            // Define the active and inactive icons for the third tab
            activeIcon: SvgPicture.asset('icons/Group 143.svg'),
            icon: SvgPicture.asset('icons/Group 143.svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            // Define the active and inactive icons for the fourth tab
            activeIcon: SvgPicture.asset('icons/Union.svg'),
            icon: SvgPicture.asset('icons/Union.svg'),
            label: '',
          ),
        ],
      ),
    );
  }
}