import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:plantify/data%20layer/home_data.dart';
import 'package:plantify/helpers/extensions/screen_helper.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: context.getWidth(context),
        height: 60,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                  blurRadius: 4, color: Colors.black26, offset: Offset(0, 0))
            ]),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
              onTap: (value) {
                currentIndex = value;
                setState(() {});
              },
              selectedFontSize: 11,
              type: BottomNavigationBarType.fixed,
              showUnselectedLabels: false,
              showSelectedLabels: false,
              enableFeedback: false,
              currentIndex: currentIndex,
              items: [
                BottomNavigationBarItem(
                    activeIcon: Image.asset("assets/icons/home_selected.png"),
                    label: "",
                    icon: Image.asset("assets/icons/home.png")),
                BottomNavigationBarItem(
                    activeIcon: Image.asset("assets/icons/heart_selected.png"),
                    label: "",
                    icon: Image.asset("assets/icons/heart_empty.png")),
                BottomNavigationBarItem(
                    activeIcon: Image.asset("assets/icons/basket_selected.png"),
                    label: "",
                    icon: Image.asset("assets/icons/basket.png")),
                BottomNavigationBarItem(
                    activeIcon: Image.asset("assets/icons/person_selected.png"),
                    label: "",
                    icon: Image.asset("assets/icons/person.png")),
              ]),
        ),
      ),
      body: GetIt.I.get<HomeData>().screens[currentIndex],
    );
  }
}
