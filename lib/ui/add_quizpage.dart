import 'package:flutter/material.dart';
import 'package:popquizz/ui/home_page.dart';

class AddQuizPage extends StatefulWidget {
  const AddQuizPage({Key? key}) : super(key: key);

  @override
  _AddQuizPageState createState() => _AddQuizPageState();
}

final quizzController = TextEditingController();
List _toQuizzList = [];
void _addQuizzList() {
  Map<String, dynamic> newQuizz = Map();
  newQuizz["title"] = quizzController.text;
  _toQuizzList.add(newQuizz);
}

class _AddQuizPageState extends State<AddQuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novo Quizz!'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: "Nome do questionario"),
          ),
          ElevatedButton(
            onPressed: _addQuizzList,
            child: Text(
              'Adicionar Questionario',
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red)),
          )
        ],
      ),
    );
  }
}
