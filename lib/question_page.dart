import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:meal_advice/welcome_page.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

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
          color: Color.fromARGB(255, 255, 255, 255),
          fontSize: 24,
        ),
      ),
      leading: Container(
        margin: EdgeInsets.only(left: 16.0), // Sol taraftan 16 birimlik margin
        child: IconButton(
          icon: Image.asset('assets/images/back-button.png', width: 30),
          tooltip: 'Go back',
          color: Color.fromARGB(255, 255, 255, 255),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute<void>(builder: (BuildContext context) {
              return Scaffold(
                body: WelcomePage(() {}),
              );
            }));
          },
        ),
      ),
      backgroundColor: Color.fromARGB(255, 6, 52, 10),
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
