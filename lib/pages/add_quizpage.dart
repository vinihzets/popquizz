import 'package:flutter/material.dart';
import 'package:popquizz/models/question_model.dart';
import 'package:popquizz/pages/home_page.dart';
import 'package:popquizz/repositories/question_repository.dart';

class AddQuizPage extends StatefulWidget {
  const AddQuizPage({Key? key}) : super(key: key);

  @override
  _AddQuizPageState createState() => _AddQuizPageState();
}

class _AddQuizPageState extends State<AddQuizPage> {
  TextEditingController namequestionsController = TextEditingController();
  TextEditingController questionsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Novo Quizz!'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: namequestionsController,
              decoration: InputDecoration(labelText: "Nome do questionario"),
            ),
            Padding(
              child: TextField(
                controller: questionsController,
                decoration: InputDecoration(labelText: "Questoes"),
              ),
              padding: EdgeInsets.only(top: 40.0),
            ),
            TextField(
              controller: questionsController,
              decoration: InputDecoration(labelText: "Questoes"),
            ),
            TextField(
              controller: questionsController,
              decoration: InputDecoration(labelText: "Questoes"),
            ),
            TextField(
              controller: questionsController,
              decoration: InputDecoration(labelText: "Questoes"),
            ),
            ElevatedButton(
              onPressed: () => setState(() {}),
              child: const Text('Adicionar Questionario!!'),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.red)),
            ),
          ],
        ),
      ),
    );
  }
}
