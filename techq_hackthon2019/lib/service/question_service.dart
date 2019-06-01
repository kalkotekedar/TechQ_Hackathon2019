import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:techq_hackthon2019/models/question.dart';
import 'package:flutter/material.dart';

class QuestionService {
  static const String quesUrl =
      "https://api.stackexchange.com/2.2/questions?page=1&pagesize=10&order=desc&sort=activity&site=stackoverflow";

  Future<List<Questions>> getQuestions(BuildContext context) =>
      // http.get(quesUrl).then((filedata) {

      DefaultAssetBundle.of(context)
          .loadString("assets/data.json")
          .then((filedata) {
        if (filedata != null) {
          final jsonResponse = json.decode(filedata);
          QuestionData questions = QuestionData.fromJson(jsonResponse);
          return questions.questions;
        } else
          throw Exception('Failed to load Questions');
      }).catchError((onError) {
        throw Exception('Failed to load Questions');
      });

  // http.get(quesUrl).then((filedata) {
  //   if (filedata != null && filedata.statusCode == 200) {
  //     final jsonResponse = json.decode(filedata.body);
  //     QuestionData questions = QuestionData.fromJson(jsonResponse);
  //     return questions.questions;
  //   } else
  //     throw Exception('Failed to load Questions');
  // }).catchError((onError) {
  //   throw Exception('Failed to load Questions');
  // });
}
