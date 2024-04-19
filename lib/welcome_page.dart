import 'package:flutter/material.dart';
import 'package:meal_advice/question_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({
    required this.changeCurrentPage,
    super.key,
  });

  final Function(String requestedPageName) changeCurrentPage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 17, 92, 20),
              Color.fromARGB(255, 47, 87, 49),
              Color.fromARGB(255, 3, 31, 4),
            ],
          ),
        ),
        child: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Image.asset(
              'assets/images/tree-of-life.png',
              width: 200,
            ),
            const SizedBox(height: 60),
            const Text(
              'Let\'s cook!',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 32,
                fontStyle: FontStyle.normal,
                decoration: TextDecoration.none,
              ),
              textAlign: TextAlign.center,
              softWrap: true,
            ),
            const SizedBox(height: 60),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuestionPage(
                      changeCurrentPage: changeCurrentPage,
                    ),
                  ),
                );
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Color.fromARGB(255, 1, 58, 3),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(42)),
                ),
                side: const BorderSide(
                  color: Color.fromRGBO(4, 46, 10, 1),
                  width: 2,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              ),
              icon: const Text(
                'Get Started',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              label: Image.asset(
                'assets/images/cooking.png',
                width: 32,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}