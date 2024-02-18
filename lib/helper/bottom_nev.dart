
import 'package:flutter/material.dart';
import 'package:project3/screens/cart_screen.dart';
import 'package:project3/screens/favorite_screen.dart';
import 'package:project3/screens/home_screen.dart';
import 'package:project3/screens/profile_screen.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    FavoriteScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar:BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,color: Colors.black,),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border,color: Colors.black,),
                        label: "",

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined,color: Colors.black,),
                        label: "",

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline,color: Colors.black,),
                        label: "",

          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}