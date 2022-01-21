import 'dart:html';

import 'package:sqflite/sqflite.dart';

final String idColumn = "idColumn";
final String resposteColumn = "resposteColumn";
final String questionColumn = "questionColumn";

class QuestionHelper {}

class Question {
  String question;
  String resposte;
  int id;

  Question.fromMap(Map map) {
    question = map[questionColumn];
    id = map[idColumn];
    resposte = map[resposteColumn];
  }

  Map toMap() {
    Map<String, dynamic> map = {
      questionColumn: question,
      resposteColumn: resposte,
    };
    if (id != null) {
      map[idColumn] = id;
    }
    return map;
  }

  @override
  String toString() {
    return "Question(id: $id, question: $question, resposte: $resposte)";
  }
}
