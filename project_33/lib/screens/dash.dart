import 'package:flutter/material.dart';
import 'package:project_2/screens/favorite_screen.dart';
import 'package:project_2/screens/home.dart';
import 'package:project_2/screens/cart.dart';
import 'package:project_2/screens/profile.dart';
import 'package:badges/badges.dart' as badges;

class Dash extends StatefulWidget {
  @override
  _DashState createState() => _DashState();
}
  //----- dash board for appbar and bottom navigation bar


class _DashState extends State<Dash> { 
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    Home(),
    FavoriteScreen( ),   
    cart(),
    profile(),
    
    
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(


     appBar: AppBar(
  title: Row(
    children: [
      Container( width: 150, height: 100, child: Image.asset( 'images/logo.png',  fit: BoxFit.contain, ),),
      Spacer(), 
      Icon(Icons.notifications_none_outlined), 
      SizedBox(width: 16), 
      Icon(Icons.menu), 
       ],
      ),
    ),


      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: "",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        unselectedItemColor:Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
