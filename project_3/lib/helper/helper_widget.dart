import 'package:flutter/material.dart';

extension ScreenHelper on BuildContext {
  WBox() {
    return const SizedBox(
      width: 20,
    );
  }

  HBox() {
    return const SizedBox(
      height: 20,
    );
  }
}
