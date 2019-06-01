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
        children: <Widget>[Text(q.id.toString())],
      ),
    );
  }

  Widget buildList(AsyncSnapshot<List<Questions>> snapshot) {
    return ListView.builder(
        itemCount: snapshot.data.length,
        itemBuilder: (BuildContext context, int index) {
          return quesCardView(snapshot.data[index]);
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
