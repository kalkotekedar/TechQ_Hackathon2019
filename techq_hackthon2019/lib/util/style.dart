import 'package:flutter/material.dart';

const double AppFont = 16.0;

TextStyle appTextStyle([Color color = Colors.white]) {
  return TextStyle(color: color, fontSize: AppFont);
}

IconThemeData iconTheme(Color color) {
  return IconThemeData(
    color: color,
  );
}
