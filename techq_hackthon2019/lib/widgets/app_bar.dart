import 'package:flutter/material.dart';
import 'package:techq_hackthon2019/util/style.dart';

AppBar appBar(String appTitle) {
  return AppBar(
    iconTheme: iconTheme(Colors.white),
    title: Text(
      appTitle,
      style: TextStyle(
        color: Colors.white,
      ),
      textAlign: TextAlign.center,
    ),
  );
}
