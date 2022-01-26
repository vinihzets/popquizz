import 'package:flutter/material.dart';
import 'package:popquizz/models/question_model.dart';
import 'package:popquizz/repositories/question_repository.dart';

class AddQuizPage extends StatefulWidget {
  const AddQuizPage({Key? key}) : super(key: key);

  @override
  _AddQuizPageState createState() => _AddQuizPageState();
}

class _AddQuizPageState extends State<AddQuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Novo Quizz!'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
            decoration:
                const InputDecoration(labelText: "Nome do questionario"),
          ),
          ElevatedButton(
            onPressed: () => setState(() {
              Questionary;
            }),
            child: Text('Adicionar Questionario!!'),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red)),
          ),
        ],
      ),
    );
  }
}
