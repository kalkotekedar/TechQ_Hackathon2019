import 'package:rxdart/rxdart.dart';
import 'package:flutter/material.dart';
import 'package:techq_hackthon2019/models/question.dart';
import 'package:techq_hackthon2019/service/question_service.dart';

class QuestionBlock {
  final _questionService = QuestionService();
  final _allQuestionFetcher = PublishSubject<List<Questions>>();

  Observable<List<Questions>> get allQuestions => _allQuestionFetcher.stream;

  fetchQuestions(BuildContext context) async {
    List<Questions> allQuestions =
        await _questionService.getQuestions(context).then((ques) {
      return ques;
    });
    _allQuestionFetcher.sink.add(allQuestions);
  }

  dispose() {
    _allQuestionFetcher.close();
  }
}

final quesBloc = QuestionBlock();
