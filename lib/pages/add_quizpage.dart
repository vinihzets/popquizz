import 'package:flutter/material.dart';

class AddQuizPage extends StatefulWidget {
  const AddQuizPage({Key? key}) : super(key: key);

  @override
  _AddQuizPageState createState() => _AddQuizPageState();
}

class _AddQuizPageState extends State<AddQuizPage> {
  final quizzController = TextEditingController();
  List _toQuizzList = [];
  void _addQuizzList() {
    Map<String, dynamic> newQuizz = Map();
    newQuizz["text"] = quizzController.text;
    _toQuizzList.add(newQuizz);
  }

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
            controller: quizzController,
            decoration:
                const InputDecoration(labelText: "Nome do questionario"),
          ),
          ElevatedButton(
            onPressed: _addQuizzList,
            child: const Text(
              'Adicionar Questionario',
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red)),
          ),
        ],
      ),
    );
  }
}
