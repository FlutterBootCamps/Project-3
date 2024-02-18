import 'package:flutter/material.dart';


extension Screen on BuildContext {
  // Method to get the width of the screen
  getWidth() {
    return MediaQuery.of(this).size.width;
  }

  // Method to get the height of the screen
  getHeight() {
    return MediaQuery.of(this).size.height;
  }

  // Method to push a new route to the navigator stack
  pushTo({required Widget view}) {
    return Navigator.of(this)
        .push(MaterialPageRoute(builder: (context) => view));
  }
}