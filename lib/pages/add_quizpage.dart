import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:popquizz/pages/home_page.dart';
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
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildNameQuestions(),
            _buildQuestion1(),
            _buildQuestion2(),
            _buildQuestion3(),
            ElevatedButton(
              onPressed: () => setState(() {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const HomePage()));
              }),
              child: const Text('Adicionar Questionario!!'),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildNameQuestions() {
  return TextFormField(
    decoration: const InputDecoration(labelText: 'Nome do questionario'),
    keyboardType: TextInputType.text,
  );
}

Widget _buildQuestion1() {
  return TextFormField(
    decoration: const InputDecoration(labelText: 'Questao 1'),
    keyboardType: TextInputType.text,
  );
}

Widget _buildQuestion2() {
  return TextFormField(
    decoration: const InputDecoration(labelText: 'Questao 2'),
    keyboardType: TextInputType.text,
  );
}

Widget _buildQuestion3() {
  return TextFormField(
    decoration: const InputDecoration(labelText: 'Questao 3'),
    keyboardType: TextInputType.text,
  );
}
