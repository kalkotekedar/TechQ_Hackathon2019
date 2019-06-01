import 'package:flutter/material.dart';
import 'package:techq_hackthon2019/widgets/app_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Tech Q'),
      body: Container(),
    );
  }
}
