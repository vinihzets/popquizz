import 'dart:convert';

class Questionary {
  final String title;
  final int id;
  final List<Question> questions;
  Questionary({
    required this.title,
    required this.id,
    required this.questions,
  });

  Map<String, dynamic> toMap() {
    return {
      'titulo': title,
      'id': id,
      'questoes': questions.map((x) => x.toMap()).toList(),
    };
  }

  factory Questionary.fromMap(Map<String, dynamic> map) {
    return Questionary(
      title: map['titulo'] ?? '',
      id: map['id']?.toInt() ?? 0,
      questions:
          List<Question>.from(map['questoes']?.map((x) => Question.fromMap(x))),
    );
  }

  static List<Questionary> listFromJson(String source) {
    final decoded = json.decode(source) as List;

    return decoded.map((e) => Questionary.fromMap(e)).toList();
  }

  String toJson() => json.encode(toMap());

  factory Questionary.fromJson(String source) =>
      Questionary.fromMap(json.decode(source));
}

class Question {
  final int id;
  final String title;
  final String description;
  Question({
    required this.id,
    required this.title,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'titulo': title,
      'descricao': description,
    };
  }

  factory Question.fromMap(Map<String, dynamic> map) {
    return Question(
      id: map['id'] ?? '',
      title: map['titulo'] ?? '',
      description: map['descricao'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Question.fromJson(String source) =>
      Question.fromMap(json.decode(source));
}
