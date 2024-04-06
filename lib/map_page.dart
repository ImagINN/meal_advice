import 'package:flutter/material.dart';
import 'package:meal_advice/question_page.dart';
import 'package:meal_advice/welcome_page.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late Widget currentPage;

  @override
  void initState() {
    currentPage = WelcomePage(changeCurrentPage);
    super.initState();
  }

  void changeCurrentPage(String pageName) {
    setState(() {
      switch (pageName) {
        case 'question_page':
          currentPage = const QuestionPage();
          break;
        default:
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
