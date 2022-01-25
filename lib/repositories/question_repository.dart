import 'package:flutter/services.dart';
import 'package:popquizz/models/question_model.dart';

abstract class QuestionsRepository {
  Future<List<Questionary>> fetchQuestionaries();
}

class QuestionRepositoryImpl implements QuestionsRepository {
  @override
  Future<List<Questionary>> fetchQuestionaries() async {
    // Sample of http request:
    /// final request = await http.get('api/url');
    /// if(request.statusCode == 200) {
    ///   return Questionary.listFromJson(request.body);
    /// } else {
    ///   return [];
    /// }

    final questionJson = await rootBundle.loadString('assets/questions.json');
    return Questionary.listFromJson(questionJson);
  }
}
