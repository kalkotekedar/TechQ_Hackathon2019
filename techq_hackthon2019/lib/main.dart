import 'package:flutter/material.dart';
import 'package:techq_hackthon2019/util/color.dart';
import 'package:techq_hackthon2019/util/constants.dart';
import 'package:techq_hackthon2019/widgets/home_page.dart';

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
        buttonColor: TextIcon,
        accentColor: AccentColor,
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        P_HomeScreen: (BuildContext context) =>
            HomePage(), // P_SelectExercises: (BuildContext context) => SelectExercises(),
      },
    );
  }
}
