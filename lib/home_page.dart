import 'package:flutter/material.dart';
import 'package:popquizz/add_quizpage.dart';
import 'package:http/http.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quizz'),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AddQuizPage()));
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}