import 'package:flutter/material.dart';

ThemeData buildLightTheme() {
  return ThemeData.light().copyWith(
    primaryColor: Colors.grey,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

ThemeData buildDarkTheme() {
  return ThemeData.dark().copyWith(
    primaryColor: Colors.grey,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
