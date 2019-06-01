import 'package:flutter/material.dart';
import 'package:techq_hackthon2019/screens/first_page.dart';
import 'package:techq_hackthon2019/util/constants.dart';
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
      body: FirstPage(),
    );
  }

  buildListItem(String title){
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
              Container(
                alignment: Alignment.center,
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey
                ),
                child: Text('2',style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),),),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(right: 10, left: 10) ,
                  child: Column(
                    children: <Widget>[
                      Text(title, style: TextStyle(
                          color: Colors.black,
                          fontSize: 20
                      ),),
                    Row(children: <Widget>[
                      Padding(padding: EdgeInsets.all(10.0),
            
                      child : Container(
                    alignment: Alignment.center,
                    width: 80.0,
                    height: 30.0,
                    color: Colors.transparent,
                    child: new Container(
                      margin: EdgeInsets.only(left: 5.0, right: 5.0),
                      decoration: new BoxDecoration(
                      color: Colors.purpleAccent,
                      borderRadius: new BorderRadius.all(
                        const Radius.circular(10.0)),
                          ),
                    child: new Center(
                      child: new Text("Python"),
                    )),
                )),
                Container(
                    alignment: Alignment.center,
                    width: 80.0,
                    height: 30.0,
                    color: Colors.transparent,
                    child: new Container(
                        decoration: new BoxDecoration(
                      color: Colors.purpleAccent,
                      borderRadius: new BorderRadius.all(
                        const Radius.circular(10.0)),
                          ),
                    child: new Center(
                      child: new Text("Python"),
                    )),
                ),
            
                    ],)
                    ],
                  ),
                ),
                Expanded(
                  child : Container(
                alignment: Alignment.center,
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.deepOrange
                ),
                child: Text('2',style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),),)),
          ],
        ),
    )
    );
  }

  final europeanCountries = ['Albania', 'Andorra', 'Armenia', 'Austria', 
        'Azerbaijan', 'Belarus', 'Belgium', 'Bosnia and Herzegovina', 'Bulgaria',
        'Croatia', 'Cyprus', 'Czech Republic', 'Denmark', 'Estonia', 'Finland',
        'France', 'Georgia', 'Germany', 'Greece', 'Hungary', 'Iceland', 'Ireland',
        'Italy', 'Kazakhstan', 'Kosovo', 'Latvia', 'Liechtenstein', 'Lithuania',
        'Luxembourg', 'Macedonia', 'Malta', 'Moldova', 'Monaco', 'Montenegro',
        'Netherlands', 'Norway', 'Poland', 'Portugal', 'Romania', 'Russia',
        'San Marino', 'Serbia', 'Slovakia', 'Slovenia', 'Spain', 'Sweden', 
        'Switzerland', 'Turkey', 'Ukraine', 'United Kingdom', 'Vatican City'];

}

