import 'package:flutter/material.dart';

class DarkMode extends InheritedWidget {
  bool isDark;
  final void Function() toggle;
  DarkMode({required super.child, required this.toggle, required this.isDark});

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }
}
