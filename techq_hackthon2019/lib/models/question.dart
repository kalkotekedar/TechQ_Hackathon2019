class QuestionData {
  List<Questions> questions;

  QuestionData({this.questions});

  QuestionData.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      questions = List<Questions>();
      json['items'].forEach((v) {
        questions.add(Questions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.questions != null) {
      data['questions'] = this.questions.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Questions {
  int id;
  int score;
  String title;
  int ansCount;
  int viewCount;
  String ansLink;
  bool isAnswered;
  // List<String> tags;

  Questions(
      {this.id,
      this.score,
      this.title,
      this.ansCount,
      this.viewCount,
      this.ansLink,
      this.isAnswered});

  Questions.fromJson(Map<String, dynamic> json) {
    id = json['question_id'];
    score = json['score'];
    title = json['vote_count'];
    ansCount = json['answer_count'];
    viewCount = json['view_count'];
    ansLink = json['link'];
    isAnswered = json['is_answered'];
    // tags = json['tags'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['question_id'] = this.id;
    data['score'] = this.score;
    data['vote_count'] = this.title;
    data['answer_count'] = this.ansCount;
    data['view_count'] = this.viewCount;
    data['link'] = this.ansLink;
    data['is_answered'] = this.isAnswered;
    // data['tags'] = this.tags;
    return data;
  }
}
