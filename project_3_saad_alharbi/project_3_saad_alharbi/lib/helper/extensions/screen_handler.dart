import 'package:flutter/material.dart';

extension Screen on BuildContext {
  getWidth() {
    return MediaQuery.of(this).size.width;
  }

  getHeight() {
    return MediaQuery.of(this).size.height;
  }

  pushTo({required Widget view, Function(dynamic)? then}) {
    return Navigator.of(this)
        .push(MaterialPageRoute(builder: (context) => view)).then(then ?? (value)=> {});
  }
}
