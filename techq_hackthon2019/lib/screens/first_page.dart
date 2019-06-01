import 'package:flutter/material.dart';
import 'package:techq_hackthon2019/bloc/question_block.dart';
import 'package:techq_hackthon2019/models/question.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  Widget quesCardView(Questions q) {
    return Card(
      child: Row(
        children: <Widget>[
          Text(q.id.toString())],
      ),
    );
  }

  Widget buildList(AsyncSnapshot<List<Questions>> snapshot) {
    return ListView.builder(
        itemCount: snapshot.data.length,
        itemBuilder: (BuildContext context, int index) {
          return buildListItem(snapshot.data[index]);
        });
  }

  @override
  Widget build(BuildContext context) {
    quesBloc.fetchQuestions(context);
    return Scaffold(
      body: StreamBuilder(
        stream: quesBloc.allQuestions,
        builder: (context, AsyncSnapshot<List<Questions>> snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data.length == 0)
              return Center(child: Text('No Questions found'));
            else
              return buildList(snapshot);
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

buildListItem(Questions question){
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
              Expanded (
                child : Container(
                alignment: Alignment.center,
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey
                ),
                child: Text('${question.viewCount}',style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),),)),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(right: 20, left: 20) ,
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 200.0,
                        child : Text(question.title, maxLines: 3, style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                      ),)),
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
                      child: new Text('python'),
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
                child: Text('${question.viewCount} views', maxLines: 3, style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                ),),)),
          ],
        ),
    )
    );
  }
