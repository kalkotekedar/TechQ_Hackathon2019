import 'package:flutter/material.dart';
import 'package:techq_hackthon2019/util/constants.dart';
import 'package:techq_hackthon2019/widgets/app_bar.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(T_app_name),
      body: Container(
      )
    );
  }


      

}
