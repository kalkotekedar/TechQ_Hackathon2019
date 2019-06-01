import 'package:flutter/material.dart';
import 'package:techq_hackthon2019/util/constants.dart';
import 'package:techq_hackthon2019/util/style.dart';
import 'package:techq_hackthon2019/widgets/app_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(T_app_name),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(T_app_name),
              accountEmail: Text(T_app_name),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  T_app_name,
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Home",
              ),
              leading: Icon(Icons.home),
            ),
          ],
        ),
      ),
      body: Container(),
    );
  }
}
