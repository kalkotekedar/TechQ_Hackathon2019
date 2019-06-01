import 'package:flutter/material.dart';

AppBar appBar(String appTitle) {
  return AppBar(
    title: Text(
      appTitle,
      style: TextStyle(
        color: Colors.white,
      ),
      textAlign: TextAlign.center,
    ),
  );
}
