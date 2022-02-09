import 'package:flutter/material.dart';
import 'package:popquizz/models/question_model.dart';
import 'package:popquizz/pages/add_quizpage.dart';
import 'package:popquizz/repositories/question_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Questionary> questionaries = [];
  late QuestionsRepository repository;
  late bool loading;

  @override
  void initState() {
    loading = true;
    repository = QuestionRepositoryImpl();
    _fetchQuestionaries();

    super.initState();
  }

  Future<void> _fetchQuestionaries() async {
    final request = await repository.fetchQuestionaries();
    questionaries.addAll(request);

    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: loading ? _buildLoading(context) : _buildScreen(context));
  }

  Widget _buildScreen(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quizz'),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AddQuizPage()));
              },
              icon: const Icon(Icons.add)),
          FutureBuilder(
            future: _fetchQuestionaries(),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                case ConnectionState.waiting:
                  return Container(
                    alignment: Alignment.center,
                    width: 50.0,
                    height: 70.0,
                    child: const CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                      strokeWidth: 5.0,
                    ),
                  );
                default:
                  if (snapshot.hasError) {
                    return Container();
                  } else {
                    return _createQuizzList(context, snapshot);
                  }
              }
            },
          )
        ],
      ),
    );
  }

  Widget _createQuizzList(BuildContext context, AsyncSnapshot snapshot) {
    return ListView.builder(itemBuilder: (context, index) {
      return GestureDetector(
        child: ListTile(
          leading: Icon(Icons.library_books),
        ),
      );
    });
  }

  Widget _buildLoading(BuildContext context) {
    return const Center(child: CircularProgressIndicator(color: Colors.black));
  }
}
