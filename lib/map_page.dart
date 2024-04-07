import 'package:flutter/material.dart';
import 'package:meal_advice/question_page.dart';
import 'package:meal_advice/welcome_page.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  String? pageName; // changed from 'question_page'
  Widget? currentPage;

  void changeCurrentPage() {
    setState(() {
      pageName = 'question_page'; // changed from 'question_page'
    });
  }

  @override
  Widget build(context) {
    currentPage = WelcomePage(changeCurrentPage);
    if (pageName == 'question_page') {
      currentPage = QuestionPage();
    }
    return MaterialApp(
        home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 6, 52, 10),
              Color.fromARGB(255, 40, 116, 40),
              Color.fromRGBO(0, 0, 0, 1),
            ],
          ),
        ),
        child: currentPage,
      ),
    ));
  }
}
