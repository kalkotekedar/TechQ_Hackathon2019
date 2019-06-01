import 'package:flutter/material.dart';
import 'package:techq_hackthon2019/screens/first_page.dart';
import 'package:techq_hackthon2019/screens/home_page.dart';
import 'package:techq_hackthon2019/util/color.dart';
import 'package:techq_hackthon2019/util/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: PrimaryColor,
        primaryColorDark: DarkPrimaryColor,
        accentColor: AccentColor,
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder>{},
    );
  }
}
