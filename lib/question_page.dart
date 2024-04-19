import 'package:flutter/material.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({
    required this.changeCurrentPage,
    super.key,
  });

  final Function(String requestedPageName) changeCurrentPage;

  @override
  State<QuestionPage> createState() {
    return _QuestionPageState();
  }
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    Decoration gradient = const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color.fromARGB(255, 6, 52, 10),
          Color.fromARGB(255, 40, 116, 40),
          Color.fromRGBO(0, 0, 0, 1),
        ],
      ),
    );
    AppBar appBar = AppBar(
      title: const Text(
        'Question Page',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
        ),
      ),
      backgroundColor: Color.fromARGB(232, 1, 42, 8),
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
    return Scaffold(
      appBar: appBar,
      body: Container(
        decoration: gradient,
        child: const Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Question Page',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 24,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.none,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
