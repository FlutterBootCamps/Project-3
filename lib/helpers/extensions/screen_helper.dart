import 'package:flutter/material.dart';

extension Screen on BuildContext{
  double getWidth(BuildContext context){
    return MediaQuery.of(context).size.width;
  }

  double getHeight(BuildContext context){
    return MediaQuery.of(context).size.height;
  }
}